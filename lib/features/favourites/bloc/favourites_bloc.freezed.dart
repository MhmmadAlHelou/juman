// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'favourites_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//   'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
// );

// /// @nodoc
// mixin _$FavouritesEvent {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(int page) getAllFavourites,
//     required TResult Function(String orderId) createFavourite,
//     required TResult Function(String orderId) deleteFavourite,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(int page)? getAllFavourites,
//     TResult? Function(String orderId)? createFavourite,
//     TResult? Function(String orderId)? deleteFavourite,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(int page)? getAllFavourites,
//     TResult Function(String orderId)? createFavourite,
//     TResult Function(String orderId)? deleteFavourite,
//     required TResult orElse(),
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetAllFavourites value) getAllFavourites,
//     required TResult Function(_CreateFavourite value) createFavourite,
//     required TResult Function(_DeleteFavourite value) deleteFavourite,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetAllFavourites value)? getAllFavourites,
//     TResult? Function(_CreateFavourite value)? createFavourite,
//     TResult? Function(_DeleteFavourite value)? deleteFavourite,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetAllFavourites value)? getAllFavourites,
//     TResult Function(_CreateFavourite value)? createFavourite,
//     TResult Function(_DeleteFavourite value)? deleteFavourite,
//     required TResult orElse(),
//   }) => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $FavouritesEventCopyWith<$Res> {
//   factory $FavouritesEventCopyWith(
//     FavouritesEvent value,
//     $Res Function(FavouritesEvent) then,
//   ) = _$FavouritesEventCopyWithImpl<$Res, FavouritesEvent>;
// }

// /// @nodoc
// class _$FavouritesEventCopyWithImpl<$Res, $Val extends FavouritesEvent>
//     implements $FavouritesEventCopyWith<$Res> {
//   _$FavouritesEventCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of FavouritesEvent
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc
// abstract class _$$GetAllFavouritesImplCopyWith<$Res> {
//   factory _$$GetAllFavouritesImplCopyWith(
//     _$GetAllFavouritesImpl value,
//     $Res Function(_$GetAllFavouritesImpl) then,
//   ) = __$$GetAllFavouritesImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({int page});
// }

// /// @nodoc
// class __$$GetAllFavouritesImplCopyWithImpl<$Res>
//     extends _$FavouritesEventCopyWithImpl<$Res, _$GetAllFavouritesImpl>
//     implements _$$GetAllFavouritesImplCopyWith<$Res> {
//   __$$GetAllFavouritesImplCopyWithImpl(
//     _$GetAllFavouritesImpl _value,
//     $Res Function(_$GetAllFavouritesImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of FavouritesEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? page = null}) {
//     return _then(
//       _$GetAllFavouritesImpl(
//         page:
//             null == page
//                 ? _value.page
//                 : page // ignore: cast_nullable_to_non_nullable
//                     as int,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$GetAllFavouritesImpl implements _GetAllFavourites {
//   const _$GetAllFavouritesImpl({this.page = 1});

//   @override
//   @JsonKey()
//   final int page;

//   @override
//   String toString() {
//     return 'FavouritesEvent.getAllFavourites(page: $page)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$GetAllFavouritesImpl &&
//             (identical(other.page, page) || other.page == page));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, page);

//   /// Create a copy of FavouritesEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$GetAllFavouritesImplCopyWith<_$GetAllFavouritesImpl> get copyWith =>
//       __$$GetAllFavouritesImplCopyWithImpl<_$GetAllFavouritesImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(int page) getAllFavourites,
//     required TResult Function(String orderId) createFavourite,
//     required TResult Function(String orderId) deleteFavourite,
//   }) {
//     return getAllFavourites(page);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(int page)? getAllFavourites,
//     TResult? Function(String orderId)? createFavourite,
//     TResult? Function(String orderId)? deleteFavourite,
//   }) {
//     return getAllFavourites?.call(page);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(int page)? getAllFavourites,
//     TResult Function(String orderId)? createFavourite,
//     TResult Function(String orderId)? deleteFavourite,
//     required TResult orElse(),
//   }) {
//     if (getAllFavourites != null) {
//       return getAllFavourites(page);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetAllFavourites value) getAllFavourites,
//     required TResult Function(_CreateFavourite value) createFavourite,
//     required TResult Function(_DeleteFavourite value) deleteFavourite,
//   }) {
//     return getAllFavourites(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetAllFavourites value)? getAllFavourites,
//     TResult? Function(_CreateFavourite value)? createFavourite,
//     TResult? Function(_DeleteFavourite value)? deleteFavourite,
//   }) {
//     return getAllFavourites?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetAllFavourites value)? getAllFavourites,
//     TResult Function(_CreateFavourite value)? createFavourite,
//     TResult Function(_DeleteFavourite value)? deleteFavourite,
//     required TResult orElse(),
//   }) {
//     if (getAllFavourites != null) {
//       return getAllFavourites(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GetAllFavourites implements FavouritesEvent {
//   const factory _GetAllFavourites({final int page}) = _$GetAllFavouritesImpl;

//   int get page;

//   /// Create a copy of FavouritesEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$GetAllFavouritesImplCopyWith<_$GetAllFavouritesImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$CreateFavouriteImplCopyWith<$Res> {
//   factory _$$CreateFavouriteImplCopyWith(
//     _$CreateFavouriteImpl value,
//     $Res Function(_$CreateFavouriteImpl) then,
//   ) = __$$CreateFavouriteImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({String orderId});
// }

// /// @nodoc
// class __$$CreateFavouriteImplCopyWithImpl<$Res>
//     extends _$FavouritesEventCopyWithImpl<$Res, _$CreateFavouriteImpl>
//     implements _$$CreateFavouriteImplCopyWith<$Res> {
//   __$$CreateFavouriteImplCopyWithImpl(
//     _$CreateFavouriteImpl _value,
//     $Res Function(_$CreateFavouriteImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of FavouritesEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? orderId = null}) {
//     return _then(
//       _$CreateFavouriteImpl(
//         orderId:
//             null == orderId
//                 ? _value.orderId
//                 : orderId // ignore: cast_nullable_to_non_nullable
//                     as String,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$CreateFavouriteImpl implements _CreateFavourite {
//   const _$CreateFavouriteImpl({required this.orderId});

