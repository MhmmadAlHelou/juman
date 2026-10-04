// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_change_request_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileChangeRequestState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileChangeRequestState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileChangeRequestState()';
}


}

/// @nodoc
class $ProfileChangeRequestStateCopyWith<$Res>  {
$ProfileChangeRequestStateCopyWith(ProfileChangeRequestState _, $Res Function(ProfileChangeRequestState) __);
}


/// Adds pattern-matching-related methods to [ProfileChangeRequestState].
extension ProfileChangeRequestStatePatterns on ProfileChangeRequestState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _PasswordRequested value)?  passwordRequested,TResult Function( _EmailRequested value)?  emailRequested,TResult Function( _Failed value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _PasswordRequested() when passwordRequested != null:
return passwordRequested(_that);case _EmailRequested() when emailRequested != null:
return emailRequested(_that);case _Failed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _PasswordRequested value)  passwordRequested,required TResult Function( _EmailRequested value)  emailRequested,required TResult Function( _Failed value)  failed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _PasswordRequested():
return passwordRequested(_that);case _EmailRequested():
return emailRequested(_that);case _Failed():
return failed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _PasswordRequested value)?  passwordRequested,TResult? Function( _EmailRequested value)?  emailRequested,TResult? Function( _Failed value)?  failed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _PasswordRequested() when passwordRequested != null:
return passwordRequested(_that);case _EmailRequested() when emailRequested != null:
return emailRequested(_that);case _Failed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  passwordRequested,TResult Function( String newEmail)?  emailRequested,TResult Function( GeneralException? exception)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _PasswordRequested() when passwordRequested != null:
return passwordRequested();case _EmailRequested() when emailRequested != null:
return emailRequested(_that.newEmail);case _Failed() when failed != null:
return failed(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  passwordRequested,required TResult Function( String newEmail)  emailRequested,required TResult Function( GeneralException? exception)  failed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _PasswordRequested():
return passwordRequested();case _EmailRequested():
return emailRequested(_that.newEmail);case _Failed():
return failed(_that.exception);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  passwordRequested,TResult? Function( String newEmail)?  emailRequested,TResult? Function( GeneralException? exception)?  failed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _PasswordRequested() when passwordRequested != null:
return passwordRequested();case _EmailRequested() when emailRequested != null:
return emailRequested(_that.newEmail);case _Failed() when failed != null:
return failed(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ProfileChangeRequestState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileChangeRequestState.initial()';
}


}




/// @nodoc


class _Loading implements ProfileChangeRequestState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileChangeRequestState.loading()';
}


}




/// @nodoc


class _PasswordRequested implements ProfileChangeRequestState {
  const _PasswordRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileChangeRequestState.passwordRequested()';
}


}




/// @nodoc


class _EmailRequested implements ProfileChangeRequestState {
  const _EmailRequested(this.newEmail);
  

 final  String newEmail;

/// Create a copy of ProfileChangeRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailRequestedCopyWith<_EmailRequested> get copyWith => __$EmailRequestedCopyWithImpl<_EmailRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailRequested&&(identical(other.newEmail, newEmail) || other.newEmail == newEmail));
}


@override
int get hashCode => Object.hash(runtimeType,newEmail);

@override
String toString() {
  return 'ProfileChangeRequestState.emailRequested(newEmail: $newEmail)';
}


}

/// @nodoc
abstract mixin class _$EmailRequestedCopyWith<$Res> implements $ProfileChangeRequestStateCopyWith<$Res> {
  factory _$EmailRequestedCopyWith(_EmailRequested value, $Res Function(_EmailRequested) _then) = __$EmailRequestedCopyWithImpl;
@useResult
$Res call({
 String newEmail
});




}
/// @nodoc
class __$EmailRequestedCopyWithImpl<$Res>
    implements _$EmailRequestedCopyWith<$Res> {
  __$EmailRequestedCopyWithImpl(this._self, this._then);

  final _EmailRequested _self;
  final $Res Function(_EmailRequested) _then;

/// Create a copy of ProfileChangeRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? newEmail = null,}) {
  return _then(_EmailRequested(
null == newEmail ? _self.newEmail : newEmail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Failed implements ProfileChangeRequestState {
  const _Failed(this.exception);
  

 final  GeneralException? exception;

/// Create a copy of ProfileChangeRequestState
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
  return 'ProfileChangeRequestState.failed(exception: $exception)';
}


}

/// @nodoc
abstract mixin class _$FailedCopyWith<$Res> implements $ProfileChangeRequestStateCopyWith<$Res> {
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

/// Create a copy of ProfileChangeRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(_Failed(
freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as GeneralException?,
  ));
}


}

// dart format on
