import '../../../core/core.dart';
import '../../base/data/base_repository.dart';
import '../auth.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(
    this._authRepository,
    this._userLocalDataSource,
    this._baseRemoteDataSource,
  ) : super(const AuthenticationState.initial()) {
    on<AuthenticationEvent>((
      AuthenticationEvent event,
      Emitter<AuthenticationState> emit,
    ) async {
      await event.map(
        signIn: (_SignIn value) => signIn(event, emit),
        signInByCode: (_SignInByCode value) => signInByCode(event, emit),
        signUp: (_SignUp value) => signUp(event, emit),
        activateResendButton: (_ActivateResendButton event) =>
            activateResendButton(event, emit),
        displayTimeOnUI: (_DisplayTimeOnUI event) {
          emit(
            AuthenticationState.remainingTimeForResend(
              remainingTime: event.remainingTime,
            ),
          );
        },
        verifyAccount: (_VerifyPhoneNumber value) => verifyAccount(event, emit),
        resendVerificationCodeOnEmail: (_ResendVerificationCodeOnEmail event) =>
            resendVerificationCodeOnEmail(event, emit),
        resetPassword: (_ResetPassword event) => resetPassword(event, emit),
      );
    });
  }

  final AuthRepository _authRepository;
  final UserLocalDataSource _userLocalDataSource;
  final BaseRemoteDataSource _baseRemoteDataSource;

  String? verificationCodeEmail;
  bool verifyEmailForProfile = false;
  String? resetPasswordCode;
  bool redirectToResetPasswordPage = false;
  Timer? timer;

  String languageCode = LocalizationConfig.currentLanguage;
  String? currencyId = PrefData.currencyIdPhone;
  bool loginMethod = false;

  Future<void> signUp(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      // event as _$SignUpImpl;
      if (event is! _SignUp) return;

      verificationCodeEmail = null;
      emit(const AuthenticationState.loadingSignUp());
      late final AuthModel response;
      response = await _authRepository.signUp(signUpParams: event.signUpParams);

      verificationCodeEmail = response.user.email;
      PrefData.token = response.access;
      emit(const AuthenticationState.signUpSucceed());
    } on GeneralException catch (e) {
      emit(AuthenticationState.signUpFailed(generalException: e));
    }
  }

  Future<void> verifyAccount(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      // event as _$VerifyPhoneNumberImpl;
      if (event is! _VerifyPhoneNumber) return;

      emit(const AuthenticationState.loadingVerifyAccount());

      final AuthModel response = await _authRepository.verifyAccount(
        verifyAccountParams: event.verifyAccountParams,
      );
      PrefData.isSignedIn = true;
      await Future.wait(<Future<void>>[
        _userLocalDataSource.storeUser(response.user),
        operationsOnUserProfile(response.user),
      ]);
      GlobalNotifiers.profileNotifier.value =
          !GlobalNotifiers.profileNotifier.value;

      emit(const AuthenticationState.verifyAccountSucceed());
    } catch (e) {
      emit(
        AuthenticationState.verifyAccountFailed(
          generalException: LocalException(message: e.toString()),
        ),
      );
    }
  }

  Future<void> resendVerificationCodeOnEmail(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      // event as _$ResendVerificationCodeOnEmailImpl;
      if (event is! _ResendVerificationCodeOnEmail) return;

      emit(const AuthenticationState.loadingResendVerificationCode());

      await _authRepository.resendVerificationCodeOnEmail(
        email: verificationCodeEmail ??= event.email,
      );

      if (event.toResetPassword) {
        redirectToResetPasswordPage = true;
      }
      emit(const AuthenticationState.resendVerificationCodeSucceed());
    } catch (e) {
      emit(
        AuthenticationState.resendVerificationCodeFailed(
          generalException: LocalException(message: e.toString()),
        ),
      );
    }
  }

  Future<void> signInByCode(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      // event as _$SignInByCodeImpl;
      if (event is! _SignInByCode) return;

      emit(const AuthenticationState.loadingVerifyAccount());

      final AuthModel response = await _authRepository.signInByCode(
        verifyAccountParams: event.verifyAccountParams,
      );

      await Future.wait(<Future<void>>[
        _userLocalDataSource.storeAuthData(
          refreshToken: response.refresh,
          token: response.access,
          userData: response.user,
        ),
        operationsOnUserProfile(response.user),
      ]);
      resetPasswordCode = response.user.resetPasswordCode;
      emit(const AuthenticationState.redirectToResetPasswordPage());
    } catch (e) {
      emit(
        AuthenticationState.verifyAccountFailed(
          generalException: LocalException(message: e.toString()),
        ),
      );
    }
  }

  Future<void> resetPassword(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      // event as _$ResetPasswordImpl;
      if (event is! _ResetPassword) return;
      emit(const AuthenticationState.loadingResetPassword());

      await _authRepository.resetPassword(
        password: event.password,
        resetPasswordCode: resetPasswordCode!,
      );

      emit(const AuthenticationState.resetPasswordSucceed());
    } on GeneralException catch (e) {
      emit(AuthenticationState.signUpFailed(generalException: e));
    }
  }

  Future<void> activateResendButton(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    const int waitTime = 30;
    int remainingTime = waitTime;
    if (true == timer?.isActive) {
      return;
    }
    timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) async {
      if (isClosed) {
        return;
      }
      if (remainingTime >= 0) {
        remainingTime--;
        add(AuthenticationEvent.displayTimeOnUI(remainingTime: remainingTime));
      } else {
        timer.cancel();
      }
    });
  }

  Future<void> signIn(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      // event as _$SignInImpl;
      // event as _SignIn;
      if (event is! _SignIn) return;

      emit(const AuthenticationState.loadingSignIn());

      final AuthModel response = await _authRepository.signIn(
        signInParams: event.signInParams,
      );
      loginMethod = true;

      // TODO: Re-enable when backend returns `email_verified`.
      // if (response.user.emailVerified != true) {
      //   verificationCodeEmail = response.user.email;
      //   PrefData.token = response.access;
      //   PrefData.refreshToken = response.refresh;

      //   emit(const AuthenticationState.accountNeedVerify());
      //   return;
      // }

      await Future.wait(<Future<void>>[
        _userLocalDataSource.storeAuthData(
          refreshToken: response.refresh,
          token: response.access,
          userData: response.user,
        ),
        // operationsOnUserProfile(response.user), // TODO:
      ]);

      emit(const AuthenticationState.signInSucceed());
    } on GeneralException catch (e) {
      emit(AuthenticationState.signInFailed(generalException: e));
    }
  }

  Future<List<Future<void>>> operationsOnUserProfile(UserData response) async {
    try {
      // String fcmToken = await Managers.notificationManager.getFcmToken();// TODO:
      String fcmToken = 'await Managers.notificationManager.getFcmToken()';

      return <Future<void>>[
        // if (!PrefData.fcmTokenSent)
        _baseRemoteDataSource
            .saveFcmToken(fcmToken)
            .then((void value) {
              PrefData.fcmTokenSent = true;
              PrefData.fcmToken = fcmToken;
            })
            .onError((Object? error, StackTrace stackTrace) {
              PrefData.fcmTokenSent = false;
              PrefData.fcmToken = null;
            }),
      ];
    } catch (_) {
      PrefData.fcmTokenSent = false;
      PrefData.fcmToken = null;
      return <Future<void>>[];
    }
  }
}
