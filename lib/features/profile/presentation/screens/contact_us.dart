// import 'package:flutter/material.dart';
// import 'package:ewan/core/core.dart';
// import 'package:ewan/features/profile/profile.dart';

// import '../../data/params/contact_us.dart';

// @RoutePage()
// class ContactUsScreen extends StatelessWidget {
//   const ContactUsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<ProfileBloc>(
//       create: (BuildContext context) => getIt<ProfileBloc>(),
//       child: const ContactUsView(),
//     );
//   }
// }

// class ContactUsView extends StatefulWidget {
//   const ContactUsView({super.key});

//   @override
//   State<ContactUsView> createState() => _ContactUsViewState();
// }

// class _ContactUsViewState extends State<ContactUsView>
//     with SingleTickerProviderStateMixin {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   late GlobalButtonController globalButtonController;

//   late TextEditingController emailTextEditingController;
//   late FocusNode emailFocusNode;
//   late TextFieldControllerImpl emailController;

//   late TextEditingController fullNameTextEditingController;
//   late FocusNode fullNameFocusNode;
//   late TextFieldControllerImpl fullNameController;

//   late TextEditingController yourMessageTextEditingController;
//   late FocusNode yourMessageFocusNode;
//   late TextFieldControllerImpl yourMessageController;

//   late ValueNotifier<bool> isButtonEnabledNotifier;
//   late AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();

//     fullNameTextEditingController = TextEditingController();
//     fullNameFocusNode = FocusNode();
//     fullNameController = TextFieldControllerImpl('');

//     emailTextEditingController = TextEditingController();
//     emailFocusNode = FocusNode();
//     emailController = TextFieldControllerImpl('');

//     yourMessageTextEditingController = TextEditingController();
//     yourMessageFocusNode = FocusNode();
//     yourMessageController = TextFieldControllerImpl('');

//     isButtonEnabledNotifier = ValueNotifier<bool>(false);

//     globalButtonController = GlobalButtonController();
//     _controller = AnimationController(vsync: this);
//   }

//   void checkFormChanged() {
//     isButtonEnabledNotifier.value =
//         (yourMessageTextEditingController.text.trim().isNotEmpty &&
//         (PrefData.isSignedIn ||
//             (fullNameTextEditingController.text.trim().isNotEmpty &&
//                 emailTextEditingController.text.trim().isNotEmpty)));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: GlobalAppBar(backButton: true, title: LocaleKeys.contactUs.tr()),
//       body: BlocListener<ProfileBloc, ProfileState>(
//         listener: (BuildContext context, ProfileState state) {
//           state.maybeWhen(
//             succeed: (String? message) async {
//               globalButtonController.value = null;
//               showSnackBar(
//                 context: context,
//                 message: LocaleKeys.yourMessageSendSuccessfully.tr(),
//                 isError: false,
//               );
//               context.maybePop();
//             },
//             failed: (GeneralException? generalException) {
//               globalButtonController.value = null;
//               showSnackBar(
//                 context: context,
//                 message: generalException?.message,
//                 isError: true,
//               );
//             },
//             loading: () {
//               globalButtonController.changeToLoader();
//               FocusManager.instance.primaryFocus?.unfocus();
//             },
//             orElse: () {},
//           );
//         },
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(30),
//           child: Form(
//             key: formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,

