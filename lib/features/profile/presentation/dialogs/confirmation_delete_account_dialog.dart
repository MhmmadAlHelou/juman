// import 'package:flutter/material.dart';

// import '../../../../core/core.dart';
// import '../../bloc/profile_bloc.dart';

// showConfirmationDeleteAccountDialog(
//   BuildContext context,
//   ProfileBloc profileBloc,
// ) => showDialog(
//   context: context,
//   builder:
//       (BuildContext ctx) =>
//           ConfirmationDeleteAccountDialog(profileBloc: profileBloc),
// );

// class ConfirmationDeleteAccountDialog extends StatefulWidget {
//   const ConfirmationDeleteAccountDialog({super.key, required this.profileBloc});

//   final ProfileBloc profileBloc;

//   @override
//   State<ConfirmationDeleteAccountDialog> createState() =>
//       _ConfirmationDeleteAccountDialogState();
// }

// class _ConfirmationDeleteAccountDialogState
//     extends State<ConfirmationDeleteAccountDialog> {
//   late TextEditingController messageTextEditingController;
//   late FocusNode messageFocusNode;
//   late TextFieldControllerImpl messageController;

//   late GlobalButtonController globalButtonController;
//   late FocusNode submitButtonFocusNode;
//   bool isButtonEnable = false;

//   @override
//   void initState() {
//     super.initState();

//     messageTextEditingController = TextEditingController();
//     messageFocusNode = FocusNode();
//     messageController = TextFieldControllerImpl('');

//     globalButtonController = GlobalButtonController();
//     submitButtonFocusNode = FocusNode();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<ProfileBloc>.value(
//       value: widget.profileBloc,
//       child: BlocListener<ProfileBloc, ProfileState>(
//         listenWhen:
//             (ProfileState previous, ProfileState current) =>
//                 current.runtimeType ==
//                     const ProfileState.loadingDeactivateAccount().runtimeType ||
//                 current.runtimeType ==
//                     const ProfileState.succeedDeactivateAccount().runtimeType ||
//                 current.runtimeType ==
//                     const ProfileState.failedDeactivateAccount().runtimeType,
//         listener: (BuildContext context, ProfileState state) {
//           state.maybeWhen(
//             loadingDeactivateAccount: () {
//               FocusManager.instance.primaryFocus?.unfocus();
//               globalButtonController.changeToLoader();
//             },
//             succeedDeactivateAccount: (String? message) async {
//               await context.maybePop();
//               await getIt<AppManagerCubit>().logOut();
//             },
//             failedDeactivateAccount: (GeneralException? generalException) {
//               globalButtonController.value = null;

//               FocusManager.instance.primaryFocus?.unfocus();

//               showSnackBar(
//                 context: context,
//                 message: generalException?.message,
//                 isError: true,
//               );
//             },
//             orElse: () {},
//           );
//         },
//         child: AlertDialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(16),
//           ),
//           titlePadding: const EdgeInsetsDirectional.fromSTEB(
//             Dimensions.space16,
//             Dimensions.space40,
//             Dimensions.space16,
//             Dimensions.space16,
//           ),
//           insetPadding: const EdgeInsets.all(Dimensions.space16),
//           title: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 LocaleKeys.letUsKnowWhyYouWantToDeactivate.tr(),
//                 style: context.titleSmall,
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: Dimensions.space24),
//               messageTextField(),
//             ],
//           ),
//           content: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               GlobalButton(
//                 controller: globalButtonController,
//                 focusNode: submitButtonFocusNode,
//                 borderColor:
//                     isButtonEnable
//                         ? context.colorScheme.error
//                         : context.theme.hintColor,
//                 disabledBackgroundColor: context.colorScheme.surface,
//                 backgroundColor: context.colorScheme.error,
//                 width: 152,
//                 height: 40,

//                 onPressed:
//                     isButtonEnable
//                         ? () {
//                           widget.profileBloc.add(
//                             ProfileEvent.deactivateAccount(
//                               message: messageTextEditingController.text.trim(),
//                             ),
//                           );
//                         }
//                         : null,
//                 child: Text(
//                   LocaleKeys.sendAndDeactivate.tr(),
//                   style: context.bodySmall?.copyWith(
//                     color:
//                         isButtonEnable
//                             ? context.colorScheme.surface
//                             : context.theme.hintColor,
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 10),
//               GlobalButton(
//                 backgroundColor: context.colorScheme.secondary,
//                 elevation: 0,
//                 height: 40,
//                 width: 104,
//                 onPressed: context.maybePop,
//                 child: Text(
//                   LocaleKeys.cancel.tr(),
//                   style: context.bodySmall?.copyWith(
//                     color: context.theme.colorScheme.surface,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   ValueListenableBuilder<String?> messageTextField() {
//     return ValueListenableBuilder<String?>(
//       valueListenable: messageController,
//       builder: (BuildContext context, String? value, Widget? child) {
//         return TextInputWidget(
//           isEmpty: value?.isEmpty ?? false,
//           controller: messageTextEditingController,
//           focusNode: messageFocusNode,
//           autoFocus: true,
//           maxLines: 5,
//           nextFocusNode: submitButtonFocusNode,
//           onChanged: (String value) {
//             messageController.onTextChange(value);
//             setState(() {
//               if (value.trim().isNotEmpty) {
//                 isButtonEnable = true;
//               } else {
//                 isButtonEnable = false;
//               }
//             });
//           },
//         );
//       },
//     );
//   }

//   @override
//   void dispose() {
//     messageTextEditingController.dispose();
//     messageFocusNode.dispose();
//     messageController.dispose();

//     globalButtonController.dispose();
//     submitButtonFocusNode.dispose();

//     super.dispose();
//   }
// }
