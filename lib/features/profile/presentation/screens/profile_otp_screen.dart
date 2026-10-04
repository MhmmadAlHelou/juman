import 'package:ewan/core/core.dart';
import 'package:ewan/features/auth/presentation/widgets/auth_skeleton.dart';
import 'package:ewan/features/auth/presentation/widgets/otp_field.dart';
import 'package:ewan/features/auth/presentation/widgets/question_with_action.dart';
import 'package:ewan/features/profile/bloc/profile_cubit.dart';
import 'package:ewan/features/profile/bloc/profile_otp/profile_otp_cubit.dart';
import 'package:ewan/features/profile/data/profile_repository.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileOtpScreen extends StatelessWidget {
  const ProfileOtpScreen({
    super.key,
    required this.purpose,
    required this.onResend,
    this.newEmail,
  });

  final ProfileOtpPurpose purpose;
  final String? newEmail;
  final Future<void> Function() onResend;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileOtpCubit>(
      create: (_) => ProfileOtpCubit(
        getIt<ProfileRepository>(),
        purpose: purpose,
        newEmail: newEmail,
        onResend: onResend,
      ),
      child: const ProfileOtpView(),
    );
  }
}

class ProfileOtpView extends StatefulWidget {
  const ProfileOtpView({super.key});

  @override
  State<ProfileOtpView> createState() => _ProfileOtpViewState();
}

class _ProfileOtpViewState extends State<ProfileOtpView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _otpController = TextEditingController();
  final FocusNode _otpFocusNode = FocusNode();
  final GlobalButtonController _buttonController = GlobalButtonController();
  final FocusNode _submitFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _otpFocusNode.requestFocus();
  }

  @override
  void dispose() {
    _otpController.dispose();
    _otpFocusNode.dispose();
    _buttonController.dispose();
    _submitFocusNode.dispose();
    super.dispose();
  }

  void _verify() {
    if (_formKey.currentState!.validate()) {
      context.read<ProfileOtpCubit>().verify(_otpController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ProfileOtpCubit cubit = context.read<ProfileOtpCubit>();

    return BlocListener<ProfileOtpCubit, ProfileOtpState>(
      listener: (BuildContext context, ProfileOtpState state) {
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
          succeeded: () {
            _buttonController.value = null;
            if (cubit.purpose == ProfileOtpPurpose.changeEmail) {
              getIt<ProfileCubit>().loadProfile(silent: true);
            }
            showSnackBar(
              context: context,
              message: cubit.purpose == ProfileOtpPurpose.changeEmail
                  ? LocaleKeys.emailChanged.tr()
                  : LocaleKeys.passwordChanged.tr(),
            );
            // If it turns out that the token is invalidated after the change, use `replaceAll` to `LoginRoute` instead of this line.
            context.router.popUntilRouteWithName(PersonalInformationRoute.name);
          },
          resendFailed: (GeneralException? e) => showSnackBar(
            context: context,
            message: e?.displayMessage,
            isError: true,
          ),
          resendSucceeded: () => showSnackBar(
            context: context,
            message: LocaleKeys.theCodeHasBeenResent.tr(),
          ),
          orElse: () {},
        );
      },
      child: AuthSkeleton(
        formKey: _formKey,
        title: LocaleKeys.codeVerification.tr(),
        subTitle: LocaleKeys.plzCheckYourEmail.tr(),
        content: <Widget>[
          const SizedBox(height: Dimensions.space20),
          OtpFieldWidget(
            controller: _otpController,
            focusNode: _otpFocusNode,
            onCompleted: (String _) => _verify(),
          ),
          const SizedBox(height: Dimensions.space70),
          GlobalButton(
            controller: _buttonController,
            focusNode: _submitFocusNode,
            onPressed: _verify,
            child: Text(
              LocaleKeys.confirm.tr(),
              style: context.bodySmall?.copyWith(
                fontWeight: FontWeight.w900,
                color: Palette.white,
              ),
            ),
          ),
          ValueListenableBuilder<int>(
            valueListenable: cubit.remainingSeconds,
            builder: (BuildContext context, int seconds, _) {
              return Center(
                child: QuestionWithActionWidget(
                  question: LocaleKeys.didNotReceiveTheCode,
                  action: seconds > 0
                      ? LocaleKeys.resendInSeconds.tr()
                      : LocaleKeys.resend.tr(),
                  actionArgs: seconds > 0
                      ? <String>[seconds.toString()]
                      : <String>[],
                  onPressed: seconds > 0 ? () {} : cubit.resend,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
