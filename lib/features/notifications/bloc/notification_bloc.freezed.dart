// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'notification_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//   'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
// );

// /// @nodoc
// mixin _$NotificationEvent {
//   bool get isRefresh => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(bool isRefresh) getNotifications,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(bool isRefresh)? getNotifications,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(bool isRefresh)? getNotifications,
//     required TResult orElse(),
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetNotifications value) getNotifications,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetNotifications value)? getNotifications,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetNotifications value)? getNotifications,
//     required TResult orElse(),
//   }) => throw _privateConstructorUsedError;

//   /// Create a copy of NotificationEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   $NotificationEventCopyWith<NotificationEvent> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $NotificationEventCopyWith<$Res> {
//   factory $NotificationEventCopyWith(
//     NotificationEvent value,
//     $Res Function(NotificationEvent) then,
//   ) = _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
//   @useResult
//   $Res call({bool isRefresh});
// }

// /// @nodoc
// class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
//     implements $NotificationEventCopyWith<$Res> {
//   _$NotificationEventCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of NotificationEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? isRefresh = null}) {
//     return _then(
//       _value.copyWith(
//             isRefresh:
//                 null == isRefresh
//                     ? _value.isRefresh
//                     : isRefresh // ignore: cast_nullable_to_non_nullable
//                         as bool,
//           )
//           as $Val,
//     );
//   }
// }

// /// @nodoc
// abstract class _$$GetNotificationsImplCopyWith<$Res>
//     implements $NotificationEventCopyWith<$Res> {
//   factory _$$GetNotificationsImplCopyWith(
//     _$GetNotificationsImpl value,
//     $Res Function(_$GetNotificationsImpl) then,
//   ) = __$$GetNotificationsImplCopyWithImpl<$Res>;
//   @override
//   @useResult
//   $Res call({bool isRefresh});
// }

// /// @nodoc
// class __$$GetNotificationsImplCopyWithImpl<$Res>
//     extends _$NotificationEventCopyWithImpl<$Res, _$GetNotificationsImpl>
//     implements _$$GetNotificationsImplCopyWith<$Res> {
//   __$$GetNotificationsImplCopyWithImpl(
//     _$GetNotificationsImpl _value,
//     $Res Function(_$GetNotificationsImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of NotificationEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? isRefresh = null}) {
//     return _then(
//       _$GetNotificationsImpl(
//         isRefresh:
//             null == isRefresh
//                 ? _value.isRefresh
//                 : isRefresh // ignore: cast_nullable_to_non_nullable
//                     as bool,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$GetNotificationsImpl implements _GetNotifications {
//   const _$GetNotificationsImpl({this.isRefresh = false});

//   @override
//   @JsonKey()
//   final bool isRefresh;

//   @override
//   String toString() {
//     return 'NotificationEvent.getNotifications(isRefresh: $isRefresh)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$GetNotificationsImpl &&
//             (identical(other.isRefresh, isRefresh) ||
//                 other.isRefresh == isRefresh));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, isRefresh);

//   /// Create a copy of NotificationEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$GetNotificationsImplCopyWith<_$GetNotificationsImpl> get copyWith =>
//       __$$GetNotificationsImplCopyWithImpl<_$GetNotificationsImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(bool isRefresh) getNotifications,
//   }) {
//     return getNotifications(isRefresh);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(bool isRefresh)? getNotifications,
//   }) {
//     return getNotifications?.call(isRefresh);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(bool isRefresh)? getNotifications,
//     required TResult orElse(),
//   }) {
//     if (getNotifications != null) {
//       return getNotifications(isRefresh);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetNotifications value) getNotifications,
//   }) {
//     return getNotifications(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetNotifications value)? getNotifications,
//   }) {
//     return getNotifications?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetNotifications value)? getNotifications,
//     required TResult orElse(),
//   }) {
//     if (getNotifications != null) {
//       return getNotifications(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GetNotifications implements NotificationEvent {
//   const factory _GetNotifications({final bool isRefresh}) =
//       _$GetNotificationsImpl;

//   @override
//   bool get isRefresh;

//   /// Create a copy of NotificationEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @override
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$GetNotificationsImplCopyWith<_$GetNotificationsImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// mixin _$NotificationState {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(
//       List<NotificationData> notifications,
//       bool hasNext,
//     )
//     succeed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() guest,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(List<NotificationData> notifications, bool hasNext)?
//     succeed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? guest,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(List<NotificationData> notifications, bool hasNext)?
//     succeed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? guest,
//     required TResult orElse(),
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_Guest value) guest,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_Guest value)? guest,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_Guest value)? guest,
//     required TResult orElse(),
//   }) => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $NotificationStateCopyWith<$Res> {
//   factory $NotificationStateCopyWith(
//     NotificationState value,
//     $Res Function(NotificationState) then,
//   ) = _$NotificationStateCopyWithImpl<$Res, NotificationState>;
// }

