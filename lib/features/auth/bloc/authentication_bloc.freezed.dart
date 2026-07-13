// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthenticationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationEvent()';
}


}

/// @nodoc
class $AuthenticationEventCopyWith<$Res>  {
$AuthenticationEventCopyWith(AuthenticationEvent _, $Res Function(AuthenticationEvent) __);
}


/// Adds pattern-matching-related methods to [AuthenticationEvent].
extension AuthenticationEventPatterns on AuthenticationEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SignIn value)?  signIn,TResult Function( _SignUp value)?  signUp,TResult Function( _VerifyPhoneNumber value)?  verifyAccount,TResult Function( _SignInByCode value)?  signInByCode,TResult Function( _ResendVerificationCodeOnEmail value)?  resendVerificationCodeOnEmail,TResult Function( _ActivateResendButton value)?  activateResendButton,TResult Function( _DisplayTimeOnUI value)?  displayTimeOnUI,TResult Function( _ResetPassword value)?  resetPassword,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignIn() when signIn != null:
return signIn(_that);case _SignUp() when signUp != null:
return signUp(_that);case _VerifyPhoneNumber() when verifyAccount != null:
return verifyAccount(_that);case _SignInByCode() when signInByCode != null:
return signInByCode(_that);case _ResendVerificationCodeOnEmail() when resendVerificationCodeOnEmail != null:
return resendVerificationCodeOnEmail(_that);case _ActivateResendButton() when activateResendButton != null:
return activateResendButton(_that);case _DisplayTimeOnUI() when displayTimeOnUI != null:
return displayTimeOnUI(_that);case _ResetPassword() when resetPassword != null:
return resetPassword(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SignIn value)  signIn,required TResult Function( _SignUp value)  signUp,required TResult Function( _VerifyPhoneNumber value)  verifyAccount,required TResult Function( _SignInByCode value)  signInByCode,required TResult Function( _ResendVerificationCodeOnEmail value)  resendVerificationCodeOnEmail,required TResult Function( _ActivateResendButton value)  activateResendButton,required TResult Function( _DisplayTimeOnUI value)  displayTimeOnUI,required TResult Function( _ResetPassword value)  resetPassword,}){
final _that = this;
switch (_that) {
case _SignIn():
return signIn(_that);case _SignUp():
return signUp(_that);case _VerifyPhoneNumber():
return verifyAccount(_that);case _SignInByCode():
return signInByCode(_that);case _ResendVerificationCodeOnEmail():
return resendVerificationCodeOnEmail(_that);case _ActivateResendButton():
return activateResendButton(_that);case _DisplayTimeOnUI():
return displayTimeOnUI(_that);case _ResetPassword():
return resetPassword(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SignIn value)?  signIn,TResult? Function( _SignUp value)?  signUp,TResult? Function( _VerifyPhoneNumber value)?  verifyAccount,TResult? Function( _SignInByCode value)?  signInByCode,TResult? Function( _ResendVerificationCodeOnEmail value)?  resendVerificationCodeOnEmail,TResult? Function( _ActivateResendButton value)?  activateResendButton,TResult? Function( _DisplayTimeOnUI value)?  displayTimeOnUI,TResult? Function( _ResetPassword value)?  resetPassword,}){
final _that = this;
switch (_that) {
case _SignIn() when signIn != null:
return signIn(_that);case _SignUp() when signUp != null:
return signUp(_that);case _VerifyPhoneNumber() when verifyAccount != null:
return verifyAccount(_that);case _SignInByCode() when signInByCode != null:
return signInByCode(_that);case _ResendVerificationCodeOnEmail() when resendVerificationCodeOnEmail != null:
return resendVerificationCodeOnEmail(_that);case _ActivateResendButton() when activateResendButton != null:
return activateResendButton(_that);case _DisplayTimeOnUI() when displayTimeOnUI != null:
return displayTimeOnUI(_that);case _ResetPassword() when resetPassword != null:
return resetPassword(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( SignInParams signInParams)?  signIn,TResult Function( SignUpParams signUpParams)?  signUp,TResult Function( VerifyAccountParams verifyAccountParams)?  verifyAccount,TResult Function( VerifyAccountParams verifyAccountParams)?  signInByCode,TResult Function( String email,  bool toResetPassword)?  resendVerificationCodeOnEmail,TResult Function()?  activateResendButton,TResult Function( int remainingTime)?  displayTimeOnUI,TResult Function( String password)?  resetPassword,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignIn() when signIn != null:
return signIn(_that.signInParams);case _SignUp() when signUp != null:
return signUp(_that.signUpParams);case _VerifyPhoneNumber() when verifyAccount != null:
return verifyAccount(_that.verifyAccountParams);case _SignInByCode() when signInByCode != null:
return signInByCode(_that.verifyAccountParams);case _ResendVerificationCodeOnEmail() when resendVerificationCodeOnEmail != null:
return resendVerificationCodeOnEmail(_that.email,_that.toResetPassword);case _ActivateResendButton() when activateResendButton != null:
return activateResendButton();case _DisplayTimeOnUI() when displayTimeOnUI != null:
return displayTimeOnUI(_that.remainingTime);case _ResetPassword() when resetPassword != null:
return resetPassword(_that.password);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( SignInParams signInParams)  signIn,required TResult Function( SignUpParams signUpParams)  signUp,required TResult Function( VerifyAccountParams verifyAccountParams)  verifyAccount,required TResult Function( VerifyAccountParams verifyAccountParams)  signInByCode,required TResult Function( String email,  bool toResetPassword)  resendVerificationCodeOnEmail,required TResult Function()  activateResendButton,required TResult Function( int remainingTime)  displayTimeOnUI,required TResult Function( String password)  resetPassword,}) {final _that = this;
switch (_that) {
case _SignIn():
return signIn(_that.signInParams);case _SignUp():
return signUp(_that.signUpParams);case _VerifyPhoneNumber():
return verifyAccount(_that.verifyAccountParams);case _SignInByCode():
return signInByCode(_that.verifyAccountParams);case _ResendVerificationCodeOnEmail():
return resendVerificationCodeOnEmail(_that.email,_that.toResetPassword);case _ActivateResendButton():
return activateResendButton();case _DisplayTimeOnUI():
return displayTimeOnUI(_that.remainingTime);case _ResetPassword():
return resetPassword(_that.password);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( SignInParams signInParams)?  signIn,TResult? Function( SignUpParams signUpParams)?  signUp,TResult? Function( VerifyAccountParams verifyAccountParams)?  verifyAccount,TResult? Function( VerifyAccountParams verifyAccountParams)?  signInByCode,TResult? Function( String email,  bool toResetPassword)?  resendVerificationCodeOnEmail,TResult? Function()?  activateResendButton,TResult? Function( int remainingTime)?  displayTimeOnUI,TResult? Function( String password)?  resetPassword,}) {final _that = this;
switch (_that) {
case _SignIn() when signIn != null:
return signIn(_that.signInParams);case _SignUp() when signUp != null:
return signUp(_that.signUpParams);case _VerifyPhoneNumber() when verifyAccount != null:
return verifyAccount(_that.verifyAccountParams);case _SignInByCode() when signInByCode != null:
return signInByCode(_that.verifyAccountParams);case _ResendVerificationCodeOnEmail() when resendVerificationCodeOnEmail != null:
return resendVerificationCodeOnEmail(_that.email,_that.toResetPassword);case _ActivateResendButton() when activateResendButton != null:
return activateResendButton();case _DisplayTimeOnUI() when displayTimeOnUI != null:
return displayTimeOnUI(_that.remainingTime);case _ResetPassword() when resetPassword != null:
return resetPassword(_that.password);case _:
  return null;

}
}

}