//   @override
//   final String orderId;

//   @override
//   String toString() {
//     return 'FavouritesEvent.createFavourite(orderId: $orderId)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$CreateFavouriteImpl &&
//             (identical(other.orderId, orderId) || other.orderId == orderId));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, orderId);

//   /// Create a copy of FavouritesEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$CreateFavouriteImplCopyWith<_$CreateFavouriteImpl> get copyWith =>
//       __$$CreateFavouriteImplCopyWithImpl<_$CreateFavouriteImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(int page) getAllFavourites,
//     required TResult Function(String orderId) createFavourite,
//     required TResult Function(String orderId) deleteFavourite,
//   }) {
//     return createFavourite(orderId);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(int page)? getAllFavourites,
//     TResult? Function(String orderId)? createFavourite,
//     TResult? Function(String orderId)? deleteFavourite,
//   }) {
//     return createFavourite?.call(orderId);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(int page)? getAllFavourites,
//     TResult Function(String orderId)? createFavourite,
//     TResult Function(String orderId)? deleteFavourite,
//     required TResult orElse(),
//   }) {
//     if (createFavourite != null) {
//       return createFavourite(orderId);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetAllFavourites value) getAllFavourites,
//     required TResult Function(_CreateFavourite value) createFavourite,
//     required TResult Function(_DeleteFavourite value) deleteFavourite,
//   }) {
//     return createFavourite(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetAllFavourites value)? getAllFavourites,
//     TResult? Function(_CreateFavourite value)? createFavourite,
//     TResult? Function(_DeleteFavourite value)? deleteFavourite,
//   }) {
//     return createFavourite?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetAllFavourites value)? getAllFavourites,
//     TResult Function(_CreateFavourite value)? createFavourite,
//     TResult Function(_DeleteFavourite value)? deleteFavourite,
//     required TResult orElse(),
//   }) {
//     if (createFavourite != null) {
//       return createFavourite(this);
//     }
//     return orElse();
//   }
// }

// abstract class _CreateFavourite implements FavouritesEvent {
//   const factory _CreateFavourite({required final String orderId}) =
//       _$CreateFavouriteImpl;

//   String get orderId;

//   /// Create a copy of FavouritesEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$CreateFavouriteImplCopyWith<_$CreateFavouriteImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$DeleteFavouriteImplCopyWith<$Res> {
//   factory _$$DeleteFavouriteImplCopyWith(
//     _$DeleteFavouriteImpl value,
//     $Res Function(_$DeleteFavouriteImpl) then,
//   ) = __$$DeleteFavouriteImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({String orderId});
// }

// /// @nodoc
// class __$$DeleteFavouriteImplCopyWithImpl<$Res>
//     extends _$FavouritesEventCopyWithImpl<$Res, _$DeleteFavouriteImpl>
//     implements _$$DeleteFavouriteImplCopyWith<$Res> {
//   __$$DeleteFavouriteImplCopyWithImpl(
//     _$DeleteFavouriteImpl _value,
//     $Res Function(_$DeleteFavouriteImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of FavouritesEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? orderId = null}) {
//     return _then(
//       _$DeleteFavouriteImpl(
//         orderId:
//             null == orderId
//                 ? _value.orderId
//                 : orderId // ignore: cast_nullable_to_non_nullable
//                     as String,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$DeleteFavouriteImpl implements _DeleteFavourite {
//   const _$DeleteFavouriteImpl({required this.orderId});

//   @override
//   final String orderId;

//   @override
//   String toString() {
//     return 'FavouritesEvent.deleteFavourite(orderId: $orderId)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$DeleteFavouriteImpl &&
//             (identical(other.orderId, orderId) || other.orderId == orderId));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, orderId);

//   /// Create a copy of FavouritesEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$DeleteFavouriteImplCopyWith<_$DeleteFavouriteImpl> get copyWith =>
//       __$$DeleteFavouriteImplCopyWithImpl<_$DeleteFavouriteImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(int page) getAllFavourites,
//     required TResult Function(String orderId) createFavourite,
//     required TResult Function(String orderId) deleteFavourite,
//   }) {
//     return deleteFavourite(orderId);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(int page)? getAllFavourites,
//     TResult? Function(String orderId)? createFavourite,
//     TResult? Function(String orderId)? deleteFavourite,
//   }) {
//     return deleteFavourite?.call(orderId);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(int page)? getAllFavourites,
//     TResult Function(String orderId)? createFavourite,
//     TResult Function(String orderId)? deleteFavourite,
//     required TResult orElse(),
//   }) {
//     if (deleteFavourite != null) {
//       return deleteFavourite(orderId);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetAllFavourites value) getAllFavourites,
//     required TResult Function(_CreateFavourite value) createFavourite,
//     required TResult Function(_DeleteFavourite value) deleteFavourite,
//   }) {
//     return deleteFavourite(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetAllFavourites value)? getAllFavourites,
//     TResult? Function(_CreateFavourite value)? createFavourite,
//     TResult? Function(_DeleteFavourite value)? deleteFavourite,
//   }) {
//     return deleteFavourite?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetAllFavourites value)? getAllFavourites,
//     TResult Function(_CreateFavourite value)? createFavourite,
//     TResult Function(_DeleteFavourite value)? deleteFavourite,
//     required TResult orElse(),
//   }) {
//     if (deleteFavourite != null) {
//       return deleteFavourite(this);
//     }
//     return orElse();
//   }
// }

// abstract class _DeleteFavourite implements FavouritesEvent {
//   const factory _DeleteFavourite({required final String orderId}) =
//       _$DeleteFavouriteImpl;

//   String get orderId;

