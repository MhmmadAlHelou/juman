import 'package:flutter/material.dart';
import 'package:ewan/core/core.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../auth.dart';

@RoutePage()
class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
      create: (BuildContext context) => getIt<AuthenticationBloc>(),
      child: const CreateAccountView(),
    );
  }
}

class CreateAccountView extends StatefulWidget {
  const CreateAccountView({super.key});

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  late AuthenticationBloc _authenticationBloc;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  Map<String, String> externalErrors = <String, String>{};

  late TextEditingController emailTextEditingController;
  late FocusNode emailFocusNode;
  late TextFieldControllerImpl emailController;

  late TextEditingController firstNameTextEditingController;
  late FocusNode firstNameFocusNode;
  late TextFieldControllerImpl firstNameController;

  late TextEditingController lastNameTextEditingController;
  late FocusNode lastNameFocusNode;
  late TextFieldControllerImpl lastNameController;

  late GlobalButtonController globalButtonController;
  late FocusNode submitButtonFocusNode;

  late final TextEditingController passwordTextEditingController;
  late final FocusNode passwordFocusNode;
  late final TextFieldControllerImpl passwordController;

  late final TextEditingController confirmPasswordTextEditingController;
  late final FocusNode confirmPasswordFocusNode;
  late final TextFieldControllerImpl confirmPasswordController;

  bool isObscure = true;

  final TextEditingController phoneController = TextEditingController();
  final FocusNode phoneFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _authenticationBloc = context.read<AuthenticationBloc>();
    emailTextEditingController = TextEditingController();
    emailFocusNode = FocusNode();
    emailController = TextFieldControllerImpl('');

    firstNameTextEditingController = TextEditingController();
    firstNameFocusNode = FocusNode();
    firstNameController = TextFieldControllerImpl('');