// /// @nodoc
// class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
//     implements $NotificationStateCopyWith<$Res> {
//   _$NotificationStateCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of NotificationState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc
// abstract class _$$InitialImplCopyWith<$Res> {
//   factory _$$InitialImplCopyWith(
//     _$InitialImpl value,
//     $Res Function(_$InitialImpl) then,
//   ) = __$$InitialImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$InitialImplCopyWithImpl<$Res>
//     extends _$NotificationStateCopyWithImpl<$Res, _$InitialImpl>
//     implements _$$InitialImplCopyWith<$Res> {
//   __$$InitialImplCopyWithImpl(
//     _$InitialImpl _value,
//     $Res Function(_$InitialImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of NotificationState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$InitialImpl implements _Initial {
//   const _$InitialImpl();

//   @override
//   String toString() {
//     return 'NotificationState.initial()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$InitialImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(
//       List<NotificationData> notifications,
//       bool hasNext,
//     )
//     succeed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() guest,
//   }) {
//     return initial();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(List<NotificationData> notifications, bool hasNext)?
//     succeed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? guest,
//   }) {
//     return initial?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(List<NotificationData> notifications, bool hasNext)?
//     succeed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? guest,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_Guest value) guest,
//   }) {
//     return initial(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_Guest value)? guest,
//   }) {
//     return initial?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_Guest value)? guest,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Initial implements NotificationState {
//   const factory _Initial() = _$InitialImpl;
// }

// /// @nodoc
// abstract class _$$LoadingImplCopyWith<$Res> {
//   factory _$$LoadingImplCopyWith(
//     _$LoadingImpl value,
//     $Res Function(_$LoadingImpl) then,
//   ) = __$$LoadingImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$LoadingImplCopyWithImpl<$Res>
//     extends _$NotificationStateCopyWithImpl<$Res, _$LoadingImpl>
//     implements _$$LoadingImplCopyWith<$Res> {
//   __$$LoadingImplCopyWithImpl(
//     _$LoadingImpl _value,
//     $Res Function(_$LoadingImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of NotificationState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingImpl implements _Loading {
//   const _$LoadingImpl();

//   @override
//   String toString() {
//     return 'NotificationState.loading()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$LoadingImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(
//       List<NotificationData> notifications,
//       bool hasNext,
//     )
//     succeed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() guest,
//   }) {
//     return loading();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(List<NotificationData> notifications, bool hasNext)?
//     succeed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? guest,
//   }) {
//     return loading?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(List<NotificationData> notifications, bool hasNext)?
//     succeed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? guest,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_Guest value) guest,
//   }) {
//     return loading(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_Guest value)? guest,
//   }) {
//     return loading?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_Guest value)? guest,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Loading implements NotificationState {
//   const factory _Loading() = _$LoadingImpl;
// }

// /// @nodoc
// abstract class _$$SucceedImplCopyWith<$Res> {
//   factory _$$SucceedImplCopyWith(
//     _$SucceedImpl value,
//     $Res Function(_$SucceedImpl) then,
//   ) = __$$SucceedImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({List<NotificationData> notifications, bool hasNext});
// }

// /// @nodoc
// class __$$SucceedImplCopyWithImpl<$Res>
//     extends _$NotificationStateCopyWithImpl<$Res, _$SucceedImpl>
//     implements _$$SucceedImplCopyWith<$Res> {
//   __$$SucceedImplCopyWithImpl(
//     _$SucceedImpl _value,
//     $Res Function(_$SucceedImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of NotificationState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? notifications = null, Object? hasNext = null}) {
//     return _then(
//       _$SucceedImpl(
//         notifications:
//             null == notifications
//                 ? _value._notifications
//                 : notifications // ignore: cast_nullable_to_non_nullable
//                     as List<NotificationData>,
//         hasNext:
//             null == hasNext
//                 ? _value.hasNext
//                 : hasNext // ignore: cast_nullable_to_non_nullable
//                     as bool,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$SucceedImpl implements _Succeed {
//   const _$SucceedImpl({
//     required final List<NotificationData> notifications,
//     required this.hasNext,
//   }) : _notifications = notifications;

//   final List<NotificationData> _notifications;
//   @override
//   List<NotificationData> get notifications {
//     if (_notifications is EqualUnmodifiableListView) return _notifications;
//     // ignore: implicit_dynamic_type
//     return EqualUnmodifiableListView(_notifications);
//   }

//   @override
//   final bool hasNext;

//   @override
//   String toString() {
//     return 'NotificationState.succeed(notifications: $notifications, hasNext: $hasNext)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$SucceedImpl &&
//             const DeepCollectionEquality().equals(
//               other._notifications,
//               _notifications,
//             ) &&
//             (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
//   }

//   @override
//   int get hashCode => Object.hash(
//     runtimeType,
//     const DeepCollectionEquality().hash(_notifications),
//     hasNext,
//   );