//   /// Create a copy of FavouritesEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$DeleteFavouriteImplCopyWith<_$DeleteFavouriteImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// mixin _$FavouritesState {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() guest,
//     required TResult Function(GeneralException? generalException)
//     failureCreateFavourite,
//     required TResult Function(GeneralException? generalException)
//     failureDeleteFavourite,
//     required TResult Function() loadingAllFavourites,
//     required TResult Function(
//       List<FavouriteResult> favourites,
//       bool hasNext,
//       int page,
//     )
//     successAllFavourites,
//     required TResult Function(GeneralException? generalException)
//     failureAllFavourites,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? guest,
//     TResult? Function(GeneralException? generalException)?
//     failureCreateFavourite,
//     TResult? Function(GeneralException? generalException)?
//     failureDeleteFavourite,
//     TResult? Function()? loadingAllFavourites,
//     TResult? Function(List<FavouriteResult> favourites, bool hasNext, int page)?
//     successAllFavourites,
//     TResult? Function(GeneralException? generalException)? failureAllFavourites,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? guest,
//     TResult Function(GeneralException? generalException)?
//     failureCreateFavourite,
//     TResult Function(GeneralException? generalException)?
//     failureDeleteFavourite,
//     TResult Function()? loadingAllFavourites,
//     TResult Function(List<FavouriteResult> favourites, bool hasNext, int page)?
//     successAllFavourites,
//     TResult Function(GeneralException? generalException)? failureAllFavourites,
//     required TResult orElse(),
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Guest value) guest,
//     required TResult Function(_FailureCreateFavourite value)
//     failureCreateFavourite,
//     required TResult Function(_FailureDeleteFavourite value)
//     failureDeleteFavourite,
//     required TResult Function(_LoadingAllFavourites value) loadingAllFavourites,
//     required TResult Function(_SuccessAllFavourites value) successAllFavourites,
//     required TResult Function(_FailureAllFavourites value) failureAllFavourites,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Guest value)? guest,
//     TResult? Function(_FailureCreateFavourite value)? failureCreateFavourite,
//     TResult? Function(_FailureDeleteFavourite value)? failureDeleteFavourite,
//     TResult? Function(_LoadingAllFavourites value)? loadingAllFavourites,
//     TResult? Function(_SuccessAllFavourites value)? successAllFavourites,
//     TResult? Function(_FailureAllFavourites value)? failureAllFavourites,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Guest value)? guest,
//     TResult Function(_FailureCreateFavourite value)? failureCreateFavourite,
//     TResult Function(_FailureDeleteFavourite value)? failureDeleteFavourite,
//     TResult Function(_LoadingAllFavourites value)? loadingAllFavourites,
//     TResult Function(_SuccessAllFavourites value)? successAllFavourites,
//     TResult Function(_FailureAllFavourites value)? failureAllFavourites,
//     required TResult orElse(),
//   }) => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $FavouritesStateCopyWith<$Res> {
//   factory $FavouritesStateCopyWith(
//     FavouritesState value,
//     $Res Function(FavouritesState) then,
//   ) = _$FavouritesStateCopyWithImpl<$Res, FavouritesState>;
// }

// /// @nodoc
// class _$FavouritesStateCopyWithImpl<$Res, $Val extends FavouritesState>
//     implements $FavouritesStateCopyWith<$Res> {
//   _$FavouritesStateCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of FavouritesState
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
//     extends _$FavouritesStateCopyWithImpl<$Res, _$InitialImpl>
//     implements _$$InitialImplCopyWith<$Res> {
//   __$$InitialImplCopyWithImpl(
//     _$InitialImpl _value,
//     $Res Function(_$InitialImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of FavouritesState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$InitialImpl implements _Initial {
//   const _$InitialImpl();

//   @override
//   String toString() {
//     return 'FavouritesState.initial()';
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
//     required TResult Function() guest,
//     required TResult Function(GeneralException? generalException)
//     failureCreateFavourite,
//     required TResult Function(GeneralException? generalException)
//     failureDeleteFavourite,
//     required TResult Function() loadingAllFavourites,
//     required TResult Function(
//       List<FavouriteResult> favourites,
//       bool hasNext,
//       int page,
//     )
//     successAllFavourites,
//     required TResult Function(GeneralException? generalException)
//     failureAllFavourites,
//   }) {
//     return initial();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? guest,
//     TResult? Function(GeneralException? generalException)?
//     failureCreateFavourite,
//     TResult? Function(GeneralException? generalException)?
//     failureDeleteFavourite,
//     TResult? Function()? loadingAllFavourites,
//     TResult? Function(List<FavouriteResult> favourites, bool hasNext, int page)?
//     successAllFavourites,
//     TResult? Function(GeneralException? generalException)? failureAllFavourites,
//   }) {
//     return initial?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? guest,
//     TResult Function(GeneralException? generalException)?
//     failureCreateFavourite,
//     TResult Function(GeneralException? generalException)?
//     failureDeleteFavourite,
//     TResult Function()? loadingAllFavourites,
//     TResult Function(List<FavouriteResult> favourites, bool hasNext, int page)?
//     successAllFavourites,
//     TResult Function(GeneralException? generalException)? failureAllFavourites,
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
//     required TResult Function(_Guest value) guest,
//     required TResult Function(_FailureCreateFavourite value)
//     failureCreateFavourite,
//     required TResult Function(_FailureDeleteFavourite value)
//     failureDeleteFavourite,
//     required TResult Function(_LoadingAllFavourites value) loadingAllFavourites,
//     required TResult Function(_SuccessAllFavourites value) successAllFavourites,
//     required TResult Function(_FailureAllFavourites value) failureAllFavourites,
//   }) {
//     return initial(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Guest value)? guest,
//     TResult? Function(_FailureCreateFavourite value)? failureCreateFavourite,
//     TResult? Function(_FailureDeleteFavourite value)? failureDeleteFavourite,
//     TResult? Function(_LoadingAllFavourites value)? loadingAllFavourites,
//     TResult? Function(_SuccessAllFavourites value)? successAllFavourites,
//     TResult? Function(_FailureAllFavourites value)? failureAllFavourites,
//   }) {
//     return initial?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Guest value)? guest,
//     TResult Function(_FailureCreateFavourite value)? failureCreateFavourite,
//     TResult Function(_FailureDeleteFavourite value)? failureDeleteFavourite,
//     TResult Function(_LoadingAllFavourites value)? loadingAllFavourites,
//     TResult Function(_SuccessAllFavourites value)? successAllFavourites,
//     TResult Function(_FailureAllFavourites value)? failureAllFavourites,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Initial implements FavouritesState {
//   const factory _Initial() = _$InitialImpl;
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
//     extends _$FavouritesStateCopyWithImpl<$Res, _$GuestImpl>
//     implements _$$GuestImplCopyWith<$Res> {
//   __$$GuestImplCopyWithImpl(
//     _$GuestImpl _value,
//     $Res Function(_$GuestImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of FavouritesState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$GuestImpl implements _Guest {
//   const _$GuestImpl();

