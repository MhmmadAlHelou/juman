import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';

import '../../auth.dart';

@RoutePage()
class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key, required this.authenticationBloc});
  final AuthenticationBloc authenticationBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>.value(
      value: authenticationBloc,
      child: const NewPasswordView(),
    );
  }
}

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late final TextEditingController passwordTextEditingController;
  late final FocusNode passwordFocusNode;
  late final TextFieldControllerImpl passwordController;

  late final TextEditingController confirmPasswordTextEditingController;
  late final FocusNode confirmPasswordFocusNode;
  late final TextFieldControllerImpl confirmPasswordController;

  late final GlobalButtonController globalButtonController;
  late final FocusNode submitButtonFocusNode;
  bool isObscure = true;
  final AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  @override
  void initState() {
    super.initState();

    passwordTextEditingController = TextEditingController();
    passwordFocusNode = FocusNode();
    passwordController = TextFieldControllerImpl('');

    confirmPasswordTextEditingController = TextEditingController();
    confirmPasswordFocusNode = FocusNode();
    confirmPasswordController = TextFieldControllerImpl('');

    globalButtonController = GlobalButtonController();
    submitButtonFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (BuildContext context, AuthenticationState state) {
        state.maybeWhen(
          loadingResetPassword: () => globalButtonController.changeToLoader(),
          resetPasswordFailed: (GeneralException? generalException) {
            globalButtonController.value = null;
            showSnackBar(
              context: context,
              message: generalException?.displayMessage,
              isError: true,
            );
          },
          resetPasswordSucceed: (String? message) {
            context.router.replaceAll(<PageRouteInfo>[const BaseRoute()]);
          },
          orElse: () {},
        );
      },
      child: AuthSkeleton(
        formKey: formKey,
        autovalidateMode: _autoValidateMode,
        title: LocaleKeys.insertNewPassword.tr(),
        content: <Widget>[
          LabelAuthTextWidget(text: LocaleKeys.password.tr()),
          passwordTextField(),
          const SizedBox(height: 16),
          LabelAuthTextWidget(text: LocaleKeys.confirmPassword.tr()),
          confirmPasswordTextField(),
          const SizedBox(height: 20),
          submitButton(),
        ],
      ),
    );
  }

  ValueListenableBuilder<String?> passwordTextField() {
    return ValueListenableBuilder<String?>(
      valueListenable: passwordController,
      builder: (BuildContext context, String? value, Widget? child) {
        return TextInputWidget(
          isEmpty: value?.isEmpty ?? false,
          controller: passwordTextEditingController,
          focusNode: passwordFocusNode,
          nextFocusNode: confirmPasswordFocusNode,
          isPassword: true,
          toggleObscureText: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
          obscureText: isObscure,
          validator: (String? value) => validateInput(
            value,
            context,
            <ValidationType>[ValidationType.password],
          ),
          onChanged: (String value) {
            passwordController.onTextChange(value);
          },
          hintText: LocaleKeys.password.tr(),
        );
      },
    );
  }

  ValueListenableBuilder<String?> confirmPasswordTextField() {
    return ValueListenableBuilder<String?>(
      valueListenable: passwordController,
      builder: (BuildContext context, String? value, Widget? child) {
        return TextInputWidget(
          isEmpty: value?.isEmpty ?? false,
          controller: confirmPasswordTextEditingController,
          focusNode: confirmPasswordFocusNode,
          nextFocusNode: submitButtonFocusNode,
          isPassword: true,
          toggleObscureText: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
          obscureText: isObscure,
          validator: (String? value) => validateInput(
            value,
            context,
            <ValidationType>[ValidationType.confirmPassword],
            password: passwordTextEditingController.text,
          ),
          onChanged: (String value) {
            confirmPasswordController.onTextChange(value);
          },
          hintText: LocaleKeys.confirmPassword.tr(),
        );
      },
    );
  }

  GlobalButton submitButton() {
    return GlobalButton(
      controller: globalButtonController,
      focusNode: submitButtonFocusNode,
      onPressed: () {
        if (formKey.currentState!.validate()) {
          // context.pushRoute(const NewPasswordRoute());
          context.read<AuthenticationBloc>().add(
            AuthenticationEvent.resetPassword(
              password: passwordTextEditingController.text,
            ),
          );
        } else {
          setState(() {});
        }
      },
      child: Text(
        LocaleKeys.confirm.tr(),
        style: context.bodySmall?.copyWith(
          fontWeight: FontWeight.w900,
          color: Palette.white,
        ),
      ),
    );
  }

  @override
  void dispose() {
    passwordTextEditingController.dispose();
    passwordFocusNode.dispose();
    passwordController.dispose();

    confirmPasswordTextEditingController.dispose();
    confirmPasswordFocusNode.dispose();
    confirmPasswordController.dispose();

    globalButtonController.dispose();
    submitButtonFocusNode.dispose();
    super.dispose();
  }
}