    lastNameTextEditingController = TextEditingController();
    lastNameFocusNode = FocusNode();
    lastNameController = TextFieldControllerImpl('');

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
      listenWhen: (AuthenticationState previous, AuthenticationState current) {
        if (current.runtimeType ==
                const AuthenticationState.loadingSignUp().runtimeType ||
            current.runtimeType ==
                const AuthenticationState.signUpFailed().runtimeType ||
            current.runtimeType ==
                const AuthenticationState.signUpSucceed().runtimeType) {
          return true;
        }
        return false;
      },
      listener: (BuildContext context, AuthenticationState state) {
        state.maybeWhen(
          loadingSignUp: () {
            FocusManager.instance.primaryFocus?.unfocus();
            globalButtonController.changeToLoader();
          },
          signUpFailed: (GeneralException? generalException) {
            globalButtonController.value = null;
            externalErrors.addAll(
              generalException?.errors ?? <String, String>{},
            );
            formKey.currentState?.validate();
            _autoValidateMode = AutovalidateMode.onUserInteraction;
            if (generalException?.message.isNotEmpty ?? false) {
              showSnackBar(
                context: context,
                message: generalException?.displayMessage,
                isError: true,
              );
            }
          },
          signUpSucceed: () {
            globalButtonController.value = null;
            context.pushRoute(
              VerificationCodeRoute(
                authenticationBloc: context.read<AuthenticationBloc>(),
              ),
            );
          },
          orElse: () {},
        );
      },
      child: AuthSkeleton(
        formKey: formKey,
        title: LocaleKeys.createAccount,
        subTitle: LocaleKeys.welcomeMessage,
        autovalidateMode: _autoValidateMode,
        content: <Widget>[
          const LabelAuthTextWidget(text: LocaleKeys.firstName),
          firstNameTextField(),
          const SizedBox(height: 16),
          const LabelAuthTextWidget(text: LocaleKeys.lastName),
          lastNameTextField(),
          const SizedBox(height: 16),
          const LabelAuthTextWidget(text: LocaleKeys.email),
          emailTextField(),
          const SizedBox(height: 16),
          const LabelAuthTextWidget(text: LocaleKeys.mobileNumber),
          phoneField(),
          const SizedBox(height: 16),
          const LabelAuthTextWidget(text: LocaleKeys.password),
          passwordTextField(),
          const SizedBox(height: 16),
          const LabelAuthTextWidget(text: LocaleKeys.confirmPassword),
          confirmPasswordTextField(),
          const SizedBox(height: 20),
          GlobalButton(
            controller: globalButtonController,
            focusNode: submitButtonFocusNode,
            onPressed: () {
              if (externalErrors.isNotEmpty) {
                externalErrors = <String, String>{};
                formKey.currentState!.reset();
              }
              if (formKey.currentState!.validate()) {
                _authenticationBloc.add(
                  AuthenticationEvent.signUp(
                    signUpParams: SignUpParams(
                      email: emailTextEditingController.text,
                      firstName: firstNameTextEditingController.text,
                      lastName: lastNameTextEditingController.text,
                      password: passwordTextEditingController.text,
                      phoneNumber: phoneController.text,
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
              LocaleKeys.signUp.tr(),
              style: context.bodySmall?.copyWith(
                fontWeight: FontWeight.w900,
                color: Palette.white,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Center(
            child: QuestionWithActionWidget(
              question: LocaleKeys.alreadyHaveAnAccount,
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
            textDirection: TextDirection.ltr,
            focusNode: emailFocusNode,
            nextFocusNode: phoneFocusNode,
            hintText: LocaleKeys.email.tr(),
            isEmpty: emailValue?.isEmpty ?? false,
            onChanged: (String value) {
              emailController.onTextChange(value);
            },
            validator: (String? value) => validateInput(
              value,
              context,
              fieldName: 'email',
              externalErrors: externalErrors,
              <ValidationType>[
                ValidationType.email,
                ValidationType.requiredField,
              ],
            ),
          );
        },
      ),
    );
  }

  ValueListenableBuilder<String?> firstNameTextField() {
    return ValueListenableBuilder<String?>(
      valueListenable: firstNameController,
      builder: (BuildContext context, String? firstNameValue, Widget? child) {
        return TextInputWidget(
          controller: firstNameTextEditingController,
          keyboardType: TextInputType.name,
          focusNode: firstNameFocusNode,
          nextFocusNode: lastNameFocusNode,
          hintText: LocaleKeys.firstName.tr(),
          isEmpty: firstNameValue?.isEmpty ?? false,
          onChanged: (String value) {
            firstNameController.onTextChange(value);
          },
          validator: (String? value) => validateInput(
            value,
            fieldName: 'first_name',
            externalErrors: externalErrors,
            context,
            <ValidationType>[ValidationType.requiredField],
          ),
        );
      },
    );
  }

  ValueListenableBuilder<String?> lastNameTextField() {
    return ValueListenableBuilder<String?>(
      valueListenable: lastNameController,
      builder: (BuildContext context, String? lastNameValue, Widget? child) {
        return TextInputWidget(
          controller: lastNameTextEditingController,
          keyboardType: TextInputType.name,
          focusNode: lastNameFocusNode,
          nextFocusNode: emailFocusNode,
          hintText: LocaleKeys.lastName.tr(),
          isEmpty: lastNameValue?.isEmpty ?? false,
          onChanged: (String value) {
            lastNameController.onTextChange(value);
          },
          validator: (String? value) => validateInput(
            value,
            fieldName: 'last_name',
            externalErrors: externalErrors,
            context,
            <ValidationType>[ValidationType.requiredField],
          ),
        );
      },
    );
  }

  Widget phoneField() {
    return IntlPhoneField(
      controller: phoneController,
      focusNode: phoneFocusNode,
      initialCountryCode: 'SY',
      disableLengthCheck: true,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Palette.hint.withValues(alpha: 0.2)),
        hintText: '987 123 456',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      // onChanged: (phone) {
      //   print('Country Code: ${phone.countryCode}');
      //   print('Phone Number: ${phone.number}');
      //   print('Complete Number: ${phone.completeNumber}');
      // },
      // onCountryChanged: (country) {
      //   print('Country changed: ${country.code}');
      //   print('Dial code: +${country.dialCode}');
      // },
      validator: (value) {
        if (value == null || value.number.isEmpty) {
          return LocaleKeys.phoneNumberIsRequired.tr();
        }
        return null;
      },
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
            fieldName: 'password',
            externalErrors: externalErrors,
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

  @override
  void dispose() {
    emailTextEditingController.dispose();
    emailFocusNode.dispose();
    emailController.dispose();

    firstNameTextEditingController.dispose();
    firstNameFocusNode.dispose();
    firstNameController.dispose();

    lastNameTextEditingController.dispose();
    lastNameFocusNode.dispose();
    lastNameController.dispose();

    passwordTextEditingController.dispose();
    passwordFocusNode.dispose();
    passwordController.dispose();

    phoneController.dispose();
    phoneFocusNode.dispose();

    confirmPasswordTextEditingController.dispose();
    confirmPasswordFocusNode.dispose();
    confirmPasswordController.dispose();

    globalButtonController.dispose();
    submitButtonFocusNode.dispose();

    super.dispose();
  }
}