//   @override
//   String toString() {
//     return 'FavouritesState.guest()';
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
//     required TResult Function() guest,
//     required TResult Function(GeneralException? generalException)
//     failureCreateFavourite,
//     required TResult Function(GeneralException? generalException)
//     failureDeleteFavourite,
//     required TResult Function() loadingAllFavourites,
//     required TResult Function(
//       List<FavouriteResult> favourites,
//       bool hasNext,
//       int page,
//     )
//     successAllFavourites,
//     required TResult Function(GeneralException? generalException)
//     failureAllFavourites,
//   }) {
//     return guest();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? guest,
//     TResult? Function(GeneralException? generalException)?
//     failureCreateFavourite,
//     TResult? Function(GeneralException? generalException)?
//     failureDeleteFavourite,
//     TResult? Function()? loadingAllFavourites,
//     TResult? Function(List<FavouriteResult> favourites, bool hasNext, int page)?
//     successAllFavourites,
//     TResult? Function(GeneralException? generalException)? failureAllFavourites,
//   }) {
//     return guest?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? guest,
//     TResult Function(GeneralException? generalException)?
//     failureCreateFavourite,
//     TResult Function(GeneralException? generalException)?
//     failureDeleteFavourite,
//     TResult Function()? loadingAllFavourites,
//     TResult Function(List<FavouriteResult> favourites, bool hasNext, int page)?
//     successAllFavourites,
//     TResult Function(GeneralException? generalException)? failureAllFavourites,
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
//     required TResult Function(_Guest value) guest,
//     required TResult Function(_FailureCreateFavourite value)
//     failureCreateFavourite,
//     required TResult Function(_FailureDeleteFavourite value)
//     failureDeleteFavourite,
//     required TResult Function(_LoadingAllFavourites value) loadingAllFavourites,
//     required TResult Function(_SuccessAllFavourites value) successAllFavourites,
//     required TResult Function(_FailureAllFavourites value) failureAllFavourites,
//   }) {
//     return guest(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Guest value)? guest,
//     TResult? Function(_FailureCreateFavourite value)? failureCreateFavourite,
//     TResult? Function(_FailureDeleteFavourite value)? failureDeleteFavourite,
//     TResult? Function(_LoadingAllFavourites value)? loadingAllFavourites,
//     TResult? Function(_SuccessAllFavourites value)? successAllFavourites,
//     TResult? Function(_FailureAllFavourites value)? failureAllFavourites,
//   }) {
//     return guest?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Guest value)? guest,
//     TResult Function(_FailureCreateFavourite value)? failureCreateFavourite,
//     TResult Function(_FailureDeleteFavourite value)? failureDeleteFavourite,
//     TResult Function(_LoadingAllFavourites value)? loadingAllFavourites,
//     TResult Function(_SuccessAllFavourites value)? successAllFavourites,
//     TResult Function(_FailureAllFavourites value)? failureAllFavourites,
//     required TResult orElse(),
//   }) {
//     if (guest != null) {
//       return guest(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Guest implements FavouritesState {
//   const factory _Guest() = _$GuestImpl;
// }

// /// @nodoc
// abstract class _$$FailureCreateFavouriteImplCopyWith<$Res> {
//   factory _$$FailureCreateFavouriteImplCopyWith(
//     _$FailureCreateFavouriteImpl value,
//     $Res Function(_$FailureCreateFavouriteImpl) then,
//   ) = __$$FailureCreateFavouriteImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({GeneralException? generalException});
// }

// /// @nodoc
// class __$$FailureCreateFavouriteImplCopyWithImpl<$Res>
//     extends _$FavouritesStateCopyWithImpl<$Res, _$FailureCreateFavouriteImpl>
//     implements _$$FailureCreateFavouriteImplCopyWith<$Res> {
//   __$$FailureCreateFavouriteImplCopyWithImpl(
//     _$FailureCreateFavouriteImpl _value,
//     $Res Function(_$FailureCreateFavouriteImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of FavouritesState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? generalException = freezed}) {
//     return _then(
//       _$FailureCreateFavouriteImpl(
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

// class _$FailureCreateFavouriteImpl implements _FailureCreateFavourite {
//   const _$FailureCreateFavouriteImpl({this.generalException = null});

//   @override
//   @JsonKey()
//   final GeneralException? generalException;

//   @override
//   String toString() {
//     return 'FavouritesState.failureCreateFavourite(generalException: $generalException)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$FailureCreateFavouriteImpl &&
//             (identical(other.generalException, generalException) ||
//                 other.generalException == generalException));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, generalException);