/// @nodoc


class _SignIn implements AuthenticationEvent {
  const _SignIn({required this.signInParams});
  

 final  SignInParams signInParams;

/// Create a copy of AuthenticationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInCopyWith<_SignIn> get copyWith => __$SignInCopyWithImpl<_SignIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignIn&&(identical(other.signInParams, signInParams) || other.signInParams == signInParams));
}


@override
int get hashCode => Object.hash(runtimeType,signInParams);

@override
String toString() {
  return 'AuthenticationEvent.signIn(signInParams: $signInParams)';
}


}

/// @nodoc
abstract mixin class _$SignInCopyWith<$Res> implements $AuthenticationEventCopyWith<$Res> {
  factory _$SignInCopyWith(_SignIn value, $Res Function(_SignIn) _then) = __$SignInCopyWithImpl;
@useResult
$Res call({
 SignInParams signInParams
});




}
/// @nodoc
class __$SignInCopyWithImpl<$Res>
    implements _$SignInCopyWith<$Res> {
  __$SignInCopyWithImpl(this._self, this._then);

  final _SignIn _self;
  final $Res Function(_SignIn) _then;

/// Create a copy of AuthenticationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? signInParams = null,}) {
  return _then(_SignIn(
signInParams: null == signInParams ? _self.signInParams : signInParams // ignore: cast_nullable_to_non_nullable
as SignInParams,
  ));
}


}

/// @nodoc


class _SignUp implements AuthenticationEvent {
  const _SignUp({required this.signUpParams});
  

 final  SignUpParams signUpParams;

/// Create a copy of AuthenticationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpCopyWith<_SignUp> get copyWith => __$SignUpCopyWithImpl<_SignUp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUp&&(identical(other.signUpParams, signUpParams) || other.signUpParams == signUpParams));
}


@override
int get hashCode => Object.hash(runtimeType,signUpParams);

@override
String toString() {
  return 'AuthenticationEvent.signUp(signUpParams: $signUpParams)';
}


}

/// @nodoc
abstract mixin class _$SignUpCopyWith<$Res> implements $AuthenticationEventCopyWith<$Res> {
  factory _$SignUpCopyWith(_SignUp value, $Res Function(_SignUp) _then) = __$SignUpCopyWithImpl;
@useResult
$Res call({
 SignUpParams signUpParams
});




}
/// @nodoc
class __$SignUpCopyWithImpl<$Res>
    implements _$SignUpCopyWith<$Res> {
  __$SignUpCopyWithImpl(this._self, this._then);

  final _SignUp _self;
  final $Res Function(_SignUp) _then;

/// Create a copy of AuthenticationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? signUpParams = null,}) {
  return _then(_SignUp(
signUpParams: null == signUpParams ? _self.signUpParams : signUpParams // ignore: cast_nullable_to_non_nullable
as SignUpParams,
  ));
}


}

/// @nodoc


class _VerifyPhoneNumber implements AuthenticationEvent {
  const _VerifyPhoneNumber({required this.verifyAccountParams});
  

 final  VerifyAccountParams verifyAccountParams;

/// Create a copy of AuthenticationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyPhoneNumberCopyWith<_VerifyPhoneNumber> get copyWith => __$VerifyPhoneNumberCopyWithImpl<_VerifyPhoneNumber>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyPhoneNumber&&(identical(other.verifyAccountParams, verifyAccountParams) || other.verifyAccountParams == verifyAccountParams));
}


@override
int get hashCode => Object.hash(runtimeType,verifyAccountParams);

@override
String toString() {
  return 'AuthenticationEvent.verifyAccount(verifyAccountParams: $verifyAccountParams)';
}


}

/// @nodoc
abstract mixin class _$VerifyPhoneNumberCopyWith<$Res> implements $AuthenticationEventCopyWith<$Res> {
  factory _$VerifyPhoneNumberCopyWith(_VerifyPhoneNumber value, $Res Function(_VerifyPhoneNumber) _then) = __$VerifyPhoneNumberCopyWithImpl;
@useResult
$Res call({
 VerifyAccountParams verifyAccountParams
});




}
/// @nodoc
class __$VerifyPhoneNumberCopyWithImpl<$Res>
    implements _$VerifyPhoneNumberCopyWith<$Res> {
  __$VerifyPhoneNumberCopyWithImpl(this._self, this._then);

  final _VerifyPhoneNumber _self;
  final $Res Function(_VerifyPhoneNumber) _then;

/// Create a copy of AuthenticationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? verifyAccountParams = null,}) {
  return _then(_VerifyPhoneNumber(
verifyAccountParams: null == verifyAccountParams ? _self.verifyAccountParams : verifyAccountParams // ignore: cast_nullable_to_non_nullable
as VerifyAccountParams,
  ));
}


}

/// @nodoc


class _SignInByCode implements AuthenticationEvent {
  const _SignInByCode({required this.verifyAccountParams});
  

 final  VerifyAccountParams verifyAccountParams;

/// Create a copy of AuthenticationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInByCodeCopyWith<_SignInByCode> get copyWith => __$SignInByCodeCopyWithImpl<_SignInByCode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInByCode&&(identical(other.verifyAccountParams, verifyAccountParams) || other.verifyAccountParams == verifyAccountParams));
}


@override
int get hashCode => Object.hash(runtimeType,verifyAccountParams);

@override
String toString() {
  return 'AuthenticationEvent.signInByCode(verifyAccountParams: $verifyAccountParams)';
}


}

/// @nodoc
abstract mixin class _$SignInByCodeCopyWith<$Res> implements $AuthenticationEventCopyWith<$Res> {
  factory _$SignInByCodeCopyWith(_SignInByCode value, $Res Function(_SignInByCode) _then) = __$SignInByCodeCopyWithImpl;
@useResult
$Res call({
 VerifyAccountParams verifyAccountParams
});




}
/// @nodoc
class __$SignInByCodeCopyWithImpl<$Res>
    implements _$SignInByCodeCopyWith<$Res> {
  __$SignInByCodeCopyWithImpl(this._self, this._then);

  final _SignInByCode _self;
  final $Res Function(_SignInByCode) _then;

/// Create a copy of AuthenticationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? verifyAccountParams = null,}) {
  return _then(_SignInByCode(
verifyAccountParams: null == verifyAccountParams ? _self.verifyAccountParams : verifyAccountParams // ignore: cast_nullable_to_non_nullable
as VerifyAccountParams,
  ));
}


}

