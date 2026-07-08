// import 'package:flutter/material.dart';
// import 'package:ewan/core/core.dart';
// import 'package:ewan/features/profile/profile.dart';

// @RoutePage()
// class ChangePasswordScreen extends StatelessWidget {
//   const ChangePasswordScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<ProfileBloc>(
//       create: (BuildContext context) => getIt<ProfileBloc>(),
//       child: const ChangePasswordView(),
//     );
//   }
// }

// class ChangePasswordView extends StatefulWidget {
//   const ChangePasswordView({super.key});

//   @override
//   State<ChangePasswordView> createState() => _ChangePasswordViewState();
// }

// class _ChangePasswordViewState extends State<ChangePasswordView> {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   Map<String, String> externalErrors = <String, String>{};
//   AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

//   late TextEditingController oldPasswordTextEditingController;
//   late FocusNode oldPasswordFocusNode;
//   late TextFieldControllerImpl oldPasswordController;

//   late TextEditingController passwordTextEditingController;
//   late FocusNode passwordFocusNode;
//   late TextFieldControllerImpl passwordController;

//   late TextEditingController confirmPasswordTextEditingController;
//   late FocusNode confirmPasswordFocusNode;
//   late TextFieldControllerImpl confirmPasswordController;
//   late GlobalButtonController globalButtonController;
//   late FocusNode submitButtonFocusNode;

//   bool isObscure = true;

//   late ValueNotifier<bool> isButtonEnableNotifier;

//   @override
//   void initState() {
//     super.initState();
//     passwordTextEditingController = TextEditingController();
//     passwordFocusNode = FocusNode();
//     passwordController = TextFieldControllerImpl('');

//     oldPasswordTextEditingController = TextEditingController();
//     oldPasswordFocusNode = FocusNode();
//     oldPasswordController = TextFieldControllerImpl('');

//     confirmPasswordTextEditingController = TextEditingController();
//     confirmPasswordFocusNode = FocusNode();
//     confirmPasswordController = TextFieldControllerImpl('');
//     globalButtonController = GlobalButtonController();
//     submitButtonFocusNode = FocusNode();

//     isButtonEnableNotifier = ValueNotifier<bool>(false);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: GlobalAppBar(
//         title: LocaleKeys.changePassword.tr(),
//         backButton: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: Dimensions.space16),
//         child: Form(
//           key: formKey,
//           autovalidateMode: _autoValidateMode,
//           onChanged: changeButtonEnable,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               const SizedBox(height: Dimensions.space40),
//               oldPasswordTextField(),
//               const SizedBox(height: Dimensions.space16),
//               passwordTextField(),
//               const SizedBox(height: Dimensions.space8),
//               Text(
//                 LocaleKeys.passwordComplexityError.tr(),
//                 style: context.bodySmall?.copyWith(
//                   color: context.theme.hintColor,
//                 ),
//               ),
//               const SizedBox(height: Dimensions.space16),
//               confirmPasswordTextField(),
//               const SizedBox(height: Dimensions.space24),
//               const Spacer(),
//               BlocListener<ProfileBloc, ProfileState>(
//                 listenWhen: (ProfileState previous, ProfileState current) =>
//                     current.runtimeType ==
//                         const ProfileState.changePasswordFailed().runtimeType ||
//                     current.runtimeType ==
//                         const ProfileState.changePasswordLoading()
//                             .runtimeType ||
//                     current.runtimeType ==
//                         const ProfileState.changePasswordSucceed().runtimeType,
//                 listener: (BuildContext context, ProfileState state) {
//                   state.maybeWhen(
//                     changePasswordLoading: () {
//                       globalButtonController.changeToLoader();
//                     },
//                     changePasswordFailed: (GeneralException? generalException) {
//                       globalButtonController.value = null;
//                       externalErrors.addAll(
//                         generalException?.errors ?? <String, String>{},
//                       );
//                       formKey.currentState?.validate();
//                       if (generalException?.message.isNotEmpty ?? false) {
//                         showSnackBar(
//                           context: context,
//                           message: generalException?.message,
//                           isError: true,
//                         );
//                       }
//                     },
//                     changePasswordSucceed: (String? message) {
//                       globalButtonController.value = null;

//                       context.maybePop();
//                       showSnackBar(
//                         context: context,
//                         message: LocaleKeys.yourPasswordHasChangedSuccessfully
//                             .tr(),
//                       );
//                     },
//                     orElse: () {},
//                   );
//                 },
//                 child: submitButton(),
//               ),
//               const SizedBox(height: Dimensions.space24),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   ValueListenableBuilder<String?> oldPasswordTextField() {
//     return ValueListenableBuilder<String?>(
//       valueListenable: oldPasswordController,
//       builder: (BuildContext context, String? value, Widget? child) {
//         return TextInputWidget(
//           isEmpty: value?.isEmpty ?? false,
//           controller: oldPasswordTextEditingController,
//           focusNode: oldPasswordFocusNode,
//           nextFocusNode: passwordFocusNode,
//           isPassword: true,
//           toggleObscureText: () {
//             setState(() {
//               isObscure = !isObscure;
//             });
//           },
//           obscureText: isObscure,
//           validator: (String? value) => validateInput(
//             value,
//             context,
//             <ValidationType>[ValidationType.requiredField],
//             fieldName: 'old_password',
//             externalErrors: externalErrors,
//           ),
//           onChanged: (String value) {
//             oldPasswordController.onTextChange(value);
//           },
//           hintText: LocaleKeys.oldPassword.tr(),
//           // prefixSvgPathIcon: AssetsManager.svg.lockPassword.path,
//         );
//       },
//     );
//   }

