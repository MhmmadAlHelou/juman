// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_otp_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileOtpState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileOtpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileOtpState()';
}


}

/// @nodoc
class $ProfileOtpStateCopyWith<$Res>  {
$ProfileOtpStateCopyWith(ProfileOtpState _, $Res Function(ProfileOtpState) __);
}


/// Adds pattern-matching-related methods to [ProfileOtpState].
extension ProfileOtpStatePatterns on ProfileOtpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Succeeded value)?  succeeded,TResult Function( _Failed value)?  failed,TResult Function( _Resending value)?  resending,TResult Function( _ResendSucceeded value)?  resendSucceeded,TResult Function( _ResendFailed value)?  resendFailed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Succeeded() when succeeded != null:
return succeeded(_that);case _Failed() when failed != null:
return failed(_that);case _Resending() when resending != null:
return resending(_that);case _ResendSucceeded() when resendSucceeded != null:
return resendSucceeded(_that);case _ResendFailed() when resendFailed != null:
return resendFailed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Succeeded value)  succeeded,required TResult Function( _Failed value)  failed,required TResult Function( _Resending value)  resending,required TResult Function( _ResendSucceeded value)  resendSucceeded,required TResult Function( _ResendFailed value)  resendFailed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Succeeded():
return succeeded(_that);case _Failed():
return failed(_that);case _Resending():
return resending(_that);case _ResendSucceeded():
return resendSucceeded(_that);case _ResendFailed():
return resendFailed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Succeeded value)?  succeeded,TResult? Function( _Failed value)?  failed,TResult? Function( _Resending value)?  resending,TResult? Function( _ResendSucceeded value)?  resendSucceeded,TResult? Function( _ResendFailed value)?  resendFailed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Succeeded() when succeeded != null:
return succeeded(_that);case _Failed() when failed != null:
return failed(_that);case _Resending() when resending != null:
return resending(_that);case _ResendSucceeded() when resendSucceeded != null:
return resendSucceeded(_that);case _ResendFailed() when resendFailed != null:
return resendFailed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  succeeded,TResult Function( GeneralException? exception)?  failed,TResult Function()?  resending,TResult Function()?  resendSucceeded,TResult Function( GeneralException? exception)?  resendFailed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Succeeded() when succeeded != null:
return succeeded();case _Failed() when failed != null:
return failed(_that.exception);case _Resending() when resending != null:
return resending();case _ResendSucceeded() when resendSucceeded != null:
return resendSucceeded();case _ResendFailed() when resendFailed != null:
return resendFailed(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  succeeded,required TResult Function( GeneralException? exception)  failed,required TResult Function()  resending,required TResult Function()  resendSucceeded,required TResult Function( GeneralException? exception)  resendFailed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Succeeded():
return succeeded();case _Failed():
return failed(_that.exception);case _Resending():
return resending();case _ResendSucceeded():
return resendSucceeded();case _ResendFailed():
return resendFailed(_that.exception);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  succeeded,TResult? Function( GeneralException? exception)?  failed,TResult? Function()?  resending,TResult? Function()?  resendSucceeded,TResult? Function( GeneralException? exception)?  resendFailed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Succeeded() when succeeded != null:
return succeeded();case _Failed() when failed != null:
return failed(_that.exception);case _Resending() when resending != null:
return resending();case _ResendSucceeded() when resendSucceeded != null:
return resendSucceeded();case _ResendFailed() when resendFailed != null:
return resendFailed(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ProfileOtpState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileOtpState.initial()';
}


}




/// @nodoc


class _Loading implements ProfileOtpState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileOtpState.loading()';
}


}




/// @nodoc


class _Succeeded implements ProfileOtpState {
  const _Succeeded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Succeeded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileOtpState.succeeded()';
}


}




/// @nodoc


class _Failed implements ProfileOtpState {
  const _Failed(this.exception);
  

 final  GeneralException? exception;

/// Create a copy of ProfileOtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailedCopyWith<_Failed> get copyWith => __$FailedCopyWithImpl<_Failed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failed&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'ProfileOtpState.failed(exception: $exception)';
}


}

/// @nodoc
abstract mixin class _$FailedCopyWith<$Res> implements $ProfileOtpStateCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) _then) = __$FailedCopyWithImpl;
@useResult
$Res call({
 GeneralException? exception
});




}
/// @nodoc
class __$FailedCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(this._self, this._then);

  final _Failed _self;
  final $Res Function(_Failed) _then;

/// Create a copy of ProfileOtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(_Failed(
freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as GeneralException?,
  ));
}


}

/// @nodoc


class _Resending implements ProfileOtpState {
  const _Resending();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Resending);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileOtpState.resending()';
}


}




/// @nodoc


class _ResendSucceeded implements ProfileOtpState {
  const _ResendSucceeded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendSucceeded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileOtpState.resendSucceeded()';
}


}




/// @nodoc


class _ResendFailed implements ProfileOtpState {
  const _ResendFailed(this.exception);
  

 final  GeneralException? exception;

/// Create a copy of ProfileOtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResendFailedCopyWith<_ResendFailed> get copyWith => __$ResendFailedCopyWithImpl<_ResendFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendFailed&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'ProfileOtpState.resendFailed(exception: $exception)';
}


}

/// @nodoc
abstract mixin class _$ResendFailedCopyWith<$Res> implements $ProfileOtpStateCopyWith<$Res> {
  factory _$ResendFailedCopyWith(_ResendFailed value, $Res Function(_ResendFailed) _then) = __$ResendFailedCopyWithImpl;
@useResult
$Res call({
 GeneralException? exception
});




}
/// @nodoc
class __$ResendFailedCopyWithImpl<$Res>
    implements _$ResendFailedCopyWith<$Res> {
  __$ResendFailedCopyWithImpl(this._self, this._then);

  final _ResendFailed _self;
  final $Res Function(_ResendFailed) _then;

/// Create a copy of ProfileOtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(_ResendFailed(
freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as GeneralException?,
  ));
}


}

// dart format on