/// @nodoc


class _ResendVerificationCodeOnEmail implements AuthenticationEvent {
  const _ResendVerificationCodeOnEmail({required this.email, this.toResetPassword = false});
  

 final  String email;
@JsonKey() final  bool toResetPassword;

/// Create a copy of AuthenticationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResendVerificationCodeOnEmailCopyWith<_ResendVerificationCodeOnEmail> get copyWith => __$ResendVerificationCodeOnEmailCopyWithImpl<_ResendVerificationCodeOnEmail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendVerificationCodeOnEmail&&(identical(other.email, email) || other.email == email)&&(identical(other.toResetPassword, toResetPassword) || other.toResetPassword == toResetPassword));
}


@override
int get hashCode => Object.hash(runtimeType,email,toResetPassword);

@override
String toString() {
  return 'AuthenticationEvent.resendVerificationCodeOnEmail(email: $email, toResetPassword: $toResetPassword)';
}


}

/// @nodoc
abstract mixin class _$ResendVerificationCodeOnEmailCopyWith<$Res> implements $AuthenticationEventCopyWith<$Res> {
  factory _$ResendVerificationCodeOnEmailCopyWith(_ResendVerificationCodeOnEmail value, $Res Function(_ResendVerificationCodeOnEmail) _then) = __$ResendVerificationCodeOnEmailCopyWithImpl;
@useResult
$Res call({
 String email, bool toResetPassword
});




}
/// @nodoc
class __$ResendVerificationCodeOnEmailCopyWithImpl<$Res>
    implements _$ResendVerificationCodeOnEmailCopyWith<$Res> {
  __$ResendVerificationCodeOnEmailCopyWithImpl(this._self, this._then);

  final _ResendVerificationCodeOnEmail _self;
  final $Res Function(_ResendVerificationCodeOnEmail) _then;

/// Create a copy of AuthenticationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? toResetPassword = null,}) {
  return _then(_ResendVerificationCodeOnEmail(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,toResetPassword: null == toResetPassword ? _self.toResetPassword : toResetPassword // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ActivateResendButton implements AuthenticationEvent {
  const _ActivateResendButton();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivateResendButton);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationEvent.activateResendButton()';
}


}




/// @nodoc


class _DisplayTimeOnUI implements AuthenticationEvent {
  const _DisplayTimeOnUI({required this.remainingTime});
  

 final  int remainingTime;

/// Create a copy of AuthenticationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisplayTimeOnUICopyWith<_DisplayTimeOnUI> get copyWith => __$DisplayTimeOnUICopyWithImpl<_DisplayTimeOnUI>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisplayTimeOnUI&&(identical(other.remainingTime, remainingTime) || other.remainingTime == remainingTime));
}


@override
int get hashCode => Object.hash(runtimeType,remainingTime);

@override
String toString() {
  return 'AuthenticationEvent.displayTimeOnUI(remainingTime: $remainingTime)';
}


}