//   ValueListenableBuilder<String?> passwordTextField() {
//     return ValueListenableBuilder<String?>(
//       valueListenable: passwordController,
//       builder: (BuildContext context, String? value, Widget? child) {
//         return TextInputWidget(
//           isEmpty: value?.isEmpty ?? false,
//           controller: passwordTextEditingController,
//           focusNode: passwordFocusNode,
//           nextFocusNode: confirmPasswordFocusNode,
//           isPassword: true,
//           toggleObscureText: () {
//             setState(() {
//               isObscure = !isObscure;
//             });
//           },
//           obscureText: isObscure,
//           validator: (String? value) => validateInput(
//             value,
//             context,
//             <ValidationType>[
//               ValidationType.oldPassword,
//               ValidationType.password,
//             ],
//             password: oldPasswordTextEditingController.text,
//             fieldName: 'password',
//             externalErrors: externalErrors,
//           ),
//           onChanged: (String value) {
//             passwordController.onTextChange(value);
//           },
//           hintText: LocaleKeys.password.tr(),
//           // prefixSvgPathIcon: AssetsManager.svg.lockPassword.path,
//         );
//       },
//     );
//   }

//   ValueListenableBuilder<String?> confirmPasswordTextField() {
//     return ValueListenableBuilder<String?>(
//       valueListenable: confirmPasswordController,
//       builder: (BuildContext context, String? value, Widget? child) {
//         return TextInputWidget(
//           isEmpty: value?.isEmpty ?? false,
//           controller: confirmPasswordTextEditingController,
//           focusNode: confirmPasswordFocusNode,
//           nextFocusNode: submitButtonFocusNode,
//           isPassword: true,
//           toggleObscureText: () {
//             setState(() {
//               isObscure = !isObscure;
//             });
//           },
//           obscureText: isObscure,
//           validator: (String? value) => validateInput(
//             value,
//             context,
//             <ValidationType>[ValidationType.confirmPassword],
//             password: passwordTextEditingController.text,
//           ),
//           onChanged: (String value) {
//             confirmPasswordController.onTextChange(value);
//           },
//           hintText: LocaleKeys.confirmPassword.tr(),
//           // prefixSvgPathIcon: AssetsManager.svg.lockPassword.path,
//         );
//       },
//     );
//   }

//   ValueListenableBuilder<bool> submitButton() {
//     return ValueListenableBuilder<bool>(
//       valueListenable: isButtonEnableNotifier,
//       builder: (BuildContext context, bool value, Widget? child) {
//         return GlobalButton(
//           controller: globalButtonController,
//           focusNode: submitButtonFocusNode,
//           width: double.maxFinite,
//           height: Dimensions.space40,
//           onPressed: value
//               ? () {
//                   if (externalErrors.isNotEmpty) {
//                     externalErrors = <String, String>{};
//                     formKey.currentState!.reset();
//                   }
//                   if (formKey.currentState!.validate()) {
//                     context.read<ProfileBloc>().add(
//                       ProfileEvent.changePassword(
//                         changePasswordParams: ChangePasswordParams(
//                           oldPassword: oldPasswordTextEditingController.text,
//                           password: passwordTextEditingController.text,
//                         ),
//                       ),
//                     );
//                   } else {
//                     setState(() {
//                       _autoValidateMode = AutovalidateMode.onUserInteraction;
//                     });
//                   }
//                 }
//               : null,
//           child: Text(
//             LocaleKeys.save.tr(),
//             style: context.bodySmall?.copyWith(
//               color: context.colorScheme.surface,
//             ),
//           ),
//         );
//       },
//     );
//   }

//   void changeButtonEnable() {
//     isButtonEnableNotifier.value =
//         oldPasswordTextEditingController.text.trim().isNotEmpty &&
//         confirmPasswordTextEditingController.text.trim().isNotEmpty &&
//         passwordTextEditingController.text.trim().isNotEmpty;
//   }

//   @override
//   void dispose() {
//     passwordTextEditingController.dispose();
//     passwordFocusNode.dispose();
//     passwordController.dispose();

//     oldPasswordTextEditingController.dispose();
//     oldPasswordFocusNode.dispose();
//     oldPasswordController.dispose();

//     confirmPasswordTextEditingController.dispose();
//     confirmPasswordFocusNode.dispose();
//     confirmPasswordController.dispose();

//     globalButtonController.dispose();
//     submitButtonFocusNode.dispose();

//     isButtonEnableNotifier.dispose();
//     super.dispose();
//   }
// }
