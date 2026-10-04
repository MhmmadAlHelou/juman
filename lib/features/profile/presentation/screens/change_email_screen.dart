import 'package:ewan/core/core.dart';
import 'package:ewan/features/auth/presentation/widgets/auth_skeleton.dart';
import 'package:ewan/features/auth/presentation/widgets/label_auth_text_widget.dart';
import 'package:ewan/features/profile/bloc/profile_change_request/profile_change_request_cubit.dart';
import 'package:ewan/features/profile/bloc/profile_cubit.dart';
import 'package:ewan/features/profile/bloc/profile_otp/profile_otp_cubit.dart';
import 'package:ewan/features/profile/data/profile_repository.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChangeEmailScreen extends StatelessWidget {
  const ChangeEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileChangeRequestCubit>(
      create: (_) => ProfileChangeRequestCubit(getIt<ProfileRepository>()),
      child: const ChangeEmailView(),
    );
  }
}

class ChangeEmailView extends StatefulWidget {
  const ChangeEmailView({super.key});

  @override
  State<ChangeEmailView> createState() => _ChangeEmailViewState();
}

class _ChangeEmailViewState extends State<ChangeEmailView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final GlobalButtonController _buttonController = GlobalButtonController();
  final FocusNode _submitFocusNode = FocusNode();

  @override
  void dispose() {
    _emailController.dispose();
    _buttonController.dispose();
    _submitFocusNode.dispose();
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    context.read<ProfileChangeRequestCubit>().requestEmailChange(
      _emailController.text.trim(),
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
          emailRequested: (String newEmail) {
            _buttonController.value = null;
            final ProfileChangeRequestCubit cubit = context
                .read<ProfileChangeRequestCubit>();
            context.pushRoute(
              ProfileOtpRoute(
                purpose: ProfileOtpPurpose.changeEmail,
                newEmail: newEmail,
                onResend: () => cubit.resendEmailChange(newEmail),
              ),
            );
          },
          orElse: () {},
        );
      },
      child: AuthSkeleton(
        formKey: _formKey,
        title: LocaleKeys.changeEmailAddress.tr(),
        subTitle: LocaleKeys.enterNewEmailToReceiveCode.tr(),
        content: <Widget>[
          LabelAuthTextWidget(text: LocaleKeys.newEmailAddress.tr()),
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            onFieldSubmitted: (_) => _submit(),
            validator: (String? v) {
              final String value = v?.trim() ?? '';
              if (value.isEmpty) return LocaleKeys.fieldRequired.tr();
              if (!RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(value)) {
                return LocaleKeys.invalidEmail.tr();
              }
              final String? currentEmail =
                  getIt<ProfileCubit>().state.profile?.email;
              if (value.toLowerCase() == currentEmail?.toLowerCase()) {
                return LocaleKeys.newEmailMustDiffer.tr();
              }
              return null;
            },
          ),
          const SizedBox(height: Dimensions.space24),
          GlobalButton(
            controller: _buttonController,
            focusNode: _submitFocusNode,
            onPressed: _submit,
            child: Text(
              LocaleKeys.sendCode.tr(),
              style: context.bodySmall?.copyWith(
                fontWeight: FontWeight.w900,
                color: Palette.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