/// @nodoc
abstract mixin class _$DisplayTimeOnUICopyWith<$Res> implements $AuthenticationEventCopyWith<$Res> {
  factory _$DisplayTimeOnUICopyWith(_DisplayTimeOnUI value, $Res Function(_DisplayTimeOnUI) _then) = __$DisplayTimeOnUICopyWithImpl;
@useResult
$Res call({
 int remainingTime
});




}
/// @nodoc
class __$DisplayTimeOnUICopyWithImpl<$Res>
    implements _$DisplayTimeOnUICopyWith<$Res> {
  __$DisplayTimeOnUICopyWithImpl(this._self, this._then);

  final _DisplayTimeOnUI _self;
  final $Res Function(_DisplayTimeOnUI) _then;

/// Create a copy of AuthenticationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? remainingTime = null,}) {
  return _then(_DisplayTimeOnUI(
remainingTime: null == remainingTime ? _self.remainingTime : remainingTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ResetPassword implements AuthenticationEvent {
  const _ResetPassword({required this.password});
  

 final  String password;

/// Create a copy of AuthenticationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetPasswordCopyWith<_ResetPassword> get copyWith => __$ResetPasswordCopyWithImpl<_ResetPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetPassword&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'AuthenticationEvent.resetPassword(password: $password)';
}


}

/// @nodoc
abstract mixin class _$ResetPasswordCopyWith<$Res> implements $AuthenticationEventCopyWith<$Res> {
  factory _$ResetPasswordCopyWith(_ResetPassword value, $Res Function(_ResetPassword) _then) = __$ResetPasswordCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class __$ResetPasswordCopyWithImpl<$Res>
    implements _$ResetPasswordCopyWith<$Res> {
  __$ResetPasswordCopyWithImpl(this._self, this._then);

  final _ResetPassword _self;
  final $Res Function(_ResetPassword) _then;

/// Create a copy of AuthenticationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(_ResetPassword(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AuthenticationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState()';
}


}

/// @nodoc
class $AuthenticationStateCopyWith<$Res>  {
$AuthenticationStateCopyWith(AuthenticationState _, $Res Function(AuthenticationState) __);
}


/// Adds pattern-matching-related methods to [AuthenticationState].
extension AuthenticationStatePatterns on AuthenticationState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AuthenticationInitial value)?  initial,TResult Function( _AuthenticationLoadingSignIn value)?  loadingSignIn,TResult Function( _AuthenticationSignInSucceed value)?  signInSucceed,TResult Function( _AuthenticationSignInFailed value)?  signInFailed,TResult Function( _AuthenticationAccountNeedVerify value)?  accountNeedVerify,TResult Function( _AuthenticationLoadingSignUp value)?  loadingSignUp,TResult Function( _AuthenticationSignUpSucceed value)?  signUpSucceed,TResult Function( _AuthenticationSignUpFailed value)?  signUpFailed,TResult Function( _AuthenticationLoadingVerifyAccount value)?  loadingVerifyAccount,TResult Function( _AuthenticationVerifyAccountSucceed value)?  verifyAccountSucceed,TResult Function( _AuthenticationRedirectToResetPasswordPage value)?  redirectToResetPasswordPage,TResult Function( _AuthenticationVerifyAccountFailed value)?  verifyAccountFailed,TResult Function( _AuthenticationLoadingResendVerificationCode value)?  loadingResendVerificationCode,TResult Function( _AuthenticationResendVerificationCodeSucceed value)?  resendVerificationCodeSucceed,TResult Function( _AuthenticationResendVerificationCodeFailed value)?  resendVerificationCodeFailed,TResult Function( _AuthenticationRemainingTimeForResend value)?  remainingTimeForResend,TResult Function( _AuthenticationLoadingResetPassword value)?  loadingResetPassword,TResult Function( _AuthenticationResetPasswordSucceed value)?  resetPasswordSucceed,TResult Function( _AuthenticationResetPasswordFailed value)?  resetPasswordFailed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthenticationInitial() when initial != null:
return initial(_that);case _AuthenticationLoadingSignIn() when loadingSignIn != null:
return loadingSignIn(_that);case _AuthenticationSignInSucceed() when signInSucceed != null:
return signInSucceed(_that);case _AuthenticationSignInFailed() when signInFailed != null:
return signInFailed(_that);case _AuthenticationAccountNeedVerify() when accountNeedVerify != null:
return accountNeedVerify(_that);case _AuthenticationLoadingSignUp() when loadingSignUp != null:
return loadingSignUp(_that);case _AuthenticationSignUpSucceed() when signUpSucceed != null:
return signUpSucceed(_that);case _AuthenticationSignUpFailed() when signUpFailed != null:
return signUpFailed(_that);case _AuthenticationLoadingVerifyAccount() when loadingVerifyAccount != null:
return loadingVerifyAccount(_that);case _AuthenticationVerifyAccountSucceed() when verifyAccountSucceed != null:
return verifyAccountSucceed(_that);case _AuthenticationRedirectToResetPasswordPage() when redirectToResetPasswordPage != null:
return redirectToResetPasswordPage(_that);case _AuthenticationVerifyAccountFailed() when verifyAccountFailed != null:
return verifyAccountFailed(_that);case _AuthenticationLoadingResendVerificationCode() when loadingResendVerificationCode != null:
return loadingResendVerificationCode(_that);case _AuthenticationResendVerificationCodeSucceed() when resendVerificationCodeSucceed != null:
return resendVerificationCodeSucceed(_that);case _AuthenticationResendVerificationCodeFailed() when resendVerificationCodeFailed != null:
return resendVerificationCodeFailed(_that);case _AuthenticationRemainingTimeForResend() when remainingTimeForResend != null:
return remainingTimeForResend(_that);case _AuthenticationLoadingResetPassword() when loadingResetPassword != null:
return loadingResetPassword(_that);case _AuthenticationResetPasswordSucceed() when resetPasswordSucceed != null:
return resetPasswordSucceed(_that);case _AuthenticationResetPasswordFailed() when resetPasswordFailed != null:
return resetPasswordFailed(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AuthenticationInitial value)  initial,required TResult Function( _AuthenticationLoadingSignIn value)  loadingSignIn,required TResult Function( _AuthenticationSignInSucceed value)  signInSucceed,required TResult Function( _AuthenticationSignInFailed value)  signInFailed,required TResult Function( _AuthenticationAccountNeedVerify value)  accountNeedVerify,required TResult Function( _AuthenticationLoadingSignUp value)  loadingSignUp,required TResult Function( _AuthenticationSignUpSucceed value)  signUpSucceed,required TResult Function( _AuthenticationSignUpFailed value)  signUpFailed,required TResult Function( _AuthenticationLoadingVerifyAccount value)  loadingVerifyAccount,required TResult Function( _AuthenticationVerifyAccountSucceed value)  verifyAccountSucceed,required TResult Function( _AuthenticationRedirectToResetPasswordPage value)  redirectToResetPasswordPage,required TResult Function( _AuthenticationVerifyAccountFailed value)  verifyAccountFailed,required TResult Function( _AuthenticationLoadingResendVerificationCode value)  loadingResendVerificationCode,required TResult Function( _AuthenticationResendVerificationCodeSucceed value)  resendVerificationCodeSucceed,required TResult Function( _AuthenticationResendVerificationCodeFailed value)  resendVerificationCodeFailed,required TResult Function( _AuthenticationRemainingTimeForResend value)  remainingTimeForResend,required TResult Function( _AuthenticationLoadingResetPassword value)  loadingResetPassword,required TResult Function( _AuthenticationResetPasswordSucceed value)  resetPasswordSucceed,required TResult Function( _AuthenticationResetPasswordFailed value)  resetPasswordFailed,}){
final _that = this;
switch (_that) {
case _AuthenticationInitial():
return initial(_that);case _AuthenticationLoadingSignIn():
return loadingSignIn(_that);case _AuthenticationSignInSucceed():
return signInSucceed(_that);case _AuthenticationSignInFailed():
return signInFailed(_that);case _AuthenticationAccountNeedVerify():
return accountNeedVerify(_that);case _AuthenticationLoadingSignUp():
return loadingSignUp(_that);case _AuthenticationSignUpSucceed():
return signUpSucceed(_that);case _AuthenticationSignUpFailed():
return signUpFailed(_that);case _AuthenticationLoadingVerifyAccount():
return loadingVerifyAccount(_that);case _AuthenticationVerifyAccountSucceed():
return verifyAccountSucceed(_that);case _AuthenticationRedirectToResetPasswordPage():
return redirectToResetPasswordPage(_that);case _AuthenticationVerifyAccountFailed():
return verifyAccountFailed(_that);case _AuthenticationLoadingResendVerificationCode():
return loadingResendVerificationCode(_that);case _AuthenticationResendVerificationCodeSucceed():
return resendVerificationCodeSucceed(_that);case _AuthenticationResendVerificationCodeFailed():
return resendVerificationCodeFailed(_that);case _AuthenticationRemainingTimeForResend():
return remainingTimeForResend(_that);case _AuthenticationLoadingResetPassword():
return loadingResetPassword(_that);case _AuthenticationResetPasswordSucceed():
return resetPasswordSucceed(_that);case _AuthenticationResetPasswordFailed():
return resetPasswordFailed(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AuthenticationInitial value)?  initial,TResult? Function( _AuthenticationLoadingSignIn value)?  loadingSignIn,TResult? Function( _AuthenticationSignInSucceed value)?  signInSucceed,TResult? Function( _AuthenticationSignInFailed value)?  signInFailed,TResult? Function( _AuthenticationAccountNeedVerify value)?  accountNeedVerify,TResult? Function( _AuthenticationLoadingSignUp value)?  loadingSignUp,TResult? Function( _AuthenticationSignUpSucceed value)?  signUpSucceed,TResult? Function( _AuthenticationSignUpFailed value)?  signUpFailed,TResult? Function( _AuthenticationLoadingVerifyAccount value)?  loadingVerifyAccount,TResult? Function( _AuthenticationVerifyAccountSucceed value)?  verifyAccountSucceed,TResult? Function( _AuthenticationRedirectToResetPasswordPage value)?  redirectToResetPasswordPage,TResult? Function( _AuthenticationVerifyAccountFailed value)?  verifyAccountFailed,TResult? Function( _AuthenticationLoadingResendVerificationCode value)?  loadingResendVerificationCode,TResult? Function( _AuthenticationResendVerificationCodeSucceed value)?  resendVerificationCodeSucceed,TResult? Function( _AuthenticationResendVerificationCodeFailed value)?  resendVerificationCodeFailed,TResult? Function( _AuthenticationRemainingTimeForResend value)?  remainingTimeForResend,TResult? Function( _AuthenticationLoadingResetPassword value)?  loadingResetPassword,TResult? Function( _AuthenticationResetPasswordSucceed value)?  resetPasswordSucceed,TResult? Function( _AuthenticationResetPasswordFailed value)?  resetPasswordFailed,}){
final _that = this;
switch (_that) {
case _AuthenticationInitial() when initial != null:
return initial(_that);case _AuthenticationLoadingSignIn() when loadingSignIn != null:
return loadingSignIn(_that);case _AuthenticationSignInSucceed() when signInSucceed != null:
return signInSucceed(_that);case _AuthenticationSignInFailed() when signInFailed != null:
return signInFailed(_that);case _AuthenticationAccountNeedVerify() when accountNeedVerify != null:
return accountNeedVerify(_that);case _AuthenticationLoadingSignUp() when loadingSignUp != null:
return loadingSignUp(_that);case _AuthenticationSignUpSucceed() when signUpSucceed != null:
return signUpSucceed(_that);case _AuthenticationSignUpFailed() when signUpFailed != null:
return signUpFailed(_that);case _AuthenticationLoadingVerifyAccount() when loadingVerifyAccount != null:
return loadingVerifyAccount(_that);case _AuthenticationVerifyAccountSucceed() when verifyAccountSucceed != null:
return verifyAccountSucceed(_that);case _AuthenticationRedirectToResetPasswordPage() when redirectToResetPasswordPage != null:
return redirectToResetPasswordPage(_that);case _AuthenticationVerifyAccountFailed() when verifyAccountFailed != null:
return verifyAccountFailed(_that);case _AuthenticationLoadingResendVerificationCode() when loadingResendVerificationCode != null:
return loadingResendVerificationCode(_that);case _AuthenticationResendVerificationCodeSucceed() when resendVerificationCodeSucceed != null:
return resendVerificationCodeSucceed(_that);case _AuthenticationResendVerificationCodeFailed() when resendVerificationCodeFailed != null:
return resendVerificationCodeFailed(_that);case _AuthenticationRemainingTimeForResend() when remainingTimeForResend != null:
return remainingTimeForResend(_that);case _AuthenticationLoadingResetPassword() when loadingResetPassword != null:
return loadingResetPassword(_that);case _AuthenticationResetPasswordSucceed() when resetPasswordSucceed != null:
return resetPasswordSucceed(_that);case _AuthenticationResetPasswordFailed() when resetPasswordFailed != null:
return resetPasswordFailed(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingSignIn,TResult Function()?  signInSucceed,TResult Function( GeneralException? generalException)?  signInFailed,TResult Function()?  accountNeedVerify,TResult Function()?  loadingSignUp,TResult Function()?  signUpSucceed,TResult Function( GeneralException? generalException)?  signUpFailed,TResult Function()?  loadingVerifyAccount,TResult Function()?  verifyAccountSucceed,TResult Function()?  redirectToResetPasswordPage,TResult Function( GeneralException? generalException)?  verifyAccountFailed,TResult Function()?  loadingResendVerificationCode,TResult Function( String? message)?  resendVerificationCodeSucceed,TResult Function( GeneralException? generalException)?  resendVerificationCodeFailed,TResult Function( int? remainingTime)?  remainingTimeForResend,TResult Function()?  loadingResetPassword,TResult Function( String? message)?  resetPasswordSucceed,TResult Function( GeneralException? generalException)?  resetPasswordFailed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthenticationInitial() when initial != null:
return initial();case _AuthenticationLoadingSignIn() when loadingSignIn != null:
return loadingSignIn();case _AuthenticationSignInSucceed() when signInSucceed != null:
return signInSucceed();case _AuthenticationSignInFailed() when signInFailed != null:
return signInFailed(_that.generalException);case _AuthenticationAccountNeedVerify() when accountNeedVerify != null:
return accountNeedVerify();case _AuthenticationLoadingSignUp() when loadingSignUp != null:
return loadingSignUp();case _AuthenticationSignUpSucceed() when signUpSucceed != null:
return signUpSucceed();case _AuthenticationSignUpFailed() when signUpFailed != null:
return signUpFailed(_that.generalException);case _AuthenticationLoadingVerifyAccount() when loadingVerifyAccount != null:
return loadingVerifyAccount();case _AuthenticationVerifyAccountSucceed() when verifyAccountSucceed != null:
return verifyAccountSucceed();case _AuthenticationRedirectToResetPasswordPage() when redirectToResetPasswordPage != null:
return redirectToResetPasswordPage();case _AuthenticationVerifyAccountFailed() when verifyAccountFailed != null:
return verifyAccountFailed(_that.generalException);case _AuthenticationLoadingResendVerificationCode() when loadingResendVerificationCode != null:
return loadingResendVerificationCode();case _AuthenticationResendVerificationCodeSucceed() when resendVerificationCodeSucceed != null:
return resendVerificationCodeSucceed(_that.message);case _AuthenticationResendVerificationCodeFailed() when resendVerificationCodeFailed != null:
return resendVerificationCodeFailed(_that.generalException);case _AuthenticationRemainingTimeForResend() when remainingTimeForResend != null:
return remainingTimeForResend(_that.remainingTime);case _AuthenticationLoadingResetPassword() when loadingResetPassword != null:
return loadingResetPassword();case _AuthenticationResetPasswordSucceed() when resetPasswordSucceed != null:
return resetPasswordSucceed(_that.message);case _AuthenticationResetPasswordFailed() when resetPasswordFailed != null:
return resetPasswordFailed(_that.generalException);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingSignIn,required TResult Function()  signInSucceed,required TResult Function( GeneralException? generalException)  signInFailed,required TResult Function()  accountNeedVerify,required TResult Function()  loadingSignUp,required TResult Function()  signUpSucceed,required TResult Function( GeneralException? generalException)  signUpFailed,required TResult Function()  loadingVerifyAccount,required TResult Function()  verifyAccountSucceed,required TResult Function()  redirectToResetPasswordPage,required TResult Function( GeneralException? generalException)  verifyAccountFailed,required TResult Function()  loadingResendVerificationCode,required TResult Function( String? message)  resendVerificationCodeSucceed,required TResult Function( GeneralException? generalException)  resendVerificationCodeFailed,required TResult Function( int? remainingTime)  remainingTimeForResend,required TResult Function()  loadingResetPassword,required TResult Function( String? message)  resetPasswordSucceed,required TResult Function( GeneralException? generalException)  resetPasswordFailed,}) {final _that = this;
switch (_that) {
case _AuthenticationInitial():
return initial();case _AuthenticationLoadingSignIn():
return loadingSignIn();case _AuthenticationSignInSucceed():
return signInSucceed();case _AuthenticationSignInFailed():
return signInFailed(_that.generalException);case _AuthenticationAccountNeedVerify():
return accountNeedVerify();case _AuthenticationLoadingSignUp():
return loadingSignUp();case _AuthenticationSignUpSucceed():
return signUpSucceed();case _AuthenticationSignUpFailed():
return signUpFailed(_that.generalException);case _AuthenticationLoadingVerifyAccount():
return loadingVerifyAccount();case _AuthenticationVerifyAccountSucceed():
return verifyAccountSucceed();case _AuthenticationRedirectToResetPasswordPage():
return redirectToResetPasswordPage();case _AuthenticationVerifyAccountFailed():
return verifyAccountFailed(_that.generalException);case _AuthenticationLoadingResendVerificationCode():
return loadingResendVerificationCode();case _AuthenticationResendVerificationCodeSucceed():
return resendVerificationCodeSucceed(_that.message);case _AuthenticationResendVerificationCodeFailed():
return resendVerificationCodeFailed(_that.generalException);case _AuthenticationRemainingTimeForResend():
return remainingTimeForResend(_that.remainingTime);case _AuthenticationLoadingResetPassword():
return loadingResetPassword();case _AuthenticationResetPasswordSucceed():
return resetPasswordSucceed(_that.message);case _AuthenticationResetPasswordFailed():
return resetPasswordFailed(_that.generalException);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingSignIn,TResult? Function()?  signInSucceed,TResult? Function( GeneralException? generalException)?  signInFailed,TResult? Function()?  accountNeedVerify,TResult? Function()?  loadingSignUp,TResult? Function()?  signUpSucceed,TResult? Function( GeneralException? generalException)?  signUpFailed,TResult? Function()?  loadingVerifyAccount,TResult? Function()?  verifyAccountSucceed,TResult? Function()?  redirectToResetPasswordPage,TResult? Function( GeneralException? generalException)?  verifyAccountFailed,TResult? Function()?  loadingResendVerificationCode,TResult? Function( String? message)?  resendVerificationCodeSucceed,TResult? Function( GeneralException? generalException)?  resendVerificationCodeFailed,TResult? Function( int? remainingTime)?  remainingTimeForResend,TResult? Function()?  loadingResetPassword,TResult? Function( String? message)?  resetPasswordSucceed,TResult? Function( GeneralException? generalException)?  resetPasswordFailed,}) {final _that = this;
switch (_that) {
case _AuthenticationInitial() when initial != null:
return initial();case _AuthenticationLoadingSignIn() when loadingSignIn != null:
return loadingSignIn();case _AuthenticationSignInSucceed() when signInSucceed != null:
return signInSucceed();case _AuthenticationSignInFailed() when signInFailed != null:
return signInFailed(_that.generalException);case _AuthenticationAccountNeedVerify() when accountNeedVerify != null:
return accountNeedVerify();case _AuthenticationLoadingSignUp() when loadingSignUp != null:
return loadingSignUp();case _AuthenticationSignUpSucceed() when signUpSucceed != null:
return signUpSucceed();case _AuthenticationSignUpFailed() when signUpFailed != null:
return signUpFailed(_that.generalException);case _AuthenticationLoadingVerifyAccount() when loadingVerifyAccount != null:
return loadingVerifyAccount();case _AuthenticationVerifyAccountSucceed() when verifyAccountSucceed != null:
return verifyAccountSucceed();case _AuthenticationRedirectToResetPasswordPage() when redirectToResetPasswordPage != null:
return redirectToResetPasswordPage();case _AuthenticationVerifyAccountFailed() when verifyAccountFailed != null:
return verifyAccountFailed(_that.generalException);case _AuthenticationLoadingResendVerificationCode() when loadingResendVerificationCode != null:
return loadingResendVerificationCode();case _AuthenticationResendVerificationCodeSucceed() when resendVerificationCodeSucceed != null:
return resendVerificationCodeSucceed(_that.message);case _AuthenticationResendVerificationCodeFailed() when resendVerificationCodeFailed != null:
return resendVerificationCodeFailed(_that.generalException);case _AuthenticationRemainingTimeForResend() when remainingTimeForResend != null:
return remainingTimeForResend(_that.remainingTime);case _AuthenticationLoadingResetPassword() when loadingResetPassword != null:
return loadingResetPassword();case _AuthenticationResetPasswordSucceed() when resetPasswordSucceed != null:
return resetPasswordSucceed(_that.message);case _AuthenticationResetPasswordFailed() when resetPasswordFailed != null:
return resetPasswordFailed(_that.generalException);case _:
  return null;

}
}

}

