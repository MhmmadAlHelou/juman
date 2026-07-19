// import 'package:ewan/core/core.dart';
// import 'package:flutter/material.dart';

// import '../../auth.dart';

// @RoutePage()
// class VerificationCodeScreen extends StatelessWidget {
//   const VerificationCodeScreen({super.key, required this.authenticationBloc});
//   final AuthenticationBloc authenticationBloc;
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<AuthenticationBloc>.value(
//       value: authenticationBloc,
//       child: const VerificationCodeView(),
//     );
//   }
// }

// class VerificationCodeView extends StatefulWidget {
//   const VerificationCodeView({super.key});

//   @override
//   State<VerificationCodeView> createState() => _VerificationCodeViewState();
// }

// class _VerificationCodeViewState extends State<VerificationCodeView> {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   late AuthenticationBloc _authenticationBloc;
//   late TextEditingController otpTextEditingController;
//   late FocusNode otpFocusNode;

//   late GlobalButtonController globalButtonController;
//   late FocusNode submitButtonFocusNode;

//   @override
//   void initState() {
//     super.initState();
//     _authenticationBloc = context.read<AuthenticationBloc>();

//     otpTextEditingController = TextEditingController();
//     otpFocusNode = FocusNode();

//     globalButtonController = GlobalButtonController();
//     submitButtonFocusNode = FocusNode();
//     otpFocusNode.requestFocus();
//   }

//   @override
//   void dispose() {
//     otpTextEditingController.dispose();
//     otpFocusNode.dispose();
//     globalButtonController.dispose();
//     submitButtonFocusNode.dispose();
//     if (PrefData.isSignedIn == false) {
//       getIt<AppManagerCubit>().deleteUser();
//     }
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<AuthenticationBloc, AuthenticationState>(
//       listenWhen: (AuthenticationState previous, AuthenticationState current) {
//         if (current.runtimeType ==
//                 const AuthenticationState.loadingVerifyAccount().runtimeType ||
//             current.runtimeType ==
//                 const AuthenticationState.redirectToResetPasswordPage()
//                     .runtimeType ||
//             current.runtimeType ==
//                 const AuthenticationState.verifyAccountSucceed().runtimeType ||
//             current.runtimeType ==
//                 const AuthenticationState.verifyAccountFailed().runtimeType ||
//             current.runtimeType ==
//                 const AuthenticationState.loadingResendVerificationCode()
//                     .runtimeType ||
//             current.runtimeType ==
//                 const AuthenticationState.resendVerificationCodeSucceed()
//                     .runtimeType ||
//             current.runtimeType ==
//                 const AuthenticationState.resendVerificationCodeFailed()
//                     .runtimeType) {
//           return true;
//         }
//         return false;
//       },
//       listener: (BuildContext context, AuthenticationState state) {
//         state.maybeWhen(
//           loadingVerifyAccount: () => globalButtonController.changeToLoader(),
//           verifyAccountFailed: (GeneralException? generalException) {
//             globalButtonController.value = null;
//             showSnackBar(
//               context: context,
//               message: generalException?.message,
//               isError: true,
//             );
//           },
//           verifyAccountSucceed: () {
//             globalButtonController.value = null;

//             context.router.replaceAll(<PageRouteInfo>[const BaseRoute()]);
//           },
//           resendVerificationCodeFailed: (GeneralException? generalException) {
//             globalButtonController.value = null;
//             showSnackBar(
//               context: context,
//               message: generalException?.message,
//               isError: true,
//             );
//           },
//           resendVerificationCodeSucceed: (String? message) {
//             globalButtonController.value = null;
//             showSnackBar(
//               context: context,
//               message: LocaleKeys.theCodeHasBeenResent.tr(),
//             );
//             context.read<AuthenticationBloc>().add(
//               const AuthenticationEvent.activateResendButton(),
//             );
//           },
//           redirectToResetPasswordPage: () {
//             globalButtonController.value = null;
//             context.pushRoute(
//               NewPasswordRoute(authenticationBloc: _authenticationBloc),
//             );
//           },
//           orElse: () {},
//         );
//       },
//       child: PopScope(
//         onPopInvokedWithResult: (bool didPop, Object? result) {
//           if (_authenticationBloc.redirectToResetPasswordPage) {
//             context.maybePop();
//           } else {
//             context.router.replaceAll(<PageRouteInfo>[const BaseRoute()]);
//           }
//         },
//         child: AuthSkeleton(
//           formKey: formKey,
//           title: LocaleKeys.codeVerification,
//           subTitle: LocaleKeys.plzCheckYourEmail,
//           content: <Widget>[
//             const SizedBox(height: Dimensions.space20),
//             OtpFieldWidget(
//               controller: otpTextEditingController,
//               focusNode: otpFocusNode,
//               onCompleted: (String p0) {
//                 verifyAccount();
//               },
//             ),
//             const SizedBox(height: Dimensions.space70),

//             submitButton(),
//             BlocBuilder<AuthenticationBloc, AuthenticationState>(
//               buildWhen:
//                   (AuthenticationState previous, AuthenticationState current) {
//                     if (current.runtimeType ==
//                         const AuthenticationState.remainingTimeForResend()
//                             .runtimeType) {
//                       return true;
//                     }
//                     return false;
//                   },
//               builder: (BuildContext context, AuthenticationState state) {
//                 final int remainingTime =
//                     state.whenOrNull(
//                       remainingTimeForResend: (int? remainingTime) =>
//                           remainingTime,
//                     ) ??
//                     -1;
//                 return Center(
//                   child: QuestionWithActionWidget(
//                     question: LocaleKeys.didNotReceiveTheCode,
//                     action: remainingTime > 1
//                         ? LocaleKeys.resendInSeconds
//                         : LocaleKeys.resend,
//                     actionArgs: remainingTime > 0
//                         ? <String>[remainingTime.toString()]
//                         : <String>[],
//                     onPressed: remainingTime >= 0
//                         ? () {}
//                         : resendVerificationCode,
//                   ),
//                 );
//               },
//             ),
//             const SizedBox(height: Dimensions.space10),
//             const Divider(),
//             const SizedBox(height: Dimensions.space16),
//             GestureDetector(
//               onTap: () {
//                 context.maybePop();
//               },
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 spacing: 8,
//                 children: <Widget>[
//                   const Icon(Icons.edit, color: Palette.text, size: 16),
//                   Text(
//                     (LocaleKeys.changeEmailAddress).tr(),
//                     style: context.titleSmall,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   GlobalButton submitButton() {
//     return GlobalButton(
//       controller: globalButtonController,
//       focusNode: submitButtonFocusNode,
//       onPressed: () {
//         if (formKey.currentState!.validate()) {
//           verifyAccount();
//         } else {
//           setState(() {});
//         }
//       },
//       child: Text(
//         LocaleKeys.confirm.tr(),
//         style: context.bodySmall?.copyWith(
//           fontWeight: FontWeight.w900,
//           color: Palette.white,
//         ),
//       ),
//     );
//   }

//   void verifyAccount() {
//     if (formKey.currentState!.validate()) {
//       if (!_authenticationBloc.redirectToResetPasswordPage) {
//         _authenticationBloc.add(
//           AuthenticationEvent.verifyAccount(
//             verifyAccountParams: VerifyAccountParams(
//               code: otpTextEditingController.text,
//               email: _authenticationBloc.verificationCodeEmail,
//             ),
//           ),
//         );
//       } else {
//         _authenticationBloc.add(
//           AuthenticationEvent.signInByCode(
//             verifyAccountParams: VerifyAccountParams(
//               email: _authenticationBloc.verificationCodeEmail,
//               code: otpTextEditingController.text,
//             ),
//           ),
//         );
//       }
//     }
//   }

//   void resendVerificationCode() {
//     _authenticationBloc.add(
//       AuthenticationEvent.resendVerificationCodeOnEmail(
//         email: _authenticationBloc.verificationCodeEmail!,
//       ),
//     );
//   }
// }