//   /// Create a copy of NotificationState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$SucceedImplCopyWith<_$SucceedImpl> get copyWith =>
//       __$$SucceedImplCopyWithImpl<_$SucceedImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(
//       List<NotificationData> notifications,
//       bool hasNext,
//     )
//     succeed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() guest,
//   }) {
//     return succeed(notifications, hasNext);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(List<NotificationData> notifications, bool hasNext)?
//     succeed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? guest,
//   }) {
//     return succeed?.call(notifications, hasNext);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(List<NotificationData> notifications, bool hasNext)?
//     succeed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? guest,
//     required TResult orElse(),
//   }) {
//     if (succeed != null) {
//       return succeed(notifications, hasNext);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_Guest value) guest,
//   }) {
//     return succeed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_Guest value)? guest,
//   }) {
//     return succeed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_Guest value)? guest,
//     required TResult orElse(),
//   }) {
//     if (succeed != null) {
//       return succeed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Succeed implements NotificationState {
//   const factory _Succeed({
//     required final List<NotificationData> notifications,
//     required final bool hasNext,
//   }) = _$SucceedImpl;

//   List<NotificationData> get notifications;
//   bool get hasNext;

//   /// Create a copy of NotificationState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$SucceedImplCopyWith<_$SucceedImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$FailedImplCopyWith<$Res> {
//   factory _$$FailedImplCopyWith(
//     _$FailedImpl value,
//     $Res Function(_$FailedImpl) then,
//   ) = __$$FailedImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({GeneralException? generalException});
// }

// /// @nodoc
// class __$$FailedImplCopyWithImpl<$Res>
//     extends _$NotificationStateCopyWithImpl<$Res, _$FailedImpl>
//     implements _$$FailedImplCopyWith<$Res> {
//   __$$FailedImplCopyWithImpl(
//     _$FailedImpl _value,
//     $Res Function(_$FailedImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of NotificationState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? generalException = freezed}) {
//     return _then(
//       _$FailedImpl(
//         generalException:
//             freezed == generalException
//                 ? _value.generalException
//                 : generalException // ignore: cast_nullable_to_non_nullable
//                     as GeneralException?,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$FailedImpl implements _Failed {
//   const _$FailedImpl({this.generalException = null});

//   @override
//   @JsonKey()
//   final GeneralException? generalException;

//   @override
//   String toString() {
//     return 'NotificationState.failed(generalException: $generalException)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$FailedImpl &&
//             (identical(other.generalException, generalException) ||
//                 other.generalException == generalException));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, generalException);

//   /// Create a copy of NotificationState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
//       __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(
//       List<NotificationData> notifications,
//       bool hasNext,
//     )
//     succeed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() guest,
//   }) {
//     return failed(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(List<NotificationData> notifications, bool hasNext)?
//     succeed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? guest,
//   }) {
//     return failed?.call(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(List<NotificationData> notifications, bool hasNext)?
//     succeed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? guest,
//     required TResult orElse(),
//   }) {
//     if (failed != null) {
//       return failed(generalException);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_Guest value) guest,
//   }) {
//     return failed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_Guest value)? guest,
//   }) {
//     return failed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_Guest value)? guest,
//     required TResult orElse(),
//   }) {
//     if (failed != null) {
//       return failed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Failed implements NotificationState {
//   const factory _Failed({final GeneralException? generalException}) =
//       _$FailedImpl;

//   GeneralException? get generalException;

//   /// Create a copy of NotificationState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$GuestImplCopyWith<$Res> {
//   factory _$$GuestImplCopyWith(
//     _$GuestImpl value,
//     $Res Function(_$GuestImpl) then,
//   ) = __$$GuestImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$GuestImplCopyWithImpl<$Res>
//     extends _$NotificationStateCopyWithImpl<$Res, _$GuestImpl>
//     implements _$$GuestImplCopyWith<$Res> {
//   __$$GuestImplCopyWithImpl(
//     _$GuestImpl _value,
//     $Res Function(_$GuestImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of NotificationState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$GuestImpl implements _Guest {
//   const _$GuestImpl();

//   @override
//   String toString() {
//     return 'NotificationState.guest()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$GuestImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(
//       List<NotificationData> notifications,
//       bool hasNext,
//     )
//     succeed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() guest,
//   }) {
//     return guest();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(List<NotificationData> notifications, bool hasNext)?
//     succeed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? guest,
//   }) {
//     return guest?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(List<NotificationData> notifications, bool hasNext)?
//     succeed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? guest,
//     required TResult orElse(),
//   }) {
//     if (guest != null) {
//       return guest();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_Guest value) guest,
//   }) {
//     return guest(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_Guest value)? guest,
//   }) {
//     return guest?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_Guest value)? guest,
//     required TResult orElse(),
//   }) {
//     if (guest != null) {
//       return guest(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Guest implements NotificationState {
//   const factory _Guest() = _$GuestImpl;
// }