/// @nodoc


class _AuthenticationInitial implements AuthenticationState {
  const _AuthenticationInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState.initial()';
}


}




/// @nodoc


class _AuthenticationLoadingSignIn implements AuthenticationState {
  const _AuthenticationLoadingSignIn();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationLoadingSignIn);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState.loadingSignIn()';
}


}




/// @nodoc


class _AuthenticationSignInSucceed implements AuthenticationState {
  const _AuthenticationSignInSucceed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationSignInSucceed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState.signInSucceed()';
}


}




/// @nodoc


class _AuthenticationSignInFailed implements AuthenticationState {
  const _AuthenticationSignInFailed({this.generalException = null});
  

@JsonKey() final  GeneralException? generalException;

/// Create a copy of AuthenticationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticationSignInFailedCopyWith<_AuthenticationSignInFailed> get copyWith => __$AuthenticationSignInFailedCopyWithImpl<_AuthenticationSignInFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationSignInFailed&&(identical(other.generalException, generalException) || other.generalException == generalException));
}


@override
int get hashCode => Object.hash(runtimeType,generalException);

@override
String toString() {
  return 'AuthenticationState.signInFailed(generalException: $generalException)';
}


}

/// @nodoc
abstract mixin class _$AuthenticationSignInFailedCopyWith<$Res> implements $AuthenticationStateCopyWith<$Res> {
  factory _$AuthenticationSignInFailedCopyWith(_AuthenticationSignInFailed value, $Res Function(_AuthenticationSignInFailed) _then) = __$AuthenticationSignInFailedCopyWithImpl;
@useResult
$Res call({
 GeneralException? generalException
});




}
/// @nodoc
class __$AuthenticationSignInFailedCopyWithImpl<$Res>
    implements _$AuthenticationSignInFailedCopyWith<$Res> {
  __$AuthenticationSignInFailedCopyWithImpl(this._self, this._then);

  final _AuthenticationSignInFailed _self;
  final $Res Function(_AuthenticationSignInFailed) _then;

/// Create a copy of AuthenticationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? generalException = freezed,}) {
  return _then(_AuthenticationSignInFailed(
generalException: freezed == generalException ? _self.generalException : generalException // ignore: cast_nullable_to_non_nullable
as GeneralException?,
  ));
}


}