//   /// Create a copy of FavouritesState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$FailureCreateFavouriteImplCopyWith<_$FailureCreateFavouriteImpl>
//   get copyWith =>
//       __$$FailureCreateFavouriteImplCopyWithImpl<_$FailureCreateFavouriteImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() guest,
//     required TResult Function(GeneralException? generalException)
//     failureCreateFavourite,
//     required TResult Function(GeneralException? generalException)
//     failureDeleteFavourite,
//     required TResult Function() loadingAllFavourites,
//     required TResult Function(
//       List<FavouriteResult> favourites,
//       bool hasNext,
//       int page,
//     )
//     successAllFavourites,
//     required TResult Function(GeneralException? generalException)
//     failureAllFavourites,
//   }) {
//     return failureCreateFavourite(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? guest,
//     TResult? Function(GeneralException? generalException)?
//     failureCreateFavourite,
//     TResult? Function(GeneralException? generalException)?
//     failureDeleteFavourite,
//     TResult? Function()? loadingAllFavourites,
//     TResult? Function(List<FavouriteResult> favourites, bool hasNext, int page)?
//     successAllFavourites,
//     TResult? Function(GeneralException? generalException)? failureAllFavourites,
//   }) {
//     return failureCreateFavourite?.call(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? guest,
//     TResult Function(GeneralException? generalException)?
//     failureCreateFavourite,
//     TResult Function(GeneralException? generalException)?
//     failureDeleteFavourite,
//     TResult Function()? loadingAllFavourites,
//     TResult Function(List<FavouriteResult> favourites, bool hasNext, int page)?
//     successAllFavourites,
//     TResult Function(GeneralException? generalException)? failureAllFavourites,
//     required TResult orElse(),
//   }) {
//     if (failureCreateFavourite != null) {
//       return failureCreateFavourite(generalException);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Guest value) guest,
//     required TResult Function(_FailureCreateFavourite value)
//     failureCreateFavourite,
//     required TResult Function(_FailureDeleteFavourite value)
//     failureDeleteFavourite,
//     required TResult Function(_LoadingAllFavourites value) loadingAllFavourites,
//     required TResult Function(_SuccessAllFavourites value) successAllFavourites,
//     required TResult Function(_FailureAllFavourites value) failureAllFavourites,
//   }) {
//     return failureCreateFavourite(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Guest value)? guest,
//     TResult? Function(_FailureCreateFavourite value)? failureCreateFavourite,
//     TResult? Function(_FailureDeleteFavourite value)? failureDeleteFavourite,
//     TResult? Function(_LoadingAllFavourites value)? loadingAllFavourites,
//     TResult? Function(_SuccessAllFavourites value)? successAllFavourites,
//     TResult? Function(_FailureAllFavourites value)? failureAllFavourites,
//   }) {
//     return failureCreateFavourite?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Guest value)? guest,
//     TResult Function(_FailureCreateFavourite value)? failureCreateFavourite,
//     TResult Function(_FailureDeleteFavourite value)? failureDeleteFavourite,
//     TResult Function(_LoadingAllFavourites value)? loadingAllFavourites,
//     TResult Function(_SuccessAllFavourites value)? successAllFavourites,
//     TResult Function(_FailureAllFavourites value)? failureAllFavourites,
//     required TResult orElse(),
//   }) {
//     if (failureCreateFavourite != null) {
//       return failureCreateFavourite(this);
//     }
//     return orElse();
//   }
// }

// abstract class _FailureCreateFavourite implements FavouritesState {
//   const factory _FailureCreateFavourite({
//     final GeneralException? generalException,
//   }) = _$FailureCreateFavouriteImpl;

//   GeneralException? get generalException;

//   /// Create a copy of FavouritesState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$FailureCreateFavouriteImplCopyWith<_$FailureCreateFavouriteImpl>
//   get copyWith => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$FailureDeleteFavouriteImplCopyWith<$Res> {
//   factory _$$FailureDeleteFavouriteImplCopyWith(
//     _$FailureDeleteFavouriteImpl value,
//     $Res Function(_$FailureDeleteFavouriteImpl) then,
//   ) = __$$FailureDeleteFavouriteImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({GeneralException? generalException});
// }

// /// @nodoc
// class __$$FailureDeleteFavouriteImplCopyWithImpl<$Res>
//     extends _$FavouritesStateCopyWithImpl<$Res, _$FailureDeleteFavouriteImpl>
//     implements _$$FailureDeleteFavouriteImplCopyWith<$Res> {
//   __$$FailureDeleteFavouriteImplCopyWithImpl(
//     _$FailureDeleteFavouriteImpl _value,
//     $Res Function(_$FailureDeleteFavouriteImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of FavouritesState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? generalException = freezed}) {
//     return _then(
//       _$FailureDeleteFavouriteImpl(
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

// class _$FailureDeleteFavouriteImpl implements _FailureDeleteFavourite {
//   const _$FailureDeleteFavouriteImpl({this.generalException = null});

//   @override
//   @JsonKey()
//   final GeneralException? generalException;

//   @override
//   String toString() {
//     return 'FavouritesState.failureDeleteFavourite(generalException: $generalException)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$FailureDeleteFavouriteImpl &&
//             (identical(other.generalException, generalException) ||
//                 other.generalException == generalException));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, generalException);

//   /// Create a copy of FavouritesState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$FailureDeleteFavouriteImplCopyWith<_$FailureDeleteFavouriteImpl>
//   get copyWith =>
//       __$$FailureDeleteFavouriteImplCopyWithImpl<_$FailureDeleteFavouriteImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() guest,
//     required TResult Function(GeneralException? generalException)
//     failureCreateFavourite,
//     required TResult Function(GeneralException? generalException)
//     failureDeleteFavourite,
//     required TResult Function() loadingAllFavourites,
//     required TResult Function(
//       List<FavouriteResult> favourites,
//       bool hasNext,
//       int page,
//     )
//     successAllFavourites,
//     required TResult Function(GeneralException? generalException)
//     failureAllFavourites,
//   }) {
//     return failureDeleteFavourite(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? guest,
//     TResult? Function(GeneralException? generalException)?
//     failureCreateFavourite,
//     TResult? Function(GeneralException? generalException)?
//     failureDeleteFavourite,
//     TResult? Function()? loadingAllFavourites,
//     TResult? Function(List<FavouriteResult> favourites, bool hasNext, int page)?
//     successAllFavourites,
//     TResult? Function(GeneralException? generalException)? failureAllFavourites,
//   }) {
//     return failureDeleteFavourite?.call(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? guest,
//     TResult Function(GeneralException? generalException)?
//     failureCreateFavourite,
//     TResult Function(GeneralException? generalException)?
//     failureDeleteFavourite,
//     TResult Function()? loadingAllFavourites,
//     TResult Function(List<FavouriteResult> favourites, bool hasNext, int page)?
//     successAllFavourites,
//     TResult Function(GeneralException? generalException)? failureAllFavourites,
//     required TResult orElse(),
//   }) {
//     if (failureDeleteFavourite != null) {
//       return failureDeleteFavourite(generalException);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Guest value) guest,
//     required TResult Function(_FailureCreateFavourite value)
//     failureCreateFavourite,
//     required TResult Function(_FailureDeleteFavourite value)
//     failureDeleteFavourite,
//     required TResult Function(_LoadingAllFavourites value) loadingAllFavourites,
//     required TResult Function(_SuccessAllFavourites value) successAllFavourites,
//     required TResult Function(_FailureAllFavourites value) failureAllFavourites,
//   }) {
//     return failureDeleteFavourite(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Guest value)? guest,
//     TResult? Function(_FailureCreateFavourite value)? failureCreateFavourite,
//     TResult? Function(_FailureDeleteFavourite value)? failureDeleteFavourite,
//     TResult? Function(_LoadingAllFavourites value)? loadingAllFavourites,
//     TResult? Function(_SuccessAllFavourites value)? successAllFavourites,
//     TResult? Function(_FailureAllFavourites value)? failureAllFavourites,
//   }) {
//     return failureDeleteFavourite?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Guest value)? guest,
//     TResult Function(_FailureCreateFavourite value)? failureCreateFavourite,
//     TResult Function(_FailureDeleteFavourite value)? failureDeleteFavourite,
//     TResult Function(_LoadingAllFavourites value)? loadingAllFavourites,
//     TResult Function(_SuccessAllFavourites value)? successAllFavourites,
//     TResult Function(_FailureAllFavourites value)? failureAllFavourites,
//     required TResult orElse(),
//   }) {
//     if (failureDeleteFavourite != null) {
//       return failureDeleteFavourite(this);
//     }
//     return orElse();
//   }
// }

