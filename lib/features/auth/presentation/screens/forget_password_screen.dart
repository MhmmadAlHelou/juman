import 'package:flutter/material.dart';
import 'package:ewan/core/core.dart';

import '../../auth.dart';

@RoutePage()
class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
      create: (BuildContext context) => getIt<AuthenticationBloc>(),
      child: const ForgetPasswordView(),
    );
  }
}

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late TextEditingController emailTextEditingController;
  late FocusNode emailFocusNode;
  late TextFieldControllerImpl emailController;

  late GlobalButtonController globalButtonController;
  late FocusNode submitButtonFocusNode;

  @override
  void initState() {
    emailTextEditingController = TextEditingController();
    emailFocusNode = FocusNode();
    emailController = TextFieldControllerImpl('');

    globalButtonController = GlobalButtonController();
    submitButtonFocusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (BuildContext context, AuthenticationState state) {
        state.maybeWhen(
          loadingResendVerificationCode: () =>
              globalButtonController.changeToLoader(),
          resendVerificationCodeSucceed: (String? message) {
            context.pushRoute(
              VerificationCodeRoute(
                authenticationBloc: context.read<AuthenticationBloc>(),
              ),
            );
          },
          resendVerificationCodeFailed: (GeneralException? generalException) {
            globalButtonController.value = null;
            showSnackBar(
              context: context,
              message: generalException?.displayMessage,
              isError: true,
            );
          },
          orElse: () {},
        );
      },
      child: AuthSkeleton(
        formKey: formKey,
        title: LocaleKeys.forgetPassword,
        subTitleArgs:
            "Enter your email to receive a verification code to reset your password",
        subTitle: LocaleKeys.plzEnterYourEmail,
        content: <Widget>[
          const LabelAuthTextWidget(text: LocaleKeys.email),
          emailTextField(),
          const SizedBox(height: 20),
          submitButton(),
          const SizedBox(height: 5),
          Center(
            child: QuestionWithActionWidget(
              question: LocaleKeys.backToLogin,
              action: LocaleKeys.login,
              onPressed: () {
                context.maybePop();
              },
            ),
          ),
        ],
      ),
    );
  }

  Directionality emailTextField() {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: ValueListenableBuilder<String?>(
        valueListenable: emailController,
        builder: (BuildContext context, String? emailValue, Widget? child) {
          return TextInputWidget(
            controller: emailTextEditingController,
            keyboardType: TextInputType.emailAddress,
            nextFocusNode: submitButtonFocusNode,
            textDirection: TextDirection.ltr,

            focusNode: emailFocusNode,
            hintText: LocaleKeys.email.tr(),
            isEmpty: emailValue?.isEmpty ?? false,
            onChanged: (String value) {
              emailController.onTextChange(value);
            },
            validator: (String? value) =>
                validateInput(value, context, <ValidationType>[
                  ValidationType.email,
                  ValidationType.requiredField,
                ]),
          );
        },
      ),
    );
  }

  GlobalButton submitButton() {
    return GlobalButton(
      controller: globalButtonController,
      focusNode: submitButtonFocusNode,
      onPressed: () {
        if (formKey.currentState!.validate()) {
          context.read<AuthenticationBloc>().add(
            AuthenticationEvent.resendVerificationCodeOnEmail(
              email: emailTextEditingController.text,
              toResetPassword: true,
            ),
          );
        } else {
          setState(() {});
        }
      },
      child: Text(
        LocaleKeys.continueKey.tr(),
        style: context.bodySmall?.copyWith(
          fontWeight: FontWeight.w900,
          color: Palette.white,
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailTextEditingController.dispose();
    emailFocusNode.dispose();
    emailController.dispose();

    globalButtonController.dispose();
    submitButtonFocusNode.dispose();
    super.dispose();
  }
}