/// @nodoc


class _AuthenticationAccountNeedVerify implements AuthenticationState {
  const _AuthenticationAccountNeedVerify();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationAccountNeedVerify);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState.accountNeedVerify()';
}


}




/// @nodoc


class _AuthenticationLoadingSignUp implements AuthenticationState {
  const _AuthenticationLoadingSignUp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationLoadingSignUp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState.loadingSignUp()';
}


}




/// @nodoc


class _AuthenticationSignUpSucceed implements AuthenticationState {
  const _AuthenticationSignUpSucceed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationSignUpSucceed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState.signUpSucceed()';
}


}




/// @nodoc


class _AuthenticationSignUpFailed implements AuthenticationState {
  const _AuthenticationSignUpFailed({this.generalException = null});
  

@JsonKey() final  GeneralException? generalException;

/// Create a copy of AuthenticationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticationSignUpFailedCopyWith<_AuthenticationSignUpFailed> get copyWith => __$AuthenticationSignUpFailedCopyWithImpl<_AuthenticationSignUpFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationSignUpFailed&&(identical(other.generalException, generalException) || other.generalException == generalException));
}


@override
int get hashCode => Object.hash(runtimeType,generalException);

@override
String toString() {
  return 'AuthenticationState.signUpFailed(generalException: $generalException)';
}


}