// abstract class _FailureDeleteFavourite implements FavouritesState {
//   const factory _FailureDeleteFavourite({
//     final GeneralException? generalException,
//   }) = _$FailureDeleteFavouriteImpl;

//   GeneralException? get generalException;

//   /// Create a copy of FavouritesState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$FailureDeleteFavouriteImplCopyWith<_$FailureDeleteFavouriteImpl>
//   get copyWith => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$LoadingAllFavouritesImplCopyWith<$Res> {
//   factory _$$LoadingAllFavouritesImplCopyWith(
//     _$LoadingAllFavouritesImpl value,
//     $Res Function(_$LoadingAllFavouritesImpl) then,
//   ) = __$$LoadingAllFavouritesImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$LoadingAllFavouritesImplCopyWithImpl<$Res>
//     extends _$FavouritesStateCopyWithImpl<$Res, _$LoadingAllFavouritesImpl>
//     implements _$$LoadingAllFavouritesImplCopyWith<$Res> {
//   __$$LoadingAllFavouritesImplCopyWithImpl(
//     _$LoadingAllFavouritesImpl _value,
//     $Res Function(_$LoadingAllFavouritesImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of FavouritesState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingAllFavouritesImpl implements _LoadingAllFavourites {
//   const _$LoadingAllFavouritesImpl();

//   @override
//   String toString() {
//     return 'FavouritesState.loadingAllFavourites()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$LoadingAllFavouritesImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() guest,
//     required TResult Function(GeneralException? generalException)
//     failureCreateFavourite,
//     required TResult Function(GeneralException? generalException)
//     failureDeleteFavourite,
//     required TResult Function() loadingAllFavourites,
//     required TResult Function(
//       List<FavouriteResult> favourites,
//       bool hasNext,
//       int page,
//     )
//     successAllFavourites,
//     required TResult Function(GeneralException? generalException)
//     failureAllFavourites,
//   }) {
//     return loadingAllFavourites();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? guest,
//     TResult? Function(GeneralException? generalException)?
//     failureCreateFavourite,
//     TResult? Function(GeneralException? generalException)?
//     failureDeleteFavourite,
//     TResult? Function()? loadingAllFavourites,
//     TResult? Function(List<FavouriteResult> favourites, bool hasNext, int page)?
//     successAllFavourites,
//     TResult? Function(GeneralException? generalException)? failureAllFavourites,
//   }) {
//     return loadingAllFavourites?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? guest,
//     TResult Function(GeneralException? generalException)?
//     failureCreateFavourite,
//     TResult Function(GeneralException? generalException)?
//     failureDeleteFavourite,
//     TResult Function()? loadingAllFavourites,
//     TResult Function(List<FavouriteResult> favourites, bool hasNext, int page)?
//     successAllFavourites,
//     TResult Function(GeneralException? generalException)? failureAllFavourites,
//     required TResult orElse(),
//   }) {
//     if (loadingAllFavourites != null) {
//       return loadingAllFavourites();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Guest value) guest,
//     required TResult Function(_FailureCreateFavourite value)
//     failureCreateFavourite,
//     required TResult Function(_FailureDeleteFavourite value)
//     failureDeleteFavourite,
//     required TResult Function(_LoadingAllFavourites value) loadingAllFavourites,
//     required TResult Function(_SuccessAllFavourites value) successAllFavourites,
//     required TResult Function(_FailureAllFavourites value) failureAllFavourites,
//   }) {
//     return loadingAllFavourites(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Guest value)? guest,
//     TResult? Function(_FailureCreateFavourite value)? failureCreateFavourite,
//     TResult? Function(_FailureDeleteFavourite value)? failureDeleteFavourite,
//     TResult? Function(_LoadingAllFavourites value)? loadingAllFavourites,
//     TResult? Function(_SuccessAllFavourites value)? successAllFavourites,
//     TResult? Function(_FailureAllFavourites value)? failureAllFavourites,
//   }) {
//     return loadingAllFavourites?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Guest value)? guest,
//     TResult Function(_FailureCreateFavourite value)? failureCreateFavourite,
//     TResult Function(_FailureDeleteFavourite value)? failureDeleteFavourite,
//     TResult Function(_LoadingAllFavourites value)? loadingAllFavourites,
//     TResult Function(_SuccessAllFavourites value)? successAllFavourites,
//     TResult Function(_FailureAllFavourites value)? failureAllFavourites,
//     required TResult orElse(),
//   }) {
//     if (loadingAllFavourites != null) {
//       return loadingAllFavourites(this);
//     }
//     return orElse();
//   }
// }