//               children: <Widget>[
//                 Text(
//                   LocaleKeys.weAreHereToAnswerYourQuestions.tr(),
//                   textAlign: TextAlign.center,
//                   style: context.bodyLarge?.copyWith(
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const SizedBox(height: 30),
//                 fullNameTextField(),
//                 const SizedBox(height: 25),
//                 emailTextField(),
//                 const SizedBox(height: 25),
//                 yourMessageField(),
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomSheet: Padding(
//         padding: const EdgeInsetsDirectional.fromSTEB(
//           Dimensions.space16,
//           0,
//           Dimensions.space16,
//           Dimensions.space20,
//         ),
//         child: submitButton(context),
//       ),
//     );
//   }

//   ValueListenableBuilder<String?> fullNameTextField() {
//     return ValueListenableBuilder<String?>(
//       valueListenable: fullNameController,
//       builder: (BuildContext context, String? value, Widget? child) {
//         return TextInputWidget(
//           controller: fullNameTextEditingController,
//           keyboardType: TextInputType.name,
//           focusNode: fullNameFocusNode,
//           nextFocusNode: emailFocusNode,
//           hintText: LocaleKeys.fullName.tr(),
//           isEmpty: value?.isEmpty ?? false,
//           onChanged: (String value) {
//             fullNameController.onTextChange(value);
//             checkFormChanged();
//           },
//           validator: (String? value) => validateInput(
//             value,
//             context,
//             <ValidationType>[ValidationType.requiredField],
//           ),
//         );
//       },
//     );
//   }

//   ValueListenableBuilder<String?> emailTextField() {
//     return ValueListenableBuilder<String?>(
//       valueListenable: emailController,
//       builder: (BuildContext context, String? value, Widget? child) {
//         return TextInputWidget(
//           isEmpty: value?.isEmpty ?? false,
//           controller: emailTextEditingController,
//           focusNode: emailFocusNode,
//           nextFocusNode: yourMessageFocusNode,
//           validator: (String? value) =>
//               validateInput(value, context, <ValidationType>[
//                 ValidationType.email,
//                 ValidationType.requiredField,
//               ]),
//           onChanged: (String value) {
//             emailController.onTextChange(value);
//             checkFormChanged();
//           },
//           hintText: 'example@mail.com',
//         );
//       },
//     );
//   }

//   ValueListenableBuilder<String?> yourMessageField() {
//     return ValueListenableBuilder<String?>(
//       valueListenable: yourMessageController,
//       builder: (BuildContext context, String? value, Widget? child) {
//         return TextInputWidget(
//           controller: yourMessageTextEditingController,
//           keyboardType: TextInputType.multiline,
//           focusNode: yourMessageFocusNode,
//           isEmpty: value?.isEmpty ?? false,
//           fontSize: context.bodySmall?.fontSize ?? 0.0,
//           maxLines: 6,
//           onChanged: (String value) {
//             yourMessageController.onTextChange(value);
//             checkFormChanged();
//           },
//           validator: (String? value) => validateInput(
//             value,
//             context,
//             <ValidationType>[ValidationType.requiredField],
//           ),
//           hintText: LocaleKeys.message.tr(),
//         );
//       },
//     );
//   }

//   ValueListenableBuilder<bool> submitButton(BuildContext context) {
//     return ValueListenableBuilder<bool>(
//       valueListenable: isButtonEnabledNotifier,
//       builder: (BuildContext context, bool value, Widget? child) {
//         return GlobalButton(
//           onPressed: value
//               ? () {
//                   if (formKey.currentState?.validate() ?? false) {
//                     context.read<ProfileBloc>().add(
//                       ProfileEvent.contactUs(
//                         contactUsParam: ContactUsParams(
//                           fullName: fullNameTextEditingController.text.trim(),
//                           message: yourMessageTextEditingController.text.trim(),
//                           email: emailTextEditingController.text.trim(),
//                         ),
//                       ),
//                     );
//                   }
//                 }
//               : null,
//           controller: globalButtonController,
//           child: Text(
//             LocaleKeys.send.tr(),
//             style: context.titleSmall?.copyWith(
//               color: Palette.white,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   void dispose() {
//     fullNameTextEditingController.dispose();
//     fullNameFocusNode.dispose();
//     fullNameController.dispose();

//     emailTextEditingController.dispose();
//     emailFocusNode.dispose();
//     emailController.dispose();

//     yourMessageTextEditingController.dispose();
//     yourMessageFocusNode.dispose();
//     yourMessageController.dispose();

//     isButtonEnabledNotifier.dispose();

//     _controller.dispose();
//     super.dispose();
//   }
// }