/// @nodoc
abstract mixin class _$AuthenticationSignUpFailedCopyWith<$Res> implements $AuthenticationStateCopyWith<$Res> {
  factory _$AuthenticationSignUpFailedCopyWith(_AuthenticationSignUpFailed value, $Res Function(_AuthenticationSignUpFailed) _then) = __$AuthenticationSignUpFailedCopyWithImpl;
@useResult
$Res call({
 GeneralException? generalException
});




}
/// @nodoc
class __$AuthenticationSignUpFailedCopyWithImpl<$Res>
    implements _$AuthenticationSignUpFailedCopyWith<$Res> {
  __$AuthenticationSignUpFailedCopyWithImpl(this._self, this._then);

  final _AuthenticationSignUpFailed _self;
  final $Res Function(_AuthenticationSignUpFailed) _then;

/// Create a copy of AuthenticationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? generalException = freezed,}) {
  return _then(_AuthenticationSignUpFailed(
generalException: freezed == generalException ? _self.generalException : generalException // ignore: cast_nullable_to_non_nullable
as GeneralException?,
  ));
}


}

/// @nodoc


class _AuthenticationLoadingVerifyAccount implements AuthenticationState {
  const _AuthenticationLoadingVerifyAccount();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationLoadingVerifyAccount);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState.loadingVerifyAccount()';
}


}




/// @nodoc


class _AuthenticationVerifyAccountSucceed implements AuthenticationState {
  const _AuthenticationVerifyAccountSucceed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationVerifyAccountSucceed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState.verifyAccountSucceed()';
}


}




/// @nodoc


class _AuthenticationRedirectToResetPasswordPage implements AuthenticationState {
  const _AuthenticationRedirectToResetPasswordPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationRedirectToResetPasswordPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState.redirectToResetPasswordPage()';
}


}




/// @nodoc


class _AuthenticationVerifyAccountFailed implements AuthenticationState {
  const _AuthenticationVerifyAccountFailed({this.generalException = null});
  

@JsonKey() final  GeneralException? generalException;

/// Create a copy of AuthenticationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticationVerifyAccountFailedCopyWith<_AuthenticationVerifyAccountFailed> get copyWith => __$AuthenticationVerifyAccountFailedCopyWithImpl<_AuthenticationVerifyAccountFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationVerifyAccountFailed&&(identical(other.generalException, generalException) || other.generalException == generalException));
}


@override
int get hashCode => Object.hash(runtimeType,generalException);

@override
String toString() {
  return 'AuthenticationState.verifyAccountFailed(generalException: $generalException)';
}


}

/// @nodoc
abstract mixin class _$AuthenticationVerifyAccountFailedCopyWith<$Res> implements $AuthenticationStateCopyWith<$Res> {
  factory _$AuthenticationVerifyAccountFailedCopyWith(_AuthenticationVerifyAccountFailed value, $Res Function(_AuthenticationVerifyAccountFailed) _then) = __$AuthenticationVerifyAccountFailedCopyWithImpl;
@useResult
$Res call({
 GeneralException? generalException
});




}
/// @nodoc
class __$AuthenticationVerifyAccountFailedCopyWithImpl<$Res>
    implements _$AuthenticationVerifyAccountFailedCopyWith<$Res> {
  __$AuthenticationVerifyAccountFailedCopyWithImpl(this._self, this._then);

  final _AuthenticationVerifyAccountFailed _self;
  final $Res Function(_AuthenticationVerifyAccountFailed) _then;

/// Create a copy of AuthenticationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? generalException = freezed,}) {
  return _then(_AuthenticationVerifyAccountFailed(
generalException: freezed == generalException ? _self.generalException : generalException // ignore: cast_nullable_to_non_nullable
as GeneralException?,
  ));
}


}

/// @nodoc


class _AuthenticationLoadingResendVerificationCode implements AuthenticationState {
  const _AuthenticationLoadingResendVerificationCode();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationLoadingResendVerificationCode);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState.loadingResendVerificationCode()';
}


}




/// @nodoc


class _AuthenticationResendVerificationCodeSucceed implements AuthenticationState {
  const _AuthenticationResendVerificationCodeSucceed({this.message = null});
  

@JsonKey() final  String? message;

/// Create a copy of AuthenticationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticationResendVerificationCodeSucceedCopyWith<_AuthenticationResendVerificationCodeSucceed> get copyWith => __$AuthenticationResendVerificationCodeSucceedCopyWithImpl<_AuthenticationResendVerificationCodeSucceed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationResendVerificationCodeSucceed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthenticationState.resendVerificationCodeSucceed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$AuthenticationResendVerificationCodeSucceedCopyWith<$Res> implements $AuthenticationStateCopyWith<$Res> {
  factory _$AuthenticationResendVerificationCodeSucceedCopyWith(_AuthenticationResendVerificationCodeSucceed value, $Res Function(_AuthenticationResendVerificationCodeSucceed) _then) = __$AuthenticationResendVerificationCodeSucceedCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$AuthenticationResendVerificationCodeSucceedCopyWithImpl<$Res>
    implements _$AuthenticationResendVerificationCodeSucceedCopyWith<$Res> {
  __$AuthenticationResendVerificationCodeSucceedCopyWithImpl(this._self, this._then);

  final _AuthenticationResendVerificationCodeSucceed _self;
  final $Res Function(_AuthenticationResendVerificationCodeSucceed) _then;

/// Create a copy of AuthenticationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_AuthenticationResendVerificationCodeSucceed(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _AuthenticationResendVerificationCodeFailed implements AuthenticationState {
  const _AuthenticationResendVerificationCodeFailed({this.generalException = null});
  

@JsonKey() final  GeneralException? generalException;

/// Create a copy of AuthenticationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticationResendVerificationCodeFailedCopyWith<_AuthenticationResendVerificationCodeFailed> get copyWith => __$AuthenticationResendVerificationCodeFailedCopyWithImpl<_AuthenticationResendVerificationCodeFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationResendVerificationCodeFailed&&(identical(other.generalException, generalException) || other.generalException == generalException));
}


@override
int get hashCode => Object.hash(runtimeType,generalException);

@override
String toString() {
  return 'AuthenticationState.resendVerificationCodeFailed(generalException: $generalException)';
}


}