// abstract class _LoadingAllFavourites implements FavouritesState {
//   const factory _LoadingAllFavourites() = _$LoadingAllFavouritesImpl;
// }

// /// @nodoc
// abstract class _$$SuccessAllFavouritesImplCopyWith<$Res> {
//   factory _$$SuccessAllFavouritesImplCopyWith(
//     _$SuccessAllFavouritesImpl value,
//     $Res Function(_$SuccessAllFavouritesImpl) then,
//   ) = __$$SuccessAllFavouritesImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({List<FavouriteResult> favourites, bool hasNext, int page});
// }

// /// @nodoc
// class __$$SuccessAllFavouritesImplCopyWithImpl<$Res>
//     extends _$FavouritesStateCopyWithImpl<$Res, _$SuccessAllFavouritesImpl>
//     implements _$$SuccessAllFavouritesImplCopyWith<$Res> {
//   __$$SuccessAllFavouritesImplCopyWithImpl(
//     _$SuccessAllFavouritesImpl _value,
//     $Res Function(_$SuccessAllFavouritesImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of FavouritesState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? favourites = null,
//     Object? hasNext = null,
//     Object? page = null,
//   }) {
//     return _then(
//       _$SuccessAllFavouritesImpl(
//         favourites:
//             null == favourites
//                 ? _value._favourites
//                 : favourites // ignore: cast_nullable_to_non_nullable
//                     as List<FavouriteResult>,
//         hasNext:
//             null == hasNext
//                 ? _value.hasNext
//                 : hasNext // ignore: cast_nullable_to_non_nullable
//                     as bool,
//         page:
//             null == page
//                 ? _value.page
//                 : page // ignore: cast_nullable_to_non_nullable
//                     as int,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$SuccessAllFavouritesImpl implements _SuccessAllFavourites {
//   const _$SuccessAllFavouritesImpl({
//     final List<FavouriteResult> favourites = const <FavouriteResult>[],
//     this.hasNext = false,
//     this.page = 1,
//   }) : _favourites = favourites;

//   final List<FavouriteResult> _favourites;
//   @override
//   @JsonKey()
//   List<FavouriteResult> get favourites {
//     if (_favourites is EqualUnmodifiableListView) return _favourites;
//     // ignore: implicit_dynamic_type
//     return EqualUnmodifiableListView(_favourites);
//   }

//   @override
//   @JsonKey()
//   final bool hasNext;
//   @override
//   @JsonKey()
//   final int page;

//   @override
//   String toString() {
//     return 'FavouritesState.successAllFavourites(favourites: $favourites, hasNext: $hasNext, page: $page)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$SuccessAllFavouritesImpl &&
//             const DeepCollectionEquality().equals(
//               other._favourites,
//               _favourites,
//             ) &&
//             (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
//             (identical(other.page, page) || other.page == page));
//   }

//   @override
//   int get hashCode => Object.hash(
//     runtimeType,
//     const DeepCollectionEquality().hash(_favourites),
//     hasNext,
//     page,
//   );

//   /// Create a copy of FavouritesState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$SuccessAllFavouritesImplCopyWith<_$SuccessAllFavouritesImpl>
//   get copyWith =>
//       __$$SuccessAllFavouritesImplCopyWithImpl<_$SuccessAllFavouritesImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() guest,
//     required TResult Function(GeneralException? generalException)
//     failureCreateFavourite,
//     required TResult Function(GeneralException? generalException)
//     failureDeleteFavourite,
//     required TResult Function() loadingAllFavourites,
//     required TResult Function(
//       List<FavouriteResult> favourites,
//       bool hasNext,
//       int page,
//     )
//     successAllFavourites,
//     required TResult Function(GeneralException? generalException)
//     failureAllFavourites,
//   }) {
//     return successAllFavourites(favourites, hasNext, page);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? guest,
//     TResult? Function(GeneralException? generalException)?
//     failureCreateFavourite,
//     TResult? Function(GeneralException? generalException)?
//     failureDeleteFavourite,
//     TResult? Function()? loadingAllFavourites,
//     TResult? Function(List<FavouriteResult> favourites, bool hasNext, int page)?
//     successAllFavourites,
//     TResult? Function(GeneralException? generalException)? failureAllFavourites,
//   }) {
//     return successAllFavourites?.call(favourites, hasNext, page);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? guest,
//     TResult Function(GeneralException? generalException)?
//     failureCreateFavourite,
//     TResult Function(GeneralException? generalException)?
//     failureDeleteFavourite,
//     TResult Function()? loadingAllFavourites,
//     TResult Function(List<FavouriteResult> favourites, bool hasNext, int page)?
//     successAllFavourites,
//     TResult Function(GeneralException? generalException)? failureAllFavourites,
//     required TResult orElse(),
//   }) {
//     if (successAllFavourites != null) {
//       return successAllFavourites(favourites, hasNext, page);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Guest value) guest,
//     required TResult Function(_FailureCreateFavourite value)
//     failureCreateFavourite,
//     required TResult Function(_FailureDeleteFavourite value)
//     failureDeleteFavourite,
//     required TResult Function(_LoadingAllFavourites value) loadingAllFavourites,
//     required TResult Function(_SuccessAllFavourites value) successAllFavourites,
//     required TResult Function(_FailureAllFavourites value) failureAllFavourites,
//   }) {
//     return successAllFavourites(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Guest value)? guest,
//     TResult? Function(_FailureCreateFavourite value)? failureCreateFavourite,
//     TResult? Function(_FailureDeleteFavourite value)? failureDeleteFavourite,
//     TResult? Function(_LoadingAllFavourites value)? loadingAllFavourites,
//     TResult? Function(_SuccessAllFavourites value)? successAllFavourites,
//     TResult? Function(_FailureAllFavourites value)? failureAllFavourites,
//   }) {
//     return successAllFavourites?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Guest value)? guest,
//     TResult Function(_FailureCreateFavourite value)? failureCreateFavourite,
//     TResult Function(_FailureDeleteFavourite value)? failureDeleteFavourite,
//     TResult Function(_LoadingAllFavourites value)? loadingAllFavourites,
//     TResult Function(_SuccessAllFavourites value)? successAllFavourites,
//     TResult Function(_FailureAllFavourites value)? failureAllFavourites,
//     required TResult orElse(),
//   }) {
//     if (successAllFavourites != null) {
//       return successAllFavourites(this);
//     }
//     return orElse();
//   }
// }

