import 'package:flutter/material.dart';
import 'package:ewan/core/core.dart';

import '../../auth.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, this.onLoginSuccess});

  final VoidCallback? onLoginSuccess;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
      create: (BuildContext context) => getIt<AuthenticationBloc>(),
      child: LoginView(onLoginSuccess: onLoginSuccess),
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView({super.key, this.onLoginSuccess});

  final VoidCallback? onLoginSuccess;

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  late AuthenticationBloc _authenticationBloc;
  late TextEditingController emailTextEditingController;
  late FocusNode emailFocusNode;
  late TextFieldControllerImpl emailController;

  late TextEditingController passwordTextEditingController;
  late FocusNode passwordFocusNode;
  late TextFieldControllerImpl passwordController;

  late GlobalButtonController globalButtonController;
  late FocusNode submitButtonFocusNode;

  bool isObscure = true;

  @override
  void initState() {
    super.initState();
    _authenticationBloc = context.read<AuthenticationBloc>();
    emailTextEditingController = TextEditingController();
    emailFocusNode = FocusNode();
    emailController = TextFieldControllerImpl('');

    passwordTextEditingController = TextEditingController();
    passwordFocusNode = FocusNode();
    passwordController = TextFieldControllerImpl('');

    globalButtonController = GlobalButtonController();
    submitButtonFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listenWhen: (AuthenticationState previous, AuthenticationState current) {
        if (current.runtimeType ==
                const AuthenticationState.loadingSignIn().runtimeType ||
            current.runtimeType ==
                const AuthenticationState.signInFailed().runtimeType ||
            current.runtimeType ==
                const AuthenticationState.signInSucceed().runtimeType ||
            current.runtimeType ==
                const AuthenticationState.accountNeedVerify().runtimeType ||
            current.runtimeType ==
                const AuthenticationState.signUpSucceed().runtimeType) {
          return true;
        }
        return false;
      },
      listener: (BuildContext context, AuthenticationState state) {
        state.maybeWhen(
          loadingSignIn: () {
            FocusManager.instance.primaryFocus?.unfocus();
            globalButtonController.changeToLoader();
          },
          signInFailed: (GeneralException? generalException) {
            globalButtonController.value = null;
            showSnackBar(
              context: context,
              message: generalException?.message,
              isError: true,
            );
          },
          signInSucceed: () {
            globalButtonController.value = null;
            if (widget.onLoginSuccess != null) {
              widget.onLoginSuccess!.call();
            } else {
              // context.router.replaceAll(<PageRouteInfo>[const BaseRoute()]);
              showSnackBar(context: context, message: "signIn Succeed!!!!!!!");
            }
          },
          accountNeedVerify: () {
            globalButtonController.value = null;

            // context.router.push(
            //   VerificationCodeRoute(authenticationBloc: _authenticationBloc),//////////////////__________
            // );

            showSnackBar(
              context: context,
              message: "Please verify your email",
              isError: true,
            );
          },

          orElse: () {},
        );
      },
      child: AuthSkeleton(
        formKey: formKey,
        title: LocaleKeys.welcomeBack,
        subTitle: LocaleKeys.welcomeMessage,
        autovalidateMode: _autoValidateMode,
        content: <Widget>[
          const LabelAuthTextWidget(text: LocaleKeys.email),
          emailTextField(),
          const SizedBox(height: 16),
          const LabelAuthTextWidget(text: LocaleKeys.password),
          passwordTextField(),
          const SizedBox(height: 6),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              onPressed: () {
                // context.pushRoute(const ForgetPasswordRoute());
              },
              child: Text(
                '${LocaleKeys.forgetPassword.tr()}?',
                style: context.bodySmall?.copyWith(
                  color: Palette.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          submitButton(),
          const SizedBox(height: 23),
          Center(
            child: QuestionWithActionWidget(
              question: LocaleKeys.doNotHaveAnAccount,
              action: LocaleKeys.signUp,
              onPressed: () {
                // context.pushRoute(const CreateAccountRoute());
              },
            ),
          ),
          const Divider(),
          const SizedBox(height: Dimensions.space16),
          GestureDetector(
            onTap: () {
              context.maybePop();
            },
            child: Center(
              child: Text(
                (LocaleKeys.continueAsGuest).tr(),
                style: context.titleSmall?.copyWith(
                  color: Palette.hint,
                  fontSize: FontSize.largeLabel,
                ),
              ),
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
            borderColor: Color.fromRGBO(232, 225, 210, 1),
            controller: emailTextEditingController,
            keyboardType: TextInputType.emailAddress,
            textDirection: TextDirection.ltr,
            focusNode: emailFocusNode,
            nextFocusNode: passwordFocusNode,
            hintText: "name@example.com",
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

  ValueListenableBuilder<String?> passwordTextField() {
    return ValueListenableBuilder<String?>(
      valueListenable: passwordController,
      builder: (BuildContext context, String? value, Widget? child) {
        return TextInputWidget(
          isEmpty: value?.isEmpty ?? false,
          controller: passwordTextEditingController,
          focusNode: passwordFocusNode,
          nextFocusNode: submitButtonFocusNode,
          isPassword: true,
          toggleObscureText: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
          onChanged: (String value) {
            passwordController.onTextChange(value);
          },
          obscureText: isObscure,
          validator: (String? value) => validateInput(
            value,
            context,
            <ValidationType>[ValidationType.password],
          ),
          hintText: "******",
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
          _authenticationBloc.add(
            AuthenticationEvent.signIn(
              signInParams: SignInParams(
                email: emailTextEditingController.text,
                password: passwordTextEditingController.text,
              ),
            ),
          );
        } else {
          setState(() {
            _autoValidateMode = AutovalidateMode.onUserInteraction;
          });
        }
      },
      child: Text(
        LocaleKeys.login.tr(),
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

    passwordTextEditingController.dispose();
    passwordFocusNode.dispose();
    passwordController.dispose();

    globalButtonController.dispose();
    submitButtonFocusNode.dispose();

    super.dispose();
  }
}