/// @nodoc
abstract mixin class _$AuthenticationResendVerificationCodeFailedCopyWith<$Res> implements $AuthenticationStateCopyWith<$Res> {
  factory _$AuthenticationResendVerificationCodeFailedCopyWith(_AuthenticationResendVerificationCodeFailed value, $Res Function(_AuthenticationResendVerificationCodeFailed) _then) = __$AuthenticationResendVerificationCodeFailedCopyWithImpl;
@useResult
$Res call({
 GeneralException? generalException
});




}
/// @nodoc
class __$AuthenticationResendVerificationCodeFailedCopyWithImpl<$Res>
    implements _$AuthenticationResendVerificationCodeFailedCopyWith<$Res> {
  __$AuthenticationResendVerificationCodeFailedCopyWithImpl(this._self, this._then);

  final _AuthenticationResendVerificationCodeFailed _self;
  final $Res Function(_AuthenticationResendVerificationCodeFailed) _then;

/// Create a copy of AuthenticationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? generalException = freezed,}) {
  return _then(_AuthenticationResendVerificationCodeFailed(
generalException: freezed == generalException ? _self.generalException : generalException // ignore: cast_nullable_to_non_nullable
as GeneralException?,
  ));
}


}

/// @nodoc


class _AuthenticationRemainingTimeForResend implements AuthenticationState {
  const _AuthenticationRemainingTimeForResend({this.remainingTime = 0});
  

@JsonKey() final  int? remainingTime;

/// Create a copy of AuthenticationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticationRemainingTimeForResendCopyWith<_AuthenticationRemainingTimeForResend> get copyWith => __$AuthenticationRemainingTimeForResendCopyWithImpl<_AuthenticationRemainingTimeForResend>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationRemainingTimeForResend&&(identical(other.remainingTime, remainingTime) || other.remainingTime == remainingTime));
}


@override
int get hashCode => Object.hash(runtimeType,remainingTime);

@override
String toString() {
  return 'AuthenticationState.remainingTimeForResend(remainingTime: $remainingTime)';
}


}

/// @nodoc
abstract mixin class _$AuthenticationRemainingTimeForResendCopyWith<$Res> implements $AuthenticationStateCopyWith<$Res> {
  factory _$AuthenticationRemainingTimeForResendCopyWith(_AuthenticationRemainingTimeForResend value, $Res Function(_AuthenticationRemainingTimeForResend) _then) = __$AuthenticationRemainingTimeForResendCopyWithImpl;
@useResult
$Res call({
 int? remainingTime
});




}
/// @nodoc
class __$AuthenticationRemainingTimeForResendCopyWithImpl<$Res>
    implements _$AuthenticationRemainingTimeForResendCopyWith<$Res> {
  __$AuthenticationRemainingTimeForResendCopyWithImpl(this._self, this._then);

  final _AuthenticationRemainingTimeForResend _self;
  final $Res Function(_AuthenticationRemainingTimeForResend) _then;

/// Create a copy of AuthenticationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? remainingTime = freezed,}) {
  return _then(_AuthenticationRemainingTimeForResend(
remainingTime: freezed == remainingTime ? _self.remainingTime : remainingTime // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _AuthenticationLoadingResetPassword implements AuthenticationState {
  const _AuthenticationLoadingResetPassword();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationLoadingResetPassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState.loadingResetPassword()';
}


}




/// @nodoc


class _AuthenticationResetPasswordSucceed implements AuthenticationState {
  const _AuthenticationResetPasswordSucceed({this.message = null});
  

@JsonKey() final  String? message;

/// Create a copy of AuthenticationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticationResetPasswordSucceedCopyWith<_AuthenticationResetPasswordSucceed> get copyWith => __$AuthenticationResetPasswordSucceedCopyWithImpl<_AuthenticationResetPasswordSucceed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationResetPasswordSucceed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthenticationState.resetPasswordSucceed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$AuthenticationResetPasswordSucceedCopyWith<$Res> implements $AuthenticationStateCopyWith<$Res> {
  factory _$AuthenticationResetPasswordSucceedCopyWith(_AuthenticationResetPasswordSucceed value, $Res Function(_AuthenticationResetPasswordSucceed) _then) = __$AuthenticationResetPasswordSucceedCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$AuthenticationResetPasswordSucceedCopyWithImpl<$Res>
    implements _$AuthenticationResetPasswordSucceedCopyWith<$Res> {
  __$AuthenticationResetPasswordSucceedCopyWithImpl(this._self, this._then);

  final _AuthenticationResetPasswordSucceed _self;
  final $Res Function(_AuthenticationResetPasswordSucceed) _then;

/// Create a copy of AuthenticationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_AuthenticationResetPasswordSucceed(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _AuthenticationResetPasswordFailed implements AuthenticationState {
  const _AuthenticationResetPasswordFailed({this.generalException = null});
  

@JsonKey() final  GeneralException? generalException;

/// Create a copy of AuthenticationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticationResetPasswordFailedCopyWith<_AuthenticationResetPasswordFailed> get copyWith => __$AuthenticationResetPasswordFailedCopyWithImpl<_AuthenticationResetPasswordFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationResetPasswordFailed&&(identical(other.generalException, generalException) || other.generalException == generalException));
}


@override
int get hashCode => Object.hash(runtimeType,generalException);

@override
String toString() {
  return 'AuthenticationState.resetPasswordFailed(generalException: $generalException)';
}


}

/// @nodoc
abstract mixin class _$AuthenticationResetPasswordFailedCopyWith<$Res> implements $AuthenticationStateCopyWith<$Res> {
  factory _$AuthenticationResetPasswordFailedCopyWith(_AuthenticationResetPasswordFailed value, $Res Function(_AuthenticationResetPasswordFailed) _then) = __$AuthenticationResetPasswordFailedCopyWithImpl;
@useResult
$Res call({
 GeneralException? generalException
});




}
/// @nodoc
class __$AuthenticationResetPasswordFailedCopyWithImpl<$Res>
    implements _$AuthenticationResetPasswordFailedCopyWith<$Res> {
  __$AuthenticationResetPasswordFailedCopyWithImpl(this._self, this._then);

  final _AuthenticationResetPasswordFailed _self;
  final $Res Function(_AuthenticationResetPasswordFailed) _then;

/// Create a copy of AuthenticationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? generalException = freezed,}) {
  return _then(_AuthenticationResetPasswordFailed(
generalException: freezed == generalException ? _self.generalException : generalException // ignore: cast_nullable_to_non_nullable
as GeneralException?,
  ));
}


}

// dart format on