// abstract class _SuccessAllFavourites implements FavouritesState {
//   const factory _SuccessAllFavourites({
//     final List<FavouriteResult> favourites,
//     final bool hasNext,
//     final int page,
//   }) = _$SuccessAllFavouritesImpl;

//   List<FavouriteResult> get favourites;
//   bool get hasNext;
//   int get page;

//   /// Create a copy of FavouritesState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$SuccessAllFavouritesImplCopyWith<_$SuccessAllFavouritesImpl>
//   get copyWith => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$FailureAllFavouritesImplCopyWith<$Res> {
//   factory _$$FailureAllFavouritesImplCopyWith(
//     _$FailureAllFavouritesImpl value,
//     $Res Function(_$FailureAllFavouritesImpl) then,
//   ) = __$$FailureAllFavouritesImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({GeneralException? generalException});
// }

// /// @nodoc
// class __$$FailureAllFavouritesImplCopyWithImpl<$Res>
//     extends _$FavouritesStateCopyWithImpl<$Res, _$FailureAllFavouritesImpl>
//     implements _$$FailureAllFavouritesImplCopyWith<$Res> {
//   __$$FailureAllFavouritesImplCopyWithImpl(
//     _$FailureAllFavouritesImpl _value,
//     $Res Function(_$FailureAllFavouritesImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of FavouritesState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? generalException = freezed}) {
//     return _then(
//       _$FailureAllFavouritesImpl(
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

// class _$FailureAllFavouritesImpl implements _FailureAllFavourites {
//   const _$FailureAllFavouritesImpl({this.generalException = null});

//   @override
//   @JsonKey()
//   final GeneralException? generalException;

//   @override
//   String toString() {
//     return 'FavouritesState.failureAllFavourites(generalException: $generalException)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$FailureAllFavouritesImpl &&
//             (identical(other.generalException, generalException) ||
//                 other.generalException == generalException));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, generalException);

//   /// Create a copy of FavouritesState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$FailureAllFavouritesImplCopyWith<_$FailureAllFavouritesImpl>
//   get copyWith =>
//       __$$FailureAllFavouritesImplCopyWithImpl<_$FailureAllFavouritesImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() guest,
//     required TResult Function(GeneralException? generalException)
//     failureCreateFavourite,
//     required TResult Function(GeneralException? generalException)
//     failureDeleteFavourite,
//     required TResult Function() loadingAllFavourites,
//     required TResult Function(
//       List<FavouriteResult> favourites,
//       bool hasNext,
//       int page,
//     )
//     successAllFavourites,
//     required TResult Function(GeneralException? generalException)
//     failureAllFavourites,
//   }) {
//     return failureAllFavourites(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? guest,
//     TResult? Function(GeneralException? generalException)?
//     failureCreateFavourite,
//     TResult? Function(GeneralException? generalException)?
//     failureDeleteFavourite,
//     TResult? Function()? loadingAllFavourites,
//     TResult? Function(List<FavouriteResult> favourites, bool hasNext, int page)?
//     successAllFavourites,
//     TResult? Function(GeneralException? generalException)? failureAllFavourites,
//   }) {
//     return failureAllFavourites?.call(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? guest,
//     TResult Function(GeneralException? generalException)?
//     failureCreateFavourite,
//     TResult Function(GeneralException? generalException)?
//     failureDeleteFavourite,
//     TResult Function()? loadingAllFavourites,
//     TResult Function(List<FavouriteResult> favourites, bool hasNext, int page)?
//     successAllFavourites,
//     TResult Function(GeneralException? generalException)? failureAllFavourites,
//     required TResult orElse(),
//   }) {
//     if (failureAllFavourites != null) {
//       return failureAllFavourites(generalException);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Guest value) guest,
//     required TResult Function(_FailureCreateFavourite value)
//     failureCreateFavourite,
//     required TResult Function(_FailureDeleteFavourite value)
//     failureDeleteFavourite,
//     required TResult Function(_LoadingAllFavourites value) loadingAllFavourites,
//     required TResult Function(_SuccessAllFavourites value) successAllFavourites,
//     required TResult Function(_FailureAllFavourites value) failureAllFavourites,
//   }) {
//     return failureAllFavourites(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Guest value)? guest,
//     TResult? Function(_FailureCreateFavourite value)? failureCreateFavourite,
//     TResult? Function(_FailureDeleteFavourite value)? failureDeleteFavourite,
//     TResult? Function(_LoadingAllFavourites value)? loadingAllFavourites,
//     TResult? Function(_SuccessAllFavourites value)? successAllFavourites,
//     TResult? Function(_FailureAllFavourites value)? failureAllFavourites,
//   }) {
//     return failureAllFavourites?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Guest value)? guest,
//     TResult Function(_FailureCreateFavourite value)? failureCreateFavourite,
//     TResult Function(_FailureDeleteFavourite value)? failureDeleteFavourite,
//     TResult Function(_LoadingAllFavourites value)? loadingAllFavourites,
//     TResult Function(_SuccessAllFavourites value)? successAllFavourites,
//     TResult Function(_FailureAllFavourites value)? failureAllFavourites,
//     required TResult orElse(),
//   }) {
//     if (failureAllFavourites != null) {
//       return failureAllFavourites(this);
//     }
//     return orElse();
//   }
// }

// abstract class _FailureAllFavourites implements FavouritesState {
//   const factory _FailureAllFavourites({
//     final GeneralException? generalException,
//   }) = _$FailureAllFavouritesImpl;

//   GeneralException? get generalException;

//   /// Create a copy of FavouritesState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$FailureAllFavouritesImplCopyWith<_$FailureAllFavouritesImpl>
//   get copyWith => throw _privateConstructorUsedError;
// }
