import 'package:ewan/core/core.dart';
import 'package:ewan/features/auth/presentation/widgets/auth_skeleton.dart';
import 'package:ewan/features/auth/presentation/widgets/label_auth_text_widget.dart';
import 'package:ewan/features/profile/bloc/profile_change_request/profile_change_request_cubit.dart';
import 'package:ewan/features/profile/bloc/profile_otp/profile_otp_cubit.dart';
import 'package:ewan/features/profile/data/profile_repository.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileChangeRequestCubit>(
      create: (_) => ProfileChangeRequestCubit(getIt<ProfileRepository>()),
      child: const ChangePasswordView(),
    );
  }
}

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _currentController = TextEditingController();
  final TextEditingController _newController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();
  final GlobalButtonController _buttonController = GlobalButtonController();
  final FocusNode _submitFocusNode = FocusNode();

  @override
  void dispose() {
    _currentController.dispose();
    _newController.dispose();
    _confirmController.dispose();
    _buttonController.dispose();
    _submitFocusNode.dispose();
    super.dispose();
  }

  static bool _hasLength(String v) => v.length >= 8;
  static bool _hasUpper(String v) => v.contains(RegExp(r'[A-Z]'));
  static bool _hasLower(String v) => v.contains(RegExp(r'[a-z]'));
  static bool _hasNumber(String v) => v.contains(RegExp(r'\d'));

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    context.read<ProfileChangeRequestCubit>().requestPasswordChange(
      currentPassword: _currentController.text,
      newPassword: _newController.text,
      confirmPassword: _confirmController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileChangeRequestCubit, ProfileChangeRequestState>(
      listener: (BuildContext context, ProfileChangeRequestState state) {
        state.maybeWhen(
          loading: () => _buttonController.changeToLoader(),
          failed: (GeneralException? e) {
            _buttonController.value = null;
            showSnackBar(
              context: context,
              message: e?.displayMessage,
              isError: true,
            );
          },
          passwordRequested: () {
            _buttonController.value = null;
            final ProfileChangeRequestCubit cubit = context
                .read<ProfileChangeRequestCubit>();
            final String current = _currentController.text;
            final String newPass = _newController.text;
            final String confirm = _confirmController.text;
            context.pushRoute(
              ProfileOtpRoute(
                purpose: ProfileOtpPurpose.changePassword,
                onResend: () => cubit.resendPasswordChange(
                  currentPassword: current,
                  newPassword: newPass,
                  confirmPassword: confirm,
                ),
              ),
            );
          },
          orElse: () {},
        );
      },
      child: AuthSkeleton(
        formKey: _formKey,
        title: LocaleKeys.changePassword.tr(),
        subTitle: LocaleKeys.updateYourCredentials.tr(),
        content: <Widget>[
          _PasswordField(
            label: LocaleKeys.currentPassword.tr(),
            controller: _currentController,
            validator: (String? v) =>
                (v == null || v.isEmpty) ? LocaleKeys.fieldRequired.tr() : null,
          ),
          const SizedBox(height: Dimensions.space16),
          _PasswordField(
            label: LocaleKeys.newPassword.tr(),
            controller: _newController,
            validator: (String? v) {
              final String value = v ?? '';
              if (!(_hasLength(value) &&
                  _hasUpper(value) &&
                  _hasLower(value) &&
                  _hasNumber(value))) {
                return LocaleKeys.passwordRequirementsNotMet.tr();
              }
              if (value == _currentController.text) {
                return LocaleKeys.newPasswordMustDiffer.tr();
              }
              return null;
            },
          ),
          const SizedBox(height: Dimensions.space12),
          ValueListenableBuilder<TextEditingValue>(
            valueListenable: _newController,
            builder: (BuildContext context, TextEditingValue value, _) {
              final String v = value.text;
              return Wrap(
                spacing: Dimensions.space16,
                runSpacing: Dimensions.space8,
                children: <Widget>[
                  _Rule(
                    label: LocaleKeys.ruleEightChars.tr(),
                    ok: _hasLength(v),
                  ),
                  _Rule(label: LocaleKeys.ruleUppercase.tr(), ok: _hasUpper(v)),
                  _Rule(label: LocaleKeys.ruleLowercase.tr(), ok: _hasLower(v)),
                  _Rule(label: LocaleKeys.ruleNumber.tr(), ok: _hasNumber(v)),
                ],
              );
            },
          ),
          const SizedBox(height: Dimensions.space16),
          _PasswordField(
            label: LocaleKeys.confirmPassword.tr(),
            controller: _confirmController,
            validator: (String? v) => v != _newController.text
                ? LocaleKeys.passwordsDoNotMatch.tr()
                : null,
          ),
          const SizedBox(height: Dimensions.space24),
          GlobalButton(
            controller: _buttonController,
            focusNode: _submitFocusNode,
            onPressed: _submit,
            child: Text(
              LocaleKeys.changePassword.tr(),
              style: context.bodySmall?.copyWith(
                fontWeight: FontWeight.w900,
                color: Palette.white,
              ),
            ),
          ),
          const SizedBox(height: Dimensions.space16),
          Center(
            child: TextButton(
              onPressed: () => context.pushRoute(const ForgetPasswordRoute()),
              child: Text(LocaleKeys.forgotCurrentPassword.tr()),
            ),
          ),
        ],
      ),
    );
  }
}

class _PasswordField extends StatefulWidget {
  const _PasswordField({
    required this.label,
    required this.controller,
    this.validator,
  });

  final String label;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  State<_PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<_PasswordField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        LabelAuthTextWidget(text: widget.label),
        TextFormField(
          controller: widget.controller,
          obscureText: _obscure,
          validator: widget.validator,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(_obscure ? Icons.visibility_off : Icons.visibility),
              onPressed: () => setState(() => _obscure = !_obscure),
            ),
          ),
        ),
      ],
    );
  }
}

class _Rule extends StatelessWidget {
  const _Rule({required this.label, required this.ok});

  final String label;
  final bool ok;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: <Widget>[
        Icon(ok ? Icons.check_circle : Icons.circle_outlined, size: 16),
        Text(label, style: context.bodySmall),
      ],
    );
  }
}
