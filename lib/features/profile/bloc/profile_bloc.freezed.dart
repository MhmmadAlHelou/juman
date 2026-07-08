// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'profile_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//   'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
// );

// /// @nodoc
// mixin _$ProfileEvent {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(bool withLoading) getProfile,
//     required TResult Function(EditProfileParams editProfileParams)
//     updateProfile,
//     required TResult Function(ChangePasswordParams changePasswordParams)
//     changePassword,
//     required TResult Function() getLanguages,
//     required TResult Function() getSystemInfo,
//     required TResult Function(LanguageData language) setLanguage,
//     required TResult Function(String message) deactivateAccount,
//     required TResult Function(ContactUsParams contactUsParam) contactUs,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(bool withLoading)? getProfile,
//     TResult? Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult? Function(ChangePasswordParams changePasswordParams)?
//     changePassword,
//     TResult? Function()? getLanguages,
//     TResult? Function()? getSystemInfo,
//     TResult? Function(LanguageData language)? setLanguage,
//     TResult? Function(String message)? deactivateAccount,
//     TResult? Function(ContactUsParams contactUsParam)? contactUs,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(bool withLoading)? getProfile,
//     TResult Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult Function(ChangePasswordParams changePasswordParams)? changePassword,
//     TResult Function()? getLanguages,
//     TResult Function()? getSystemInfo,
//     TResult Function(LanguageData language)? setLanguage,
//     TResult Function(String message)? deactivateAccount,
//     TResult Function(ContactUsParams contactUsParam)? contactUs,
//     required TResult orElse(),
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetProfile value) getProfile,
//     required TResult Function(_UpdateProfile value) updateProfile,
//     required TResult Function(_ChangePassword value) changePassword,
//     required TResult Function(_GetLanguages value) getLanguages,
//     required TResult Function(_GetSystemInfo value) getSystemInfo,
//     required TResult Function(_SetLanguage value) setLanguage,
//     required TResult Function(_DeactivateAccount value) deactivateAccount,
//     required TResult Function(_ContactUs value) contactUs,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetProfile value)? getProfile,
//     TResult? Function(_UpdateProfile value)? updateProfile,
//     TResult? Function(_ChangePassword value)? changePassword,
//     TResult? Function(_GetLanguages value)? getLanguages,
//     TResult? Function(_GetSystemInfo value)? getSystemInfo,
//     TResult? Function(_SetLanguage value)? setLanguage,
//     TResult? Function(_DeactivateAccount value)? deactivateAccount,
//     TResult? Function(_ContactUs value)? contactUs,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetProfile value)? getProfile,
//     TResult Function(_UpdateProfile value)? updateProfile,
//     TResult Function(_ChangePassword value)? changePassword,
//     TResult Function(_GetLanguages value)? getLanguages,
//     TResult Function(_GetSystemInfo value)? getSystemInfo,
//     TResult Function(_SetLanguage value)? setLanguage,
//     TResult Function(_DeactivateAccount value)? deactivateAccount,
//     TResult Function(_ContactUs value)? contactUs,
//     required TResult orElse(),
//   }) => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $ProfileEventCopyWith<$Res> {
//   factory $ProfileEventCopyWith(
//     ProfileEvent value,
//     $Res Function(ProfileEvent) then,
//   ) = _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
// }

// /// @nodoc
// class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
//     implements $ProfileEventCopyWith<$Res> {
//   _$ProfileEventCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc
// abstract class _$$GetProfileImplCopyWith<$Res> {
//   factory _$$GetProfileImplCopyWith(
//     _$GetProfileImpl value,
//     $Res Function(_$GetProfileImpl) then,
//   ) = __$$GetProfileImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({bool withLoading});
// }

// /// @nodoc
// class __$$GetProfileImplCopyWithImpl<$Res>
//     extends _$ProfileEventCopyWithImpl<$Res, _$GetProfileImpl>
//     implements _$$GetProfileImplCopyWith<$Res> {
//   __$$GetProfileImplCopyWithImpl(
//     _$GetProfileImpl _value,
//     $Res Function(_$GetProfileImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? withLoading = null}) {
//     return _then(
//       _$GetProfileImpl(
//         withLoading:
//             null == withLoading
//                 ? _value.withLoading
//                 : withLoading // ignore: cast_nullable_to_non_nullable
//                     as bool,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$GetProfileImpl implements _GetProfile {
//   const _$GetProfileImpl({this.withLoading = true});

//   @override
//   @JsonKey()
//   final bool withLoading;

//   @override
//   String toString() {
//     return 'ProfileEvent.getProfile(withLoading: $withLoading)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$GetProfileImpl &&
//             (identical(other.withLoading, withLoading) ||
//                 other.withLoading == withLoading));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, withLoading);

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$GetProfileImplCopyWith<_$GetProfileImpl> get copyWith =>
//       __$$GetProfileImplCopyWithImpl<_$GetProfileImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(bool withLoading) getProfile,
//     required TResult Function(EditProfileParams editProfileParams)
//     updateProfile,
//     required TResult Function(ChangePasswordParams changePasswordParams)
//     changePassword,
//     required TResult Function() getLanguages,
//     required TResult Function() getSystemInfo,
//     required TResult Function(LanguageData language) setLanguage,
//     required TResult Function(String message) deactivateAccount,
//     required TResult Function(ContactUsParams contactUsParam) contactUs,
//   }) {
//     return getProfile(withLoading);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(bool withLoading)? getProfile,
//     TResult? Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult? Function(ChangePasswordParams changePasswordParams)?
//     changePassword,
//     TResult? Function()? getLanguages,
//     TResult? Function()? getSystemInfo,
//     TResult? Function(LanguageData language)? setLanguage,
//     TResult? Function(String message)? deactivateAccount,
//     TResult? Function(ContactUsParams contactUsParam)? contactUs,
//   }) {
//     return getProfile?.call(withLoading);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(bool withLoading)? getProfile,
//     TResult Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult Function(ChangePasswordParams changePasswordParams)? changePassword,
//     TResult Function()? getLanguages,
//     TResult Function()? getSystemInfo,
//     TResult Function(LanguageData language)? setLanguage,
//     TResult Function(String message)? deactivateAccount,
//     TResult Function(ContactUsParams contactUsParam)? contactUs,
//     required TResult orElse(),
//   }) {
//     if (getProfile != null) {
//       return getProfile(withLoading);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetProfile value) getProfile,
//     required TResult Function(_UpdateProfile value) updateProfile,
//     required TResult Function(_ChangePassword value) changePassword,
//     required TResult Function(_GetLanguages value) getLanguages,
//     required TResult Function(_GetSystemInfo value) getSystemInfo,
//     required TResult Function(_SetLanguage value) setLanguage,
//     required TResult Function(_DeactivateAccount value) deactivateAccount,
//     required TResult Function(_ContactUs value) contactUs,
//   }) {
//     return getProfile(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetProfile value)? getProfile,
//     TResult? Function(_UpdateProfile value)? updateProfile,
//     TResult? Function(_ChangePassword value)? changePassword,
//     TResult? Function(_GetLanguages value)? getLanguages,
//     TResult? Function(_GetSystemInfo value)? getSystemInfo,
//     TResult? Function(_SetLanguage value)? setLanguage,
//     TResult? Function(_DeactivateAccount value)? deactivateAccount,
//     TResult? Function(_ContactUs value)? contactUs,
//   }) {
//     return getProfile?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetProfile value)? getProfile,
//     TResult Function(_UpdateProfile value)? updateProfile,
//     TResult Function(_ChangePassword value)? changePassword,
//     TResult Function(_GetLanguages value)? getLanguages,
//     TResult Function(_GetSystemInfo value)? getSystemInfo,
//     TResult Function(_SetLanguage value)? setLanguage,
//     TResult Function(_DeactivateAccount value)? deactivateAccount,
//     TResult Function(_ContactUs value)? contactUs,
//     required TResult orElse(),
//   }) {
//     if (getProfile != null) {
//       return getProfile(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GetProfile implements ProfileEvent {
//   const factory _GetProfile({final bool withLoading}) = _$GetProfileImpl;

//   bool get withLoading;

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$GetProfileImplCopyWith<_$GetProfileImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$UpdateProfileImplCopyWith<$Res> {
//   factory _$$UpdateProfileImplCopyWith(
//     _$UpdateProfileImpl value,
//     $Res Function(_$UpdateProfileImpl) then,
//   ) = __$$UpdateProfileImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({EditProfileParams editProfileParams});
// }

// /// @nodoc
// class __$$UpdateProfileImplCopyWithImpl<$Res>
//     extends _$ProfileEventCopyWithImpl<$Res, _$UpdateProfileImpl>
//     implements _$$UpdateProfileImplCopyWith<$Res> {
//   __$$UpdateProfileImplCopyWithImpl(
//     _$UpdateProfileImpl _value,
//     $Res Function(_$UpdateProfileImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? editProfileParams = null}) {
//     return _then(
//       _$UpdateProfileImpl(
//         editProfileParams:
//             null == editProfileParams
//                 ? _value.editProfileParams
//                 : editProfileParams // ignore: cast_nullable_to_non_nullable
//                     as EditProfileParams,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$UpdateProfileImpl implements _UpdateProfile {
//   const _$UpdateProfileImpl({required this.editProfileParams});

//   @override
//   final EditProfileParams editProfileParams;

//   @override
//   String toString() {
//     return 'ProfileEvent.updateProfile(editProfileParams: $editProfileParams)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$UpdateProfileImpl &&
//             (identical(other.editProfileParams, editProfileParams) ||
//                 other.editProfileParams == editProfileParams));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, editProfileParams);

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
//       __$$UpdateProfileImplCopyWithImpl<_$UpdateProfileImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(bool withLoading) getProfile,
//     required TResult Function(EditProfileParams editProfileParams)
//     updateProfile,
//     required TResult Function(ChangePasswordParams changePasswordParams)
//     changePassword,
//     required TResult Function() getLanguages,
//     required TResult Function() getSystemInfo,
//     required TResult Function(LanguageData language) setLanguage,
//     required TResult Function(String message) deactivateAccount,
//     required TResult Function(ContactUsParams contactUsParam) contactUs,
//   }) {
//     return updateProfile(editProfileParams);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(bool withLoading)? getProfile,
//     TResult? Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult? Function(ChangePasswordParams changePasswordParams)?
//     changePassword,
//     TResult? Function()? getLanguages,
//     TResult? Function()? getSystemInfo,
//     TResult? Function(LanguageData language)? setLanguage,
//     TResult? Function(String message)? deactivateAccount,
//     TResult? Function(ContactUsParams contactUsParam)? contactUs,
//   }) {
//     return updateProfile?.call(editProfileParams);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(bool withLoading)? getProfile,
//     TResult Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult Function(ChangePasswordParams changePasswordParams)? changePassword,
//     TResult Function()? getLanguages,
//     TResult Function()? getSystemInfo,
//     TResult Function(LanguageData language)? setLanguage,
//     TResult Function(String message)? deactivateAccount,
//     TResult Function(ContactUsParams contactUsParam)? contactUs,
//     required TResult orElse(),
//   }) {
//     if (updateProfile != null) {
//       return updateProfile(editProfileParams);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetProfile value) getProfile,
//     required TResult Function(_UpdateProfile value) updateProfile,
//     required TResult Function(_ChangePassword value) changePassword,
//     required TResult Function(_GetLanguages value) getLanguages,
//     required TResult Function(_GetSystemInfo value) getSystemInfo,
//     required TResult Function(_SetLanguage value) setLanguage,
//     required TResult Function(_DeactivateAccount value) deactivateAccount,
//     required TResult Function(_ContactUs value) contactUs,
//   }) {
//     return updateProfile(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetProfile value)? getProfile,
//     TResult? Function(_UpdateProfile value)? updateProfile,
//     TResult? Function(_ChangePassword value)? changePassword,
//     TResult? Function(_GetLanguages value)? getLanguages,
//     TResult? Function(_GetSystemInfo value)? getSystemInfo,
//     TResult? Function(_SetLanguage value)? setLanguage,
//     TResult? Function(_DeactivateAccount value)? deactivateAccount,
//     TResult? Function(_ContactUs value)? contactUs,
//   }) {
//     return updateProfile?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetProfile value)? getProfile,
//     TResult Function(_UpdateProfile value)? updateProfile,
//     TResult Function(_ChangePassword value)? changePassword,
//     TResult Function(_GetLanguages value)? getLanguages,
//     TResult Function(_GetSystemInfo value)? getSystemInfo,
//     TResult Function(_SetLanguage value)? setLanguage,
//     TResult Function(_DeactivateAccount value)? deactivateAccount,
//     TResult Function(_ContactUs value)? contactUs,
//     required TResult orElse(),
//   }) {
//     if (updateProfile != null) {
//       return updateProfile(this);
//     }
//     return orElse();
//   }
// }

// abstract class _UpdateProfile implements ProfileEvent {
//   const factory _UpdateProfile({
//     required final EditProfileParams editProfileParams,
//   }) = _$UpdateProfileImpl;

//   EditProfileParams get editProfileParams;

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$ChangePasswordImplCopyWith<$Res> {
//   factory _$$ChangePasswordImplCopyWith(
//     _$ChangePasswordImpl value,
//     $Res Function(_$ChangePasswordImpl) then,
//   ) = __$$ChangePasswordImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({ChangePasswordParams changePasswordParams});
// }

// /// @nodoc
// class __$$ChangePasswordImplCopyWithImpl<$Res>
//     extends _$ProfileEventCopyWithImpl<$Res, _$ChangePasswordImpl>
//     implements _$$ChangePasswordImplCopyWith<$Res> {
//   __$$ChangePasswordImplCopyWithImpl(
//     _$ChangePasswordImpl _value,
//     $Res Function(_$ChangePasswordImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? changePasswordParams = null}) {
//     return _then(
//       _$ChangePasswordImpl(
//         changePasswordParams:
//             null == changePasswordParams
//                 ? _value.changePasswordParams
//                 : changePasswordParams // ignore: cast_nullable_to_non_nullable
//                     as ChangePasswordParams,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$ChangePasswordImpl implements _ChangePassword {
//   const _$ChangePasswordImpl({required this.changePasswordParams});

//   @override
//   final ChangePasswordParams changePasswordParams;

//   @override
//   String toString() {
//     return 'ProfileEvent.changePassword(changePasswordParams: $changePasswordParams)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$ChangePasswordImpl &&
//             (identical(other.changePasswordParams, changePasswordParams) ||
//                 other.changePasswordParams == changePasswordParams));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, changePasswordParams);

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
//       __$$ChangePasswordImplCopyWithImpl<_$ChangePasswordImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(bool withLoading) getProfile,
//     required TResult Function(EditProfileParams editProfileParams)
//     updateProfile,
//     required TResult Function(ChangePasswordParams changePasswordParams)
//     changePassword,
//     required TResult Function() getLanguages,
//     required TResult Function() getSystemInfo,
//     required TResult Function(LanguageData language) setLanguage,
//     required TResult Function(String message) deactivateAccount,
//     required TResult Function(ContactUsParams contactUsParam) contactUs,
//   }) {
//     return changePassword(changePasswordParams);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(bool withLoading)? getProfile,
//     TResult? Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult? Function(ChangePasswordParams changePasswordParams)?
//     changePassword,
//     TResult? Function()? getLanguages,
//     TResult? Function()? getSystemInfo,
//     TResult? Function(LanguageData language)? setLanguage,
//     TResult? Function(String message)? deactivateAccount,
//     TResult? Function(ContactUsParams contactUsParam)? contactUs,
//   }) {
//     return changePassword?.call(changePasswordParams);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(bool withLoading)? getProfile,
//     TResult Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult Function(ChangePasswordParams changePasswordParams)? changePassword,
//     TResult Function()? getLanguages,
//     TResult Function()? getSystemInfo,
//     TResult Function(LanguageData language)? setLanguage,
//     TResult Function(String message)? deactivateAccount,
//     TResult Function(ContactUsParams contactUsParam)? contactUs,
//     required TResult orElse(),
//   }) {
//     if (changePassword != null) {
//       return changePassword(changePasswordParams);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetProfile value) getProfile,
//     required TResult Function(_UpdateProfile value) updateProfile,
//     required TResult Function(_ChangePassword value) changePassword,
//     required TResult Function(_GetLanguages value) getLanguages,
//     required TResult Function(_GetSystemInfo value) getSystemInfo,
//     required TResult Function(_SetLanguage value) setLanguage,
//     required TResult Function(_DeactivateAccount value) deactivateAccount,
//     required TResult Function(_ContactUs value) contactUs,
//   }) {
//     return changePassword(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetProfile value)? getProfile,
//     TResult? Function(_UpdateProfile value)? updateProfile,
//     TResult? Function(_ChangePassword value)? changePassword,
//     TResult? Function(_GetLanguages value)? getLanguages,
//     TResult? Function(_GetSystemInfo value)? getSystemInfo,
//     TResult? Function(_SetLanguage value)? setLanguage,
//     TResult? Function(_DeactivateAccount value)? deactivateAccount,
//     TResult? Function(_ContactUs value)? contactUs,
//   }) {
//     return changePassword?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetProfile value)? getProfile,
//     TResult Function(_UpdateProfile value)? updateProfile,
//     TResult Function(_ChangePassword value)? changePassword,
//     TResult Function(_GetLanguages value)? getLanguages,
//     TResult Function(_GetSystemInfo value)? getSystemInfo,
//     TResult Function(_SetLanguage value)? setLanguage,
//     TResult Function(_DeactivateAccount value)? deactivateAccount,
//     TResult Function(_ContactUs value)? contactUs,
//     required TResult orElse(),
//   }) {
//     if (changePassword != null) {
//       return changePassword(this);
//     }
//     return orElse();
//   }
// }

// abstract class _ChangePassword implements ProfileEvent {
//   const factory _ChangePassword({
//     required final ChangePasswordParams changePasswordParams,
//   }) = _$ChangePasswordImpl;

//   ChangePasswordParams get changePasswordParams;

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$GetLanguagesImplCopyWith<$Res> {
//   factory _$$GetLanguagesImplCopyWith(
//     _$GetLanguagesImpl value,
//     $Res Function(_$GetLanguagesImpl) then,
//   ) = __$$GetLanguagesImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$GetLanguagesImplCopyWithImpl<$Res>
//     extends _$ProfileEventCopyWithImpl<$Res, _$GetLanguagesImpl>
//     implements _$$GetLanguagesImplCopyWith<$Res> {
//   __$$GetLanguagesImplCopyWithImpl(
//     _$GetLanguagesImpl _value,
//     $Res Function(_$GetLanguagesImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$GetLanguagesImpl implements _GetLanguages {
//   const _$GetLanguagesImpl();

//   @override
//   String toString() {
//     return 'ProfileEvent.getLanguages()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$GetLanguagesImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(bool withLoading) getProfile,
//     required TResult Function(EditProfileParams editProfileParams)
//     updateProfile,
//     required TResult Function(ChangePasswordParams changePasswordParams)
//     changePassword,
//     required TResult Function() getLanguages,
//     required TResult Function() getSystemInfo,
//     required TResult Function(LanguageData language) setLanguage,
//     required TResult Function(String message) deactivateAccount,
//     required TResult Function(ContactUsParams contactUsParam) contactUs,
//   }) {
//     return getLanguages();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(bool withLoading)? getProfile,
//     TResult? Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult? Function(ChangePasswordParams changePasswordParams)?
//     changePassword,
//     TResult? Function()? getLanguages,
//     TResult? Function()? getSystemInfo,
//     TResult? Function(LanguageData language)? setLanguage,
//     TResult? Function(String message)? deactivateAccount,
//     TResult? Function(ContactUsParams contactUsParam)? contactUs,
//   }) {
//     return getLanguages?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(bool withLoading)? getProfile,
//     TResult Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult Function(ChangePasswordParams changePasswordParams)? changePassword,
//     TResult Function()? getLanguages,
//     TResult Function()? getSystemInfo,
//     TResult Function(LanguageData language)? setLanguage,
//     TResult Function(String message)? deactivateAccount,
//     TResult Function(ContactUsParams contactUsParam)? contactUs,
//     required TResult orElse(),
//   }) {
//     if (getLanguages != null) {
//       return getLanguages();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetProfile value) getProfile,
//     required TResult Function(_UpdateProfile value) updateProfile,
//     required TResult Function(_ChangePassword value) changePassword,
//     required TResult Function(_GetLanguages value) getLanguages,
//     required TResult Function(_GetSystemInfo value) getSystemInfo,
//     required TResult Function(_SetLanguage value) setLanguage,
//     required TResult Function(_DeactivateAccount value) deactivateAccount,
//     required TResult Function(_ContactUs value) contactUs,
//   }) {
//     return getLanguages(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetProfile value)? getProfile,
//     TResult? Function(_UpdateProfile value)? updateProfile,
//     TResult? Function(_ChangePassword value)? changePassword,
//     TResult? Function(_GetLanguages value)? getLanguages,
//     TResult? Function(_GetSystemInfo value)? getSystemInfo,
//     TResult? Function(_SetLanguage value)? setLanguage,
//     TResult? Function(_DeactivateAccount value)? deactivateAccount,
//     TResult? Function(_ContactUs value)? contactUs,
//   }) {
//     return getLanguages?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetProfile value)? getProfile,
//     TResult Function(_UpdateProfile value)? updateProfile,
//     TResult Function(_ChangePassword value)? changePassword,
//     TResult Function(_GetLanguages value)? getLanguages,
//     TResult Function(_GetSystemInfo value)? getSystemInfo,
//     TResult Function(_SetLanguage value)? setLanguage,
//     TResult Function(_DeactivateAccount value)? deactivateAccount,
//     TResult Function(_ContactUs value)? contactUs,
//     required TResult orElse(),
//   }) {
//     if (getLanguages != null) {
//       return getLanguages(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GetLanguages implements ProfileEvent {
//   const factory _GetLanguages() = _$GetLanguagesImpl;
// }

// /// @nodoc
// abstract class _$$GetSystemInfoImplCopyWith<$Res> {
//   factory _$$GetSystemInfoImplCopyWith(
//     _$GetSystemInfoImpl value,
//     $Res Function(_$GetSystemInfoImpl) then,
//   ) = __$$GetSystemInfoImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$GetSystemInfoImplCopyWithImpl<$Res>
//     extends _$ProfileEventCopyWithImpl<$Res, _$GetSystemInfoImpl>
//     implements _$$GetSystemInfoImplCopyWith<$Res> {
//   __$$GetSystemInfoImplCopyWithImpl(
//     _$GetSystemInfoImpl _value,
//     $Res Function(_$GetSystemInfoImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$GetSystemInfoImpl implements _GetSystemInfo {
//   const _$GetSystemInfoImpl();

//   @override
//   String toString() {
//     return 'ProfileEvent.getSystemInfo()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$GetSystemInfoImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(bool withLoading) getProfile,
//     required TResult Function(EditProfileParams editProfileParams)
//     updateProfile,
//     required TResult Function(ChangePasswordParams changePasswordParams)
//     changePassword,
//     required TResult Function() getLanguages,
//     required TResult Function() getSystemInfo,
//     required TResult Function(LanguageData language) setLanguage,
//     required TResult Function(String message) deactivateAccount,
//     required TResult Function(ContactUsParams contactUsParam) contactUs,
//   }) {
//     return getSystemInfo();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(bool withLoading)? getProfile,
//     TResult? Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult? Function(ChangePasswordParams changePasswordParams)?
//     changePassword,
//     TResult? Function()? getLanguages,
//     TResult? Function()? getSystemInfo,
//     TResult? Function(LanguageData language)? setLanguage,
//     TResult? Function(String message)? deactivateAccount,
//     TResult? Function(ContactUsParams contactUsParam)? contactUs,
//   }) {
//     return getSystemInfo?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(bool withLoading)? getProfile,
//     TResult Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult Function(ChangePasswordParams changePasswordParams)? changePassword,
//     TResult Function()? getLanguages,
//     TResult Function()? getSystemInfo,
//     TResult Function(LanguageData language)? setLanguage,
//     TResult Function(String message)? deactivateAccount,
//     TResult Function(ContactUsParams contactUsParam)? contactUs,
//     required TResult orElse(),
//   }) {
//     if (getSystemInfo != null) {
//       return getSystemInfo();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetProfile value) getProfile,
//     required TResult Function(_UpdateProfile value) updateProfile,
//     required TResult Function(_ChangePassword value) changePassword,
//     required TResult Function(_GetLanguages value) getLanguages,
//     required TResult Function(_GetSystemInfo value) getSystemInfo,
//     required TResult Function(_SetLanguage value) setLanguage,
//     required TResult Function(_DeactivateAccount value) deactivateAccount,
//     required TResult Function(_ContactUs value) contactUs,
//   }) {
//     return getSystemInfo(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetProfile value)? getProfile,
//     TResult? Function(_UpdateProfile value)? updateProfile,
//     TResult? Function(_ChangePassword value)? changePassword,
//     TResult? Function(_GetLanguages value)? getLanguages,
//     TResult? Function(_GetSystemInfo value)? getSystemInfo,
//     TResult? Function(_SetLanguage value)? setLanguage,
//     TResult? Function(_DeactivateAccount value)? deactivateAccount,
//     TResult? Function(_ContactUs value)? contactUs,
//   }) {
//     return getSystemInfo?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetProfile value)? getProfile,
//     TResult Function(_UpdateProfile value)? updateProfile,
//     TResult Function(_ChangePassword value)? changePassword,
//     TResult Function(_GetLanguages value)? getLanguages,
//     TResult Function(_GetSystemInfo value)? getSystemInfo,
//     TResult Function(_SetLanguage value)? setLanguage,
//     TResult Function(_DeactivateAccount value)? deactivateAccount,
//     TResult Function(_ContactUs value)? contactUs,
//     required TResult orElse(),
//   }) {
//     if (getSystemInfo != null) {
//       return getSystemInfo(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GetSystemInfo implements ProfileEvent {
//   const factory _GetSystemInfo() = _$GetSystemInfoImpl;
// }

// /// @nodoc
// abstract class _$$SetLanguageImplCopyWith<$Res> {
//   factory _$$SetLanguageImplCopyWith(
//     _$SetLanguageImpl value,
//     $Res Function(_$SetLanguageImpl) then,
//   ) = __$$SetLanguageImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({LanguageData language});
// }

// /// @nodoc
// class __$$SetLanguageImplCopyWithImpl<$Res>
//     extends _$ProfileEventCopyWithImpl<$Res, _$SetLanguageImpl>
//     implements _$$SetLanguageImplCopyWith<$Res> {
//   __$$SetLanguageImplCopyWithImpl(
//     _$SetLanguageImpl _value,
//     $Res Function(_$SetLanguageImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? language = null}) {
//     return _then(
//       _$SetLanguageImpl(
//         language:
//             null == language
//                 ? _value.language
//                 : language // ignore: cast_nullable_to_non_nullable
//                     as LanguageData,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$SetLanguageImpl implements _SetLanguage {
//   const _$SetLanguageImpl({required this.language});

//   @override
//   final LanguageData language;

//   @override
//   String toString() {
//     return 'ProfileEvent.setLanguage(language: $language)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$SetLanguageImpl &&
//             (identical(other.language, language) ||
//                 other.language == language));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, language);

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$SetLanguageImplCopyWith<_$SetLanguageImpl> get copyWith =>
//       __$$SetLanguageImplCopyWithImpl<_$SetLanguageImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(bool withLoading) getProfile,
//     required TResult Function(EditProfileParams editProfileParams)
//     updateProfile,
//     required TResult Function(ChangePasswordParams changePasswordParams)
//     changePassword,
//     required TResult Function() getLanguages,
//     required TResult Function() getSystemInfo,
//     required TResult Function(LanguageData language) setLanguage,
//     required TResult Function(String message) deactivateAccount,
//     required TResult Function(ContactUsParams contactUsParam) contactUs,
//   }) {
//     return setLanguage(language);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(bool withLoading)? getProfile,
//     TResult? Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult? Function(ChangePasswordParams changePasswordParams)?
//     changePassword,
//     TResult? Function()? getLanguages,
//     TResult? Function()? getSystemInfo,
//     TResult? Function(LanguageData language)? setLanguage,
//     TResult? Function(String message)? deactivateAccount,
//     TResult? Function(ContactUsParams contactUsParam)? contactUs,
//   }) {
//     return setLanguage?.call(language);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(bool withLoading)? getProfile,
//     TResult Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult Function(ChangePasswordParams changePasswordParams)? changePassword,
//     TResult Function()? getLanguages,
//     TResult Function()? getSystemInfo,
//     TResult Function(LanguageData language)? setLanguage,
//     TResult Function(String message)? deactivateAccount,
//     TResult Function(ContactUsParams contactUsParam)? contactUs,
//     required TResult orElse(),
//   }) {
//     if (setLanguage != null) {
//       return setLanguage(language);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetProfile value) getProfile,
//     required TResult Function(_UpdateProfile value) updateProfile,
//     required TResult Function(_ChangePassword value) changePassword,
//     required TResult Function(_GetLanguages value) getLanguages,
//     required TResult Function(_GetSystemInfo value) getSystemInfo,
//     required TResult Function(_SetLanguage value) setLanguage,
//     required TResult Function(_DeactivateAccount value) deactivateAccount,
//     required TResult Function(_ContactUs value) contactUs,
//   }) {
//     return setLanguage(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetProfile value)? getProfile,
//     TResult? Function(_UpdateProfile value)? updateProfile,
//     TResult? Function(_ChangePassword value)? changePassword,
//     TResult? Function(_GetLanguages value)? getLanguages,
//     TResult? Function(_GetSystemInfo value)? getSystemInfo,
//     TResult? Function(_SetLanguage value)? setLanguage,
//     TResult? Function(_DeactivateAccount value)? deactivateAccount,
//     TResult? Function(_ContactUs value)? contactUs,
//   }) {
//     return setLanguage?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetProfile value)? getProfile,
//     TResult Function(_UpdateProfile value)? updateProfile,
//     TResult Function(_ChangePassword value)? changePassword,
//     TResult Function(_GetLanguages value)? getLanguages,
//     TResult Function(_GetSystemInfo value)? getSystemInfo,
//     TResult Function(_SetLanguage value)? setLanguage,
//     TResult Function(_DeactivateAccount value)? deactivateAccount,
//     TResult Function(_ContactUs value)? contactUs,
//     required TResult orElse(),
//   }) {
//     if (setLanguage != null) {
//       return setLanguage(this);
//     }
//     return orElse();
//   }
// }

// abstract class _SetLanguage implements ProfileEvent {
//   const factory _SetLanguage({required final LanguageData language}) =
//       _$SetLanguageImpl;

//   LanguageData get language;

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$SetLanguageImplCopyWith<_$SetLanguageImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$DeactivateAccountImplCopyWith<$Res> {
//   factory _$$DeactivateAccountImplCopyWith(
//     _$DeactivateAccountImpl value,
//     $Res Function(_$DeactivateAccountImpl) then,
//   ) = __$$DeactivateAccountImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({String message});
// }

// /// @nodoc
// class __$$DeactivateAccountImplCopyWithImpl<$Res>
//     extends _$ProfileEventCopyWithImpl<$Res, _$DeactivateAccountImpl>
//     implements _$$DeactivateAccountImplCopyWith<$Res> {
//   __$$DeactivateAccountImplCopyWithImpl(
//     _$DeactivateAccountImpl _value,
//     $Res Function(_$DeactivateAccountImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? message = null}) {
//     return _then(
//       _$DeactivateAccountImpl(
//         message:
//             null == message
//                 ? _value.message
//                 : message // ignore: cast_nullable_to_non_nullable
//                     as String,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$DeactivateAccountImpl implements _DeactivateAccount {
//   const _$DeactivateAccountImpl({required this.message});

//   @override
//   final String message;

//   @override
//   String toString() {
//     return 'ProfileEvent.deactivateAccount(message: $message)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$DeactivateAccountImpl &&
//             (identical(other.message, message) || other.message == message));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, message);

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$DeactivateAccountImplCopyWith<_$DeactivateAccountImpl> get copyWith =>
//       __$$DeactivateAccountImplCopyWithImpl<_$DeactivateAccountImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(bool withLoading) getProfile,
//     required TResult Function(EditProfileParams editProfileParams)
//     updateProfile,
//     required TResult Function(ChangePasswordParams changePasswordParams)
//     changePassword,
//     required TResult Function() getLanguages,
//     required TResult Function() getSystemInfo,
//     required TResult Function(LanguageData language) setLanguage,
//     required TResult Function(String message) deactivateAccount,
//     required TResult Function(ContactUsParams contactUsParam) contactUs,
//   }) {
//     return deactivateAccount(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(bool withLoading)? getProfile,
//     TResult? Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult? Function(ChangePasswordParams changePasswordParams)?
//     changePassword,
//     TResult? Function()? getLanguages,
//     TResult? Function()? getSystemInfo,
//     TResult? Function(LanguageData language)? setLanguage,
//     TResult? Function(String message)? deactivateAccount,
//     TResult? Function(ContactUsParams contactUsParam)? contactUs,
//   }) {
//     return deactivateAccount?.call(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(bool withLoading)? getProfile,
//     TResult Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult Function(ChangePasswordParams changePasswordParams)? changePassword,
//     TResult Function()? getLanguages,
//     TResult Function()? getSystemInfo,
//     TResult Function(LanguageData language)? setLanguage,
//     TResult Function(String message)? deactivateAccount,
//     TResult Function(ContactUsParams contactUsParam)? contactUs,
//     required TResult orElse(),
//   }) {
//     if (deactivateAccount != null) {
//       return deactivateAccount(message);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetProfile value) getProfile,
//     required TResult Function(_UpdateProfile value) updateProfile,
//     required TResult Function(_ChangePassword value) changePassword,
//     required TResult Function(_GetLanguages value) getLanguages,
//     required TResult Function(_GetSystemInfo value) getSystemInfo,
//     required TResult Function(_SetLanguage value) setLanguage,
//     required TResult Function(_DeactivateAccount value) deactivateAccount,
//     required TResult Function(_ContactUs value) contactUs,
//   }) {
//     return deactivateAccount(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetProfile value)? getProfile,
//     TResult? Function(_UpdateProfile value)? updateProfile,
//     TResult? Function(_ChangePassword value)? changePassword,
//     TResult? Function(_GetLanguages value)? getLanguages,
//     TResult? Function(_GetSystemInfo value)? getSystemInfo,
//     TResult? Function(_SetLanguage value)? setLanguage,
//     TResult? Function(_DeactivateAccount value)? deactivateAccount,
//     TResult? Function(_ContactUs value)? contactUs,
//   }) {
//     return deactivateAccount?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetProfile value)? getProfile,
//     TResult Function(_UpdateProfile value)? updateProfile,
//     TResult Function(_ChangePassword value)? changePassword,
//     TResult Function(_GetLanguages value)? getLanguages,
//     TResult Function(_GetSystemInfo value)? getSystemInfo,
//     TResult Function(_SetLanguage value)? setLanguage,
//     TResult Function(_DeactivateAccount value)? deactivateAccount,
//     TResult Function(_ContactUs value)? contactUs,
//     required TResult orElse(),
//   }) {
//     if (deactivateAccount != null) {
//       return deactivateAccount(this);
//     }
//     return orElse();
//   }
// }

// abstract class _DeactivateAccount implements ProfileEvent {
//   const factory _DeactivateAccount({required final String message}) =
//       _$DeactivateAccountImpl;

//   String get message;

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$DeactivateAccountImplCopyWith<_$DeactivateAccountImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$ContactUsImplCopyWith<$Res> {
//   factory _$$ContactUsImplCopyWith(
//     _$ContactUsImpl value,
//     $Res Function(_$ContactUsImpl) then,
//   ) = __$$ContactUsImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({ContactUsParams contactUsParam});
// }

// /// @nodoc
// class __$$ContactUsImplCopyWithImpl<$Res>
//     extends _$ProfileEventCopyWithImpl<$Res, _$ContactUsImpl>
//     implements _$$ContactUsImplCopyWith<$Res> {
//   __$$ContactUsImplCopyWithImpl(
//     _$ContactUsImpl _value,
//     $Res Function(_$ContactUsImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? contactUsParam = null}) {
//     return _then(
//       _$ContactUsImpl(
//         contactUsParam:
//             null == contactUsParam
//                 ? _value.contactUsParam
//                 : contactUsParam // ignore: cast_nullable_to_non_nullable
//                     as ContactUsParams,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$ContactUsImpl implements _ContactUs {
//   const _$ContactUsImpl({required this.contactUsParam});

//   @override
//   final ContactUsParams contactUsParam;

//   @override
//   String toString() {
//     return 'ProfileEvent.contactUs(contactUsParam: $contactUsParam)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$ContactUsImpl &&
//             (identical(other.contactUsParam, contactUsParam) ||
//                 other.contactUsParam == contactUsParam));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, contactUsParam);

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$ContactUsImplCopyWith<_$ContactUsImpl> get copyWith =>
//       __$$ContactUsImplCopyWithImpl<_$ContactUsImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(bool withLoading) getProfile,
//     required TResult Function(EditProfileParams editProfileParams)
//     updateProfile,
//     required TResult Function(ChangePasswordParams changePasswordParams)
//     changePassword,
//     required TResult Function() getLanguages,
//     required TResult Function() getSystemInfo,
//     required TResult Function(LanguageData language) setLanguage,
//     required TResult Function(String message) deactivateAccount,
//     required TResult Function(ContactUsParams contactUsParam) contactUs,
//   }) {
//     return contactUs(contactUsParam);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(bool withLoading)? getProfile,
//     TResult? Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult? Function(ChangePasswordParams changePasswordParams)?
//     changePassword,
//     TResult? Function()? getLanguages,
//     TResult? Function()? getSystemInfo,
//     TResult? Function(LanguageData language)? setLanguage,
//     TResult? Function(String message)? deactivateAccount,
//     TResult? Function(ContactUsParams contactUsParam)? contactUs,
//   }) {
//     return contactUs?.call(contactUsParam);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(bool withLoading)? getProfile,
//     TResult Function(EditProfileParams editProfileParams)? updateProfile,
//     TResult Function(ChangePasswordParams changePasswordParams)? changePassword,
//     TResult Function()? getLanguages,
//     TResult Function()? getSystemInfo,
//     TResult Function(LanguageData language)? setLanguage,
//     TResult Function(String message)? deactivateAccount,
//     TResult Function(ContactUsParams contactUsParam)? contactUs,
//     required TResult orElse(),
//   }) {
//     if (contactUs != null) {
//       return contactUs(contactUsParam);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetProfile value) getProfile,
//     required TResult Function(_UpdateProfile value) updateProfile,
//     required TResult Function(_ChangePassword value) changePassword,
//     required TResult Function(_GetLanguages value) getLanguages,
//     required TResult Function(_GetSystemInfo value) getSystemInfo,
//     required TResult Function(_SetLanguage value) setLanguage,
//     required TResult Function(_DeactivateAccount value) deactivateAccount,
//     required TResult Function(_ContactUs value) contactUs,
//   }) {
//     return contactUs(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetProfile value)? getProfile,
//     TResult? Function(_UpdateProfile value)? updateProfile,
//     TResult? Function(_ChangePassword value)? changePassword,
//     TResult? Function(_GetLanguages value)? getLanguages,
//     TResult? Function(_GetSystemInfo value)? getSystemInfo,
//     TResult? Function(_SetLanguage value)? setLanguage,
//     TResult? Function(_DeactivateAccount value)? deactivateAccount,
//     TResult? Function(_ContactUs value)? contactUs,
//   }) {
//     return contactUs?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetProfile value)? getProfile,
//     TResult Function(_UpdateProfile value)? updateProfile,
//     TResult Function(_ChangePassword value)? changePassword,
//     TResult Function(_GetLanguages value)? getLanguages,
//     TResult Function(_GetSystemInfo value)? getSystemInfo,
//     TResult Function(_SetLanguage value)? setLanguage,
//     TResult Function(_DeactivateAccount value)? deactivateAccount,
//     TResult Function(_ContactUs value)? contactUs,
//     required TResult orElse(),
//   }) {
//     if (contactUs != null) {
//       return contactUs(this);
//     }
//     return orElse();
//   }
// }

// abstract class _ContactUs implements ProfileEvent {
//   const factory _ContactUs({required final ContactUsParams contactUsParam}) =
//       _$ContactUsImpl;

//   ContactUsParams get contactUsParam;

//   /// Create a copy of ProfileEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$ContactUsImplCopyWith<_$ContactUsImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// mixin _$ProfileState {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $ProfileStateCopyWith<$Res> {
//   factory $ProfileStateCopyWith(
//     ProfileState value,
//     $Res Function(ProfileState) then,
//   ) = _$ProfileStateCopyWithImpl<$Res, ProfileState>;
// }

// /// @nodoc
// class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
//     implements $ProfileStateCopyWith<$Res> {
//   _$ProfileStateCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of ProfileState
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
//     extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
//     implements _$$InitialImplCopyWith<$Res> {
//   __$$InitialImplCopyWithImpl(
//     _$InitialImpl _value,
//     $Res Function(_$InitialImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$InitialImpl implements _Initial {
//   const _$InitialImpl();

//   @override
//   String toString() {
//     return 'ProfileState.initial()';
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
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return initial();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return initial?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
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
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return initial(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return initial?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Initial implements ProfileState {
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
//     extends _$ProfileStateCopyWithImpl<$Res, _$LoadingImpl>
//     implements _$$LoadingImplCopyWith<$Res> {
//   __$$LoadingImplCopyWithImpl(
//     _$LoadingImpl _value,
//     $Res Function(_$LoadingImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingImpl implements _Loading {
//   const _$LoadingImpl();

//   @override
//   String toString() {
//     return 'ProfileState.loading()';
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
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return loading();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return loading?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
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
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return loading(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return loading?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Loading implements ProfileState {
//   const factory _Loading() = _$LoadingImpl;
// }

// /// @nodoc
// abstract class _$$GetProfileSucceedImplCopyWith<$Res> {
//   factory _$$GetProfileSucceedImplCopyWith(
//     _$GetProfileSucceedImpl value,
//     $Res Function(_$GetProfileSucceedImpl) then,
//   ) = __$$GetProfileSucceedImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({UserData? userData});
// }

// /// @nodoc
// class __$$GetProfileSucceedImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$GetProfileSucceedImpl>
//     implements _$$GetProfileSucceedImplCopyWith<$Res> {
//   __$$GetProfileSucceedImplCopyWithImpl(
//     _$GetProfileSucceedImpl _value,
//     $Res Function(_$GetProfileSucceedImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? userData = freezed}) {
//     return _then(
//       _$GetProfileSucceedImpl(
//         userData:
//             freezed == userData
//                 ? _value.userData
//                 : userData // ignore: cast_nullable_to_non_nullable
//                     as UserData?,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$GetProfileSucceedImpl implements _GetProfileSucceed {
//   const _$GetProfileSucceedImpl({this.userData = null});

//   @override
//   @JsonKey()
//   final UserData? userData;

//   @override
//   String toString() {
//     return 'ProfileState.getProfileSucceed(userData: $userData)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$GetProfileSucceedImpl &&
//             (identical(other.userData, userData) ||
//                 other.userData == userData));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, userData);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$GetProfileSucceedImplCopyWith<_$GetProfileSucceedImpl> get copyWith =>
//       __$$GetProfileSucceedImplCopyWithImpl<_$GetProfileSucceedImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return getProfileSucceed(userData);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return getProfileSucceed?.call(userData);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (getProfileSucceed != null) {
//       return getProfileSucceed(userData);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return getProfileSucceed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return getProfileSucceed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (getProfileSucceed != null) {
//       return getProfileSucceed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GetProfileSucceed implements ProfileState {
//   const factory _GetProfileSucceed({final UserData? userData}) =
//       _$GetProfileSucceedImpl;

//   UserData? get userData;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$GetProfileSucceedImplCopyWith<_$GetProfileSucceedImpl> get copyWith =>
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
//     extends _$ProfileStateCopyWithImpl<$Res, _$FailedImpl>
//     implements _$$FailedImplCopyWith<$Res> {
//   __$$FailedImplCopyWithImpl(
//     _$FailedImpl _value,
//     $Res Function(_$FailedImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
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
//     return 'ProfileState.failed(generalException: $generalException)';
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

//   /// Create a copy of ProfileState
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
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return failed(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return failed?.call(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
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
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return failed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return failed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (failed != null) {
//       return failed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Failed implements ProfileState {
//   const factory _Failed({final GeneralException? generalException}) =
//       _$FailedImpl;

//   GeneralException? get generalException;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$LoadingUpdateProfileImplCopyWith<$Res> {
//   factory _$$LoadingUpdateProfileImplCopyWith(
//     _$LoadingUpdateProfileImpl value,
//     $Res Function(_$LoadingUpdateProfileImpl) then,
//   ) = __$$LoadingUpdateProfileImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$LoadingUpdateProfileImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$LoadingUpdateProfileImpl>
//     implements _$$LoadingUpdateProfileImplCopyWith<$Res> {
//   __$$LoadingUpdateProfileImplCopyWithImpl(
//     _$LoadingUpdateProfileImpl _value,
//     $Res Function(_$LoadingUpdateProfileImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingUpdateProfileImpl implements _LoadingUpdateProfile {
//   const _$LoadingUpdateProfileImpl();

//   @override
//   String toString() {
//     return 'ProfileState.loadingUpdateProfile()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$LoadingUpdateProfileImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return loadingUpdateProfile();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return loadingUpdateProfile?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (loadingUpdateProfile != null) {
//       return loadingUpdateProfile();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return loadingUpdateProfile(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return loadingUpdateProfile?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (loadingUpdateProfile != null) {
//       return loadingUpdateProfile(this);
//     }
//     return orElse();
//   }
// }

// abstract class _LoadingUpdateProfile implements ProfileState {
//   const factory _LoadingUpdateProfile() = _$LoadingUpdateProfileImpl;
// }

// /// @nodoc
// abstract class _$$FailedUpdateProfileImplCopyWith<$Res> {
//   factory _$$FailedUpdateProfileImplCopyWith(
//     _$FailedUpdateProfileImpl value,
//     $Res Function(_$FailedUpdateProfileImpl) then,
//   ) = __$$FailedUpdateProfileImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({GeneralException? generalException});
// }

// /// @nodoc
// class __$$FailedUpdateProfileImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$FailedUpdateProfileImpl>
//     implements _$$FailedUpdateProfileImplCopyWith<$Res> {
//   __$$FailedUpdateProfileImplCopyWithImpl(
//     _$FailedUpdateProfileImpl _value,
//     $Res Function(_$FailedUpdateProfileImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? generalException = freezed}) {
//     return _then(
//       _$FailedUpdateProfileImpl(
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

// class _$FailedUpdateProfileImpl implements _FailedUpdateProfile {
//   const _$FailedUpdateProfileImpl({this.generalException = null});

//   @override
//   @JsonKey()
//   final GeneralException? generalException;

//   @override
//   String toString() {
//     return 'ProfileState.failedUpdateProfile(generalException: $generalException)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$FailedUpdateProfileImpl &&
//             (identical(other.generalException, generalException) ||
//                 other.generalException == generalException));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, generalException);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$FailedUpdateProfileImplCopyWith<_$FailedUpdateProfileImpl> get copyWith =>
//       __$$FailedUpdateProfileImplCopyWithImpl<_$FailedUpdateProfileImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return failedUpdateProfile(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return failedUpdateProfile?.call(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (failedUpdateProfile != null) {
//       return failedUpdateProfile(generalException);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return failedUpdateProfile(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return failedUpdateProfile?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (failedUpdateProfile != null) {
//       return failedUpdateProfile(this);
//     }
//     return orElse();
//   }
// }

// abstract class _FailedUpdateProfile implements ProfileState {
//   const factory _FailedUpdateProfile({
//     final GeneralException? generalException,
//   }) = _$FailedUpdateProfileImpl;

//   GeneralException? get generalException;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$FailedUpdateProfileImplCopyWith<_$FailedUpdateProfileImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$SucceedImplCopyWith<$Res> {
//   factory _$$SucceedImplCopyWith(
//     _$SucceedImpl value,
//     $Res Function(_$SucceedImpl) then,
//   ) = __$$SucceedImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({String? message});
// }

// /// @nodoc
// class __$$SucceedImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$SucceedImpl>
//     implements _$$SucceedImplCopyWith<$Res> {
//   __$$SucceedImplCopyWithImpl(
//     _$SucceedImpl _value,
//     $Res Function(_$SucceedImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? message = freezed}) {
//     return _then(
//       _$SucceedImpl(
//         message:
//             freezed == message
//                 ? _value.message
//                 : message // ignore: cast_nullable_to_non_nullable
//                     as String?,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$SucceedImpl implements _Succeed {
//   const _$SucceedImpl({this.message = null});

//   @override
//   @JsonKey()
//   final String? message;

//   @override
//   String toString() {
//     return 'ProfileState.succeed(message: $message)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$SucceedImpl &&
//             (identical(other.message, message) || other.message == message));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, message);

//   /// Create a copy of ProfileState
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
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return succeed(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return succeed?.call(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (succeed != null) {
//       return succeed(message);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return succeed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return succeed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (succeed != null) {
//       return succeed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Succeed implements ProfileState {
//   const factory _Succeed({final String? message}) = _$SucceedImpl;

//   String? get message;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$SucceedImplCopyWith<_$SucceedImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$ChangePasswordFailedImplCopyWith<$Res> {
//   factory _$$ChangePasswordFailedImplCopyWith(
//     _$ChangePasswordFailedImpl value,
//     $Res Function(_$ChangePasswordFailedImpl) then,
//   ) = __$$ChangePasswordFailedImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({GeneralException? generalException});
// }

// /// @nodoc
// class __$$ChangePasswordFailedImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$ChangePasswordFailedImpl>
//     implements _$$ChangePasswordFailedImplCopyWith<$Res> {
//   __$$ChangePasswordFailedImplCopyWithImpl(
//     _$ChangePasswordFailedImpl _value,
//     $Res Function(_$ChangePasswordFailedImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? generalException = freezed}) {
//     return _then(
//       _$ChangePasswordFailedImpl(
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

// class _$ChangePasswordFailedImpl implements _ChangePasswordFailed {
//   const _$ChangePasswordFailedImpl({this.generalException = null});

//   @override
//   @JsonKey()
//   final GeneralException? generalException;

//   @override
//   String toString() {
//     return 'ProfileState.changePasswordFailed(generalException: $generalException)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$ChangePasswordFailedImpl &&
//             (identical(other.generalException, generalException) ||
//                 other.generalException == generalException));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, generalException);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$ChangePasswordFailedImplCopyWith<_$ChangePasswordFailedImpl>
//   get copyWith =>
//       __$$ChangePasswordFailedImplCopyWithImpl<_$ChangePasswordFailedImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return changePasswordFailed(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return changePasswordFailed?.call(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (changePasswordFailed != null) {
//       return changePasswordFailed(generalException);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return changePasswordFailed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return changePasswordFailed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (changePasswordFailed != null) {
//       return changePasswordFailed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _ChangePasswordFailed implements ProfileState {
//   const factory _ChangePasswordFailed({
//     final GeneralException? generalException,
//   }) = _$ChangePasswordFailedImpl;

//   GeneralException? get generalException;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$ChangePasswordFailedImplCopyWith<_$ChangePasswordFailedImpl>
//   get copyWith => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$ChangePasswordLoadingImplCopyWith<$Res> {
//   factory _$$ChangePasswordLoadingImplCopyWith(
//     _$ChangePasswordLoadingImpl value,
//     $Res Function(_$ChangePasswordLoadingImpl) then,
//   ) = __$$ChangePasswordLoadingImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$ChangePasswordLoadingImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$ChangePasswordLoadingImpl>
//     implements _$$ChangePasswordLoadingImplCopyWith<$Res> {
//   __$$ChangePasswordLoadingImplCopyWithImpl(
//     _$ChangePasswordLoadingImpl _value,
//     $Res Function(_$ChangePasswordLoadingImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$ChangePasswordLoadingImpl implements _ChangePasswordLoading {
//   const _$ChangePasswordLoadingImpl();

//   @override
//   String toString() {
//     return 'ProfileState.changePasswordLoading()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$ChangePasswordLoadingImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return changePasswordLoading();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return changePasswordLoading?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (changePasswordLoading != null) {
//       return changePasswordLoading();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return changePasswordLoading(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return changePasswordLoading?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (changePasswordLoading != null) {
//       return changePasswordLoading(this);
//     }
//     return orElse();
//   }
// }

// abstract class _ChangePasswordLoading implements ProfileState {
//   const factory _ChangePasswordLoading() = _$ChangePasswordLoadingImpl;
// }

// /// @nodoc
// abstract class _$$ChangePasswordSucceedImplCopyWith<$Res> {
//   factory _$$ChangePasswordSucceedImplCopyWith(
//     _$ChangePasswordSucceedImpl value,
//     $Res Function(_$ChangePasswordSucceedImpl) then,
//   ) = __$$ChangePasswordSucceedImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({String? message});
// }

// /// @nodoc
// class __$$ChangePasswordSucceedImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$ChangePasswordSucceedImpl>
//     implements _$$ChangePasswordSucceedImplCopyWith<$Res> {
//   __$$ChangePasswordSucceedImplCopyWithImpl(
//     _$ChangePasswordSucceedImpl _value,
//     $Res Function(_$ChangePasswordSucceedImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? message = freezed}) {
//     return _then(
//       _$ChangePasswordSucceedImpl(
//         message:
//             freezed == message
//                 ? _value.message
//                 : message // ignore: cast_nullable_to_non_nullable
//                     as String?,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$ChangePasswordSucceedImpl implements _ChangePasswordSucceed {
//   const _$ChangePasswordSucceedImpl({this.message = null});

//   @override
//   @JsonKey()
//   final String? message;

//   @override
//   String toString() {
//     return 'ProfileState.changePasswordSucceed(message: $message)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$ChangePasswordSucceedImpl &&
//             (identical(other.message, message) || other.message == message));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, message);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$ChangePasswordSucceedImplCopyWith<_$ChangePasswordSucceedImpl>
//   get copyWith =>
//       __$$ChangePasswordSucceedImplCopyWithImpl<_$ChangePasswordSucceedImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return changePasswordSucceed(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return changePasswordSucceed?.call(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (changePasswordSucceed != null) {
//       return changePasswordSucceed(message);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return changePasswordSucceed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return changePasswordSucceed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (changePasswordSucceed != null) {
//       return changePasswordSucceed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _ChangePasswordSucceed implements ProfileState {
//   const factory _ChangePasswordSucceed({final String? message}) =
//       _$ChangePasswordSucceedImpl;

//   String? get message;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$ChangePasswordSucceedImplCopyWith<_$ChangePasswordSucceedImpl>
//   get copyWith => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$EmailNeedVerifyImplCopyWith<$Res> {
//   factory _$$EmailNeedVerifyImplCopyWith(
//     _$EmailNeedVerifyImpl value,
//     $Res Function(_$EmailNeedVerifyImpl) then,
//   ) = __$$EmailNeedVerifyImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$EmailNeedVerifyImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$EmailNeedVerifyImpl>
//     implements _$$EmailNeedVerifyImplCopyWith<$Res> {
//   __$$EmailNeedVerifyImplCopyWithImpl(
//     _$EmailNeedVerifyImpl _value,
//     $Res Function(_$EmailNeedVerifyImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$EmailNeedVerifyImpl implements _EmailNeedVerify {
//   const _$EmailNeedVerifyImpl();

//   @override
//   String toString() {
//     return 'ProfileState.emailNeedVerify()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$EmailNeedVerifyImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return emailNeedVerify();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return emailNeedVerify?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (emailNeedVerify != null) {
//       return emailNeedVerify();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return emailNeedVerify(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return emailNeedVerify?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (emailNeedVerify != null) {
//       return emailNeedVerify(this);
//     }
//     return orElse();
//   }
// }

// abstract class _EmailNeedVerify implements ProfileState {
//   const factory _EmailNeedVerify() = _$EmailNeedVerifyImpl;
// }

// /// @nodoc
// abstract class _$$LoadingLanguagesImplCopyWith<$Res> {
//   factory _$$LoadingLanguagesImplCopyWith(
//     _$LoadingLanguagesImpl value,
//     $Res Function(_$LoadingLanguagesImpl) then,
//   ) = __$$LoadingLanguagesImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$LoadingLanguagesImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$LoadingLanguagesImpl>
//     implements _$$LoadingLanguagesImplCopyWith<$Res> {
//   __$$LoadingLanguagesImplCopyWithImpl(
//     _$LoadingLanguagesImpl _value,
//     $Res Function(_$LoadingLanguagesImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingLanguagesImpl implements _LoadingLanguages {
//   const _$LoadingLanguagesImpl();

//   @override
//   String toString() {
//     return 'ProfileState.loadingLanguages()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$LoadingLanguagesImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return loadingLanguages();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return loadingLanguages?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (loadingLanguages != null) {
//       return loadingLanguages();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return loadingLanguages(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return loadingLanguages?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (loadingLanguages != null) {
//       return loadingLanguages(this);
//     }
//     return orElse();
//   }
// }

// abstract class _LoadingLanguages implements ProfileState {
//   const factory _LoadingLanguages() = _$LoadingLanguagesImpl;
// }

// /// @nodoc
// abstract class _$$LanguagesFailedImplCopyWith<$Res> {
//   factory _$$LanguagesFailedImplCopyWith(
//     _$LanguagesFailedImpl value,
//     $Res Function(_$LanguagesFailedImpl) then,
//   ) = __$$LanguagesFailedImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({GeneralException? generalException});
// }

// /// @nodoc
// class __$$LanguagesFailedImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$LanguagesFailedImpl>
//     implements _$$LanguagesFailedImplCopyWith<$Res> {
//   __$$LanguagesFailedImplCopyWithImpl(
//     _$LanguagesFailedImpl _value,
//     $Res Function(_$LanguagesFailedImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? generalException = freezed}) {
//     return _then(
//       _$LanguagesFailedImpl(
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

// class _$LanguagesFailedImpl implements _LanguagesFailed {
//   const _$LanguagesFailedImpl({this.generalException = null});

//   @override
//   @JsonKey()
//   final GeneralException? generalException;

//   @override
//   String toString() {
//     return 'ProfileState.languagesFailed(generalException: $generalException)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$LanguagesFailedImpl &&
//             (identical(other.generalException, generalException) ||
//                 other.generalException == generalException));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, generalException);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$LanguagesFailedImplCopyWith<_$LanguagesFailedImpl> get copyWith =>
//       __$$LanguagesFailedImplCopyWithImpl<_$LanguagesFailedImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return languagesFailed(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return languagesFailed?.call(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (languagesFailed != null) {
//       return languagesFailed(generalException);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return languagesFailed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return languagesFailed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (languagesFailed != null) {
//       return languagesFailed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _LanguagesFailed implements ProfileState {
//   const factory _LanguagesFailed({final GeneralException? generalException}) =
//       _$LanguagesFailedImpl;

//   GeneralException? get generalException;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$LanguagesFailedImplCopyWith<_$LanguagesFailedImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$GetLanguagesSucceedImplCopyWith<$Res> {
//   factory _$$GetLanguagesSucceedImplCopyWith(
//     _$GetLanguagesSucceedImpl value,
//     $Res Function(_$GetLanguagesSucceedImpl) then,
//   ) = __$$GetLanguagesSucceedImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({List<LanguageData> languages});
// }

// /// @nodoc
// class __$$GetLanguagesSucceedImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$GetLanguagesSucceedImpl>
//     implements _$$GetLanguagesSucceedImplCopyWith<$Res> {
//   __$$GetLanguagesSucceedImplCopyWithImpl(
//     _$GetLanguagesSucceedImpl _value,
//     $Res Function(_$GetLanguagesSucceedImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? languages = null}) {
//     return _then(
//       _$GetLanguagesSucceedImpl(
//         languages:
//             null == languages
//                 ? _value._languages
//                 : languages // ignore: cast_nullable_to_non_nullable
//                     as List<LanguageData>,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$GetLanguagesSucceedImpl implements _GetLanguagesSucceed {
//   const _$GetLanguagesSucceedImpl({
//     final List<LanguageData> languages = const <LanguageData>[],
//   }) : _languages = languages;

//   final List<LanguageData> _languages;
//   @override
//   @JsonKey()
//   List<LanguageData> get languages {
//     if (_languages is EqualUnmodifiableListView) return _languages;
//     // ignore: implicit_dynamic_type
//     return EqualUnmodifiableListView(_languages);
//   }

//   @override
//   String toString() {
//     return 'ProfileState.getLanguagesSucceed(languages: $languages)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$GetLanguagesSucceedImpl &&
//             const DeepCollectionEquality().equals(
//               other._languages,
//               _languages,
//             ));
//   }

//   @override
//   int get hashCode =>
//       Object.hash(runtimeType, const DeepCollectionEquality().hash(_languages));

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$GetLanguagesSucceedImplCopyWith<_$GetLanguagesSucceedImpl> get copyWith =>
//       __$$GetLanguagesSucceedImplCopyWithImpl<_$GetLanguagesSucceedImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return getLanguagesSucceed(languages);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return getLanguagesSucceed?.call(languages);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (getLanguagesSucceed != null) {
//       return getLanguagesSucceed(languages);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return getLanguagesSucceed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return getLanguagesSucceed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (getLanguagesSucceed != null) {
//       return getLanguagesSucceed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GetLanguagesSucceed implements ProfileState {
//   const factory _GetLanguagesSucceed({final List<LanguageData> languages}) =
//       _$GetLanguagesSucceedImpl;

//   List<LanguageData> get languages;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$GetLanguagesSucceedImplCopyWith<_$GetLanguagesSucceedImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$LoadingSetLanguageImplCopyWith<$Res> {
//   factory _$$LoadingSetLanguageImplCopyWith(
//     _$LoadingSetLanguageImpl value,
//     $Res Function(_$LoadingSetLanguageImpl) then,
//   ) = __$$LoadingSetLanguageImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$LoadingSetLanguageImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$LoadingSetLanguageImpl>
//     implements _$$LoadingSetLanguageImplCopyWith<$Res> {
//   __$$LoadingSetLanguageImplCopyWithImpl(
//     _$LoadingSetLanguageImpl _value,
//     $Res Function(_$LoadingSetLanguageImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingSetLanguageImpl implements _LoadingSetLanguage {
//   const _$LoadingSetLanguageImpl();

//   @override
//   String toString() {
//     return 'ProfileState.loadingSetLanguage()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$LoadingSetLanguageImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return loadingSetLanguage();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return loadingSetLanguage?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (loadingSetLanguage != null) {
//       return loadingSetLanguage();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return loadingSetLanguage(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return loadingSetLanguage?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (loadingSetLanguage != null) {
//       return loadingSetLanguage(this);
//     }
//     return orElse();
//   }
// }

// abstract class _LoadingSetLanguage implements ProfileState {
//   const factory _LoadingSetLanguage() = _$LoadingSetLanguageImpl;
// }

// /// @nodoc
// abstract class _$$SetLanguageFailedImplCopyWith<$Res> {
//   factory _$$SetLanguageFailedImplCopyWith(
//     _$SetLanguageFailedImpl value,
//     $Res Function(_$SetLanguageFailedImpl) then,
//   ) = __$$SetLanguageFailedImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({GeneralException? generalException});
// }

// /// @nodoc
// class __$$SetLanguageFailedImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$SetLanguageFailedImpl>
//     implements _$$SetLanguageFailedImplCopyWith<$Res> {
//   __$$SetLanguageFailedImplCopyWithImpl(
//     _$SetLanguageFailedImpl _value,
//     $Res Function(_$SetLanguageFailedImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? generalException = freezed}) {
//     return _then(
//       _$SetLanguageFailedImpl(
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

// class _$SetLanguageFailedImpl implements _SetLanguageFailed {
//   const _$SetLanguageFailedImpl({this.generalException = null});

//   @override
//   @JsonKey()
//   final GeneralException? generalException;

//   @override
//   String toString() {
//     return 'ProfileState.setLanguageFailed(generalException: $generalException)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$SetLanguageFailedImpl &&
//             (identical(other.generalException, generalException) ||
//                 other.generalException == generalException));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, generalException);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$SetLanguageFailedImplCopyWith<_$SetLanguageFailedImpl> get copyWith =>
//       __$$SetLanguageFailedImplCopyWithImpl<_$SetLanguageFailedImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return setLanguageFailed(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return setLanguageFailed?.call(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (setLanguageFailed != null) {
//       return setLanguageFailed(generalException);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return setLanguageFailed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return setLanguageFailed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (setLanguageFailed != null) {
//       return setLanguageFailed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _SetLanguageFailed implements ProfileState {
//   const factory _SetLanguageFailed({final GeneralException? generalException}) =
//       _$SetLanguageFailedImpl;

//   GeneralException? get generalException;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$SetLanguageFailedImplCopyWith<_$SetLanguageFailedImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$SetLanguageSucceedImplCopyWith<$Res> {
//   factory _$$SetLanguageSucceedImplCopyWith(
//     _$SetLanguageSucceedImpl value,
//     $Res Function(_$SetLanguageSucceedImpl) then,
//   ) = __$$SetLanguageSucceedImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$SetLanguageSucceedImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$SetLanguageSucceedImpl>
//     implements _$$SetLanguageSucceedImplCopyWith<$Res> {
//   __$$SetLanguageSucceedImplCopyWithImpl(
//     _$SetLanguageSucceedImpl _value,
//     $Res Function(_$SetLanguageSucceedImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$SetLanguageSucceedImpl implements _SetLanguageSucceed {
//   const _$SetLanguageSucceedImpl();

//   @override
//   String toString() {
//     return 'ProfileState.setLanguageSucceed()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$SetLanguageSucceedImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return setLanguageSucceed();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return setLanguageSucceed?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (setLanguageSucceed != null) {
//       return setLanguageSucceed();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return setLanguageSucceed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return setLanguageSucceed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (setLanguageSucceed != null) {
//       return setLanguageSucceed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _SetLanguageSucceed implements ProfileState {
//   const factory _SetLanguageSucceed() = _$SetLanguageSucceedImpl;
// }

// /// @nodoc
// abstract class _$$LoadingDeactivateAccountImplCopyWith<$Res> {
//   factory _$$LoadingDeactivateAccountImplCopyWith(
//     _$LoadingDeactivateAccountImpl value,
//     $Res Function(_$LoadingDeactivateAccountImpl) then,
//   ) = __$$LoadingDeactivateAccountImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$LoadingDeactivateAccountImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$LoadingDeactivateAccountImpl>
//     implements _$$LoadingDeactivateAccountImplCopyWith<$Res> {
//   __$$LoadingDeactivateAccountImplCopyWithImpl(
//     _$LoadingDeactivateAccountImpl _value,
//     $Res Function(_$LoadingDeactivateAccountImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingDeactivateAccountImpl implements _LoadingDeactivateAccount {
//   const _$LoadingDeactivateAccountImpl();

//   @override
//   String toString() {
//     return 'ProfileState.loadingDeactivateAccount()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$LoadingDeactivateAccountImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return loadingDeactivateAccount();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return loadingDeactivateAccount?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (loadingDeactivateAccount != null) {
//       return loadingDeactivateAccount();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return loadingDeactivateAccount(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return loadingDeactivateAccount?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (loadingDeactivateAccount != null) {
//       return loadingDeactivateAccount(this);
//     }
//     return orElse();
//   }
// }

// abstract class _LoadingDeactivateAccount implements ProfileState {
//   const factory _LoadingDeactivateAccount() = _$LoadingDeactivateAccountImpl;
// }

// /// @nodoc
// abstract class _$$FailedDeactivateAccountImplCopyWith<$Res> {
//   factory _$$FailedDeactivateAccountImplCopyWith(
//     _$FailedDeactivateAccountImpl value,
//     $Res Function(_$FailedDeactivateAccountImpl) then,
//   ) = __$$FailedDeactivateAccountImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({GeneralException? generalException});
// }

// /// @nodoc
// class __$$FailedDeactivateAccountImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$FailedDeactivateAccountImpl>
//     implements _$$FailedDeactivateAccountImplCopyWith<$Res> {
//   __$$FailedDeactivateAccountImplCopyWithImpl(
//     _$FailedDeactivateAccountImpl _value,
//     $Res Function(_$FailedDeactivateAccountImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? generalException = freezed}) {
//     return _then(
//       _$FailedDeactivateAccountImpl(
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

// class _$FailedDeactivateAccountImpl implements _FailedDeactivateAccount {
//   const _$FailedDeactivateAccountImpl({this.generalException = null});

//   @override
//   @JsonKey()
//   final GeneralException? generalException;

//   @override
//   String toString() {
//     return 'ProfileState.failedDeactivateAccount(generalException: $generalException)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$FailedDeactivateAccountImpl &&
//             (identical(other.generalException, generalException) ||
//                 other.generalException == generalException));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, generalException);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$FailedDeactivateAccountImplCopyWith<_$FailedDeactivateAccountImpl>
//   get copyWith => __$$FailedDeactivateAccountImplCopyWithImpl<
//     _$FailedDeactivateAccountImpl
//   >(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return failedDeactivateAccount(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return failedDeactivateAccount?.call(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (failedDeactivateAccount != null) {
//       return failedDeactivateAccount(generalException);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return failedDeactivateAccount(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return failedDeactivateAccount?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (failedDeactivateAccount != null) {
//       return failedDeactivateAccount(this);
//     }
//     return orElse();
//   }
// }

// abstract class _FailedDeactivateAccount implements ProfileState {
//   const factory _FailedDeactivateAccount({
//     final GeneralException? generalException,
//   }) = _$FailedDeactivateAccountImpl;

//   GeneralException? get generalException;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$FailedDeactivateAccountImplCopyWith<_$FailedDeactivateAccountImpl>
//   get copyWith => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$SucceedDeactivateAccountImplCopyWith<$Res> {
//   factory _$$SucceedDeactivateAccountImplCopyWith(
//     _$SucceedDeactivateAccountImpl value,
//     $Res Function(_$SucceedDeactivateAccountImpl) then,
//   ) = __$$SucceedDeactivateAccountImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({String? message});
// }

// /// @nodoc
// class __$$SucceedDeactivateAccountImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$SucceedDeactivateAccountImpl>
//     implements _$$SucceedDeactivateAccountImplCopyWith<$Res> {
//   __$$SucceedDeactivateAccountImplCopyWithImpl(
//     _$SucceedDeactivateAccountImpl _value,
//     $Res Function(_$SucceedDeactivateAccountImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? message = freezed}) {
//     return _then(
//       _$SucceedDeactivateAccountImpl(
//         message:
//             freezed == message
//                 ? _value.message
//                 : message // ignore: cast_nullable_to_non_nullable
//                     as String?,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$SucceedDeactivateAccountImpl implements _SucceedDeactivateAccount {
//   const _$SucceedDeactivateAccountImpl({this.message = null});

//   @override
//   @JsonKey()
//   final String? message;

//   @override
//   String toString() {
//     return 'ProfileState.succeedDeactivateAccount(message: $message)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$SucceedDeactivateAccountImpl &&
//             (identical(other.message, message) || other.message == message));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, message);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$SucceedDeactivateAccountImplCopyWith<_$SucceedDeactivateAccountImpl>
//   get copyWith => __$$SucceedDeactivateAccountImplCopyWithImpl<
//     _$SucceedDeactivateAccountImpl
//   >(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return succeedDeactivateAccount(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return succeedDeactivateAccount?.call(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (succeedDeactivateAccount != null) {
//       return succeedDeactivateAccount(message);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return succeedDeactivateAccount(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return succeedDeactivateAccount?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (succeedDeactivateAccount != null) {
//       return succeedDeactivateAccount(this);
//     }
//     return orElse();
//   }
// }

// abstract class _SucceedDeactivateAccount implements ProfileState {
//   const factory _SucceedDeactivateAccount({final String? message}) =
//       _$SucceedDeactivateAccountImpl;

//   String? get message;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$SucceedDeactivateAccountImplCopyWith<_$SucceedDeactivateAccountImpl>
//   get copyWith => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$LoadingSystemInfoImplCopyWith<$Res> {
//   factory _$$LoadingSystemInfoImplCopyWith(
//     _$LoadingSystemInfoImpl value,
//     $Res Function(_$LoadingSystemInfoImpl) then,
//   ) = __$$LoadingSystemInfoImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$LoadingSystemInfoImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$LoadingSystemInfoImpl>
//     implements _$$LoadingSystemInfoImplCopyWith<$Res> {
//   __$$LoadingSystemInfoImplCopyWithImpl(
//     _$LoadingSystemInfoImpl _value,
//     $Res Function(_$LoadingSystemInfoImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingSystemInfoImpl implements _LoadingSystemInfo {
//   const _$LoadingSystemInfoImpl();

//   @override
//   String toString() {
//     return 'ProfileState.loadingSystemInfo()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$LoadingSystemInfoImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return loadingSystemInfo();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return loadingSystemInfo?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (loadingSystemInfo != null) {
//       return loadingSystemInfo();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return loadingSystemInfo(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return loadingSystemInfo?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (loadingSystemInfo != null) {
//       return loadingSystemInfo(this);
//     }
//     return orElse();
//   }
// }

// abstract class _LoadingSystemInfo implements ProfileState {
//   const factory _LoadingSystemInfo() = _$LoadingSystemInfoImpl;
// }

// /// @nodoc
// abstract class _$$FailedSystemInfoImplCopyWith<$Res> {
//   factory _$$FailedSystemInfoImplCopyWith(
//     _$FailedSystemInfoImpl value,
//     $Res Function(_$FailedSystemInfoImpl) then,
//   ) = __$$FailedSystemInfoImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({GeneralException? generalException});
// }

// /// @nodoc
// class __$$FailedSystemInfoImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$FailedSystemInfoImpl>
//     implements _$$FailedSystemInfoImplCopyWith<$Res> {
//   __$$FailedSystemInfoImplCopyWithImpl(
//     _$FailedSystemInfoImpl _value,
//     $Res Function(_$FailedSystemInfoImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? generalException = freezed}) {
//     return _then(
//       _$FailedSystemInfoImpl(
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

// class _$FailedSystemInfoImpl implements _FailedSystemInfo {
//   const _$FailedSystemInfoImpl({this.generalException = null});

//   @override
//   @JsonKey()
//   final GeneralException? generalException;

//   @override
//   String toString() {
//     return 'ProfileState.failedSystemInfo(generalException: $generalException)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$FailedSystemInfoImpl &&
//             (identical(other.generalException, generalException) ||
//                 other.generalException == generalException));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, generalException);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$FailedSystemInfoImplCopyWith<_$FailedSystemInfoImpl> get copyWith =>
//       __$$FailedSystemInfoImplCopyWithImpl<_$FailedSystemInfoImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return failedSystemInfo(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return failedSystemInfo?.call(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (failedSystemInfo != null) {
//       return failedSystemInfo(generalException);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return failedSystemInfo(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return failedSystemInfo?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (failedSystemInfo != null) {
//       return failedSystemInfo(this);
//     }
//     return orElse();
//   }
// }

// abstract class _FailedSystemInfo implements ProfileState {
//   const factory _FailedSystemInfo({final GeneralException? generalException}) =
//       _$FailedSystemInfoImpl;

//   GeneralException? get generalException;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$FailedSystemInfoImplCopyWith<_$FailedSystemInfoImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$SucceedSystemInfoImplCopyWith<$Res> {
//   factory _$$SucceedSystemInfoImplCopyWith(
//     _$SucceedSystemInfoImpl value,
//     $Res Function(_$SucceedSystemInfoImpl) then,
//   ) = __$$SucceedSystemInfoImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({SystemInfoModel? data});
// }

// /// @nodoc
// class __$$SucceedSystemInfoImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$SucceedSystemInfoImpl>
//     implements _$$SucceedSystemInfoImplCopyWith<$Res> {
//   __$$SucceedSystemInfoImplCopyWithImpl(
//     _$SucceedSystemInfoImpl _value,
//     $Res Function(_$SucceedSystemInfoImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? data = freezed}) {
//     return _then(
//       _$SucceedSystemInfoImpl(
//         data:
//             freezed == data
//                 ? _value.data
//                 : data // ignore: cast_nullable_to_non_nullable
//                     as SystemInfoModel?,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$SucceedSystemInfoImpl implements _SucceedSystemInfo {
//   const _$SucceedSystemInfoImpl({this.data = null});

//   @override
//   @JsonKey()
//   final SystemInfoModel? data;

//   @override
//   String toString() {
//     return 'ProfileState.succeedSystemInfo(data: $data)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$SucceedSystemInfoImpl &&
//             (identical(other.data, data) || other.data == data));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, data);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$SucceedSystemInfoImplCopyWith<_$SucceedSystemInfoImpl> get copyWith =>
//       __$$SucceedSystemInfoImplCopyWithImpl<_$SucceedSystemInfoImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return succeedSystemInfo(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return succeedSystemInfo?.call(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (succeedSystemInfo != null) {
//       return succeedSystemInfo(data);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return succeedSystemInfo(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return succeedSystemInfo?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (succeedSystemInfo != null) {
//       return succeedSystemInfo(this);
//     }
//     return orElse();
//   }
// }

// abstract class _SucceedSystemInfo implements ProfileState {
//   const factory _SucceedSystemInfo({final SystemInfoModel? data}) =
//       _$SucceedSystemInfoImpl;

//   SystemInfoModel? get data;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$SucceedSystemInfoImplCopyWith<_$SucceedSystemInfoImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$LoadingVerifyAccountImplCopyWith<$Res> {
//   factory _$$LoadingVerifyAccountImplCopyWith(
//     _$LoadingVerifyAccountImpl value,
//     $Res Function(_$LoadingVerifyAccountImpl) then,
//   ) = __$$LoadingVerifyAccountImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$LoadingVerifyAccountImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$LoadingVerifyAccountImpl>
//     implements _$$LoadingVerifyAccountImplCopyWith<$Res> {
//   __$$LoadingVerifyAccountImplCopyWithImpl(
//     _$LoadingVerifyAccountImpl _value,
//     $Res Function(_$LoadingVerifyAccountImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingVerifyAccountImpl implements _LoadingVerifyAccount {
//   const _$LoadingVerifyAccountImpl();

//   @override
//   String toString() {
//     return 'ProfileState.loadingVerifyAccount()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$LoadingVerifyAccountImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return loadingVerifyAccount();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return loadingVerifyAccount?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (loadingVerifyAccount != null) {
//       return loadingVerifyAccount();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return loadingVerifyAccount(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return loadingVerifyAccount?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (loadingVerifyAccount != null) {
//       return loadingVerifyAccount(this);
//     }
//     return orElse();
//   }
// }

// abstract class _LoadingVerifyAccount implements ProfileState {
//   const factory _LoadingVerifyAccount() = _$LoadingVerifyAccountImpl;
// }

// /// @nodoc
// abstract class _$$VerifyAccountSucceedImplCopyWith<$Res> {
//   factory _$$VerifyAccountSucceedImplCopyWith(
//     _$VerifyAccountSucceedImpl value,
//     $Res Function(_$VerifyAccountSucceedImpl) then,
//   ) = __$$VerifyAccountSucceedImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$VerifyAccountSucceedImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$VerifyAccountSucceedImpl>
//     implements _$$VerifyAccountSucceedImplCopyWith<$Res> {
//   __$$VerifyAccountSucceedImplCopyWithImpl(
//     _$VerifyAccountSucceedImpl _value,
//     $Res Function(_$VerifyAccountSucceedImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$VerifyAccountSucceedImpl implements _VerifyAccountSucceed {
//   const _$VerifyAccountSucceedImpl();

//   @override
//   String toString() {
//     return 'ProfileState.verifyAccountSucceed()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$VerifyAccountSucceedImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return verifyAccountSucceed();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return verifyAccountSucceed?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (verifyAccountSucceed != null) {
//       return verifyAccountSucceed();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return verifyAccountSucceed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return verifyAccountSucceed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (verifyAccountSucceed != null) {
//       return verifyAccountSucceed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _VerifyAccountSucceed implements ProfileState {
//   const factory _VerifyAccountSucceed() = _$VerifyAccountSucceedImpl;
// }

// /// @nodoc
// abstract class _$$VerifyAccountFailedImplCopyWith<$Res> {
//   factory _$$VerifyAccountFailedImplCopyWith(
//     _$VerifyAccountFailedImpl value,
//     $Res Function(_$VerifyAccountFailedImpl) then,
//   ) = __$$VerifyAccountFailedImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({GeneralException? generalException});
// }

// /// @nodoc
// class __$$VerifyAccountFailedImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$VerifyAccountFailedImpl>
//     implements _$$VerifyAccountFailedImplCopyWith<$Res> {
//   __$$VerifyAccountFailedImplCopyWithImpl(
//     _$VerifyAccountFailedImpl _value,
//     $Res Function(_$VerifyAccountFailedImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? generalException = freezed}) {
//     return _then(
//       _$VerifyAccountFailedImpl(
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

// class _$VerifyAccountFailedImpl implements _VerifyAccountFailed {
//   const _$VerifyAccountFailedImpl({this.generalException = null});

//   @override
//   @JsonKey()
//   final GeneralException? generalException;

//   @override
//   String toString() {
//     return 'ProfileState.verifyAccountFailed(generalException: $generalException)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$VerifyAccountFailedImpl &&
//             (identical(other.generalException, generalException) ||
//                 other.generalException == generalException));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, generalException);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$VerifyAccountFailedImplCopyWith<_$VerifyAccountFailedImpl> get copyWith =>
//       __$$VerifyAccountFailedImplCopyWithImpl<_$VerifyAccountFailedImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return verifyAccountFailed(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return verifyAccountFailed?.call(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (verifyAccountFailed != null) {
//       return verifyAccountFailed(generalException);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return verifyAccountFailed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return verifyAccountFailed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (verifyAccountFailed != null) {
//       return verifyAccountFailed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _VerifyAccountFailed implements ProfileState {
//   const factory _VerifyAccountFailed({
//     final GeneralException? generalException,
//   }) = _$VerifyAccountFailedImpl;

//   GeneralException? get generalException;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$VerifyAccountFailedImplCopyWith<_$VerifyAccountFailedImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$LoadingResendVerificationCodeImplCopyWith<$Res> {
//   factory _$$LoadingResendVerificationCodeImplCopyWith(
//     _$LoadingResendVerificationCodeImpl value,
//     $Res Function(_$LoadingResendVerificationCodeImpl) then,
//   ) = __$$LoadingResendVerificationCodeImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$LoadingResendVerificationCodeImplCopyWithImpl<$Res>
//     extends
//         _$ProfileStateCopyWithImpl<$Res, _$LoadingResendVerificationCodeImpl>
//     implements _$$LoadingResendVerificationCodeImplCopyWith<$Res> {
//   __$$LoadingResendVerificationCodeImplCopyWithImpl(
//     _$LoadingResendVerificationCodeImpl _value,
//     $Res Function(_$LoadingResendVerificationCodeImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingResendVerificationCodeImpl
//     implements _LoadingResendVerificationCode {
//   const _$LoadingResendVerificationCodeImpl();

//   @override
//   String toString() {
//     return 'ProfileState.loadingResendVerificationCode()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$LoadingResendVerificationCodeImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return loadingResendVerificationCode();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return loadingResendVerificationCode?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (loadingResendVerificationCode != null) {
//       return loadingResendVerificationCode();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return loadingResendVerificationCode(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return loadingResendVerificationCode?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (loadingResendVerificationCode != null) {
//       return loadingResendVerificationCode(this);
//     }
//     return orElse();
//   }
// }

// abstract class _LoadingResendVerificationCode implements ProfileState {
//   const factory _LoadingResendVerificationCode() =
//       _$LoadingResendVerificationCodeImpl;
// }

// /// @nodoc
// abstract class _$$ResendVerificationCodeSucceedImplCopyWith<$Res> {
//   factory _$$ResendVerificationCodeSucceedImplCopyWith(
//     _$ResendVerificationCodeSucceedImpl value,
//     $Res Function(_$ResendVerificationCodeSucceedImpl) then,
//   ) = __$$ResendVerificationCodeSucceedImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({String? message});
// }

// /// @nodoc
// class __$$ResendVerificationCodeSucceedImplCopyWithImpl<$Res>
//     extends
//         _$ProfileStateCopyWithImpl<$Res, _$ResendVerificationCodeSucceedImpl>
//     implements _$$ResendVerificationCodeSucceedImplCopyWith<$Res> {
//   __$$ResendVerificationCodeSucceedImplCopyWithImpl(
//     _$ResendVerificationCodeSucceedImpl _value,
//     $Res Function(_$ResendVerificationCodeSucceedImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? message = freezed}) {
//     return _then(
//       _$ResendVerificationCodeSucceedImpl(
//         message:
//             freezed == message
//                 ? _value.message
//                 : message // ignore: cast_nullable_to_non_nullable
//                     as String?,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$ResendVerificationCodeSucceedImpl
//     implements _ResendVerificationCodeSucceed {
//   const _$ResendVerificationCodeSucceedImpl({this.message = null});

//   @override
//   @JsonKey()
//   final String? message;

//   @override
//   String toString() {
//     return 'ProfileState.resendVerificationCodeSucceed(message: $message)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$ResendVerificationCodeSucceedImpl &&
//             (identical(other.message, message) || other.message == message));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, message);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$ResendVerificationCodeSucceedImplCopyWith<
//     _$ResendVerificationCodeSucceedImpl
//   >
//   get copyWith => __$$ResendVerificationCodeSucceedImplCopyWithImpl<
//     _$ResendVerificationCodeSucceedImpl
//   >(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return resendVerificationCodeSucceed(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return resendVerificationCodeSucceed?.call(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (resendVerificationCodeSucceed != null) {
//       return resendVerificationCodeSucceed(message);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return resendVerificationCodeSucceed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return resendVerificationCodeSucceed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (resendVerificationCodeSucceed != null) {
//       return resendVerificationCodeSucceed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _ResendVerificationCodeSucceed implements ProfileState {
//   const factory _ResendVerificationCodeSucceed({final String? message}) =
//       _$ResendVerificationCodeSucceedImpl;

//   String? get message;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$ResendVerificationCodeSucceedImplCopyWith<
//     _$ResendVerificationCodeSucceedImpl
//   >
//   get copyWith => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$ResendVerificationCodeFailedImplCopyWith<$Res> {
//   factory _$$ResendVerificationCodeFailedImplCopyWith(
//     _$ResendVerificationCodeFailedImpl value,
//     $Res Function(_$ResendVerificationCodeFailedImpl) then,
//   ) = __$$ResendVerificationCodeFailedImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({GeneralException? generalException});
// }

// /// @nodoc
// class __$$ResendVerificationCodeFailedImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$ResendVerificationCodeFailedImpl>
//     implements _$$ResendVerificationCodeFailedImplCopyWith<$Res> {
//   __$$ResendVerificationCodeFailedImplCopyWithImpl(
//     _$ResendVerificationCodeFailedImpl _value,
//     $Res Function(_$ResendVerificationCodeFailedImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? generalException = freezed}) {
//     return _then(
//       _$ResendVerificationCodeFailedImpl(
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

// class _$ResendVerificationCodeFailedImpl
//     implements _ResendVerificationCodeFailed {
//   const _$ResendVerificationCodeFailedImpl({this.generalException = null});

//   @override
//   @JsonKey()
//   final GeneralException? generalException;

//   @override
//   String toString() {
//     return 'ProfileState.resendVerificationCodeFailed(generalException: $generalException)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$ResendVerificationCodeFailedImpl &&
//             (identical(other.generalException, generalException) ||
//                 other.generalException == generalException));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, generalException);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$ResendVerificationCodeFailedImplCopyWith<
//     _$ResendVerificationCodeFailedImpl
//   >
//   get copyWith => __$$ResendVerificationCodeFailedImplCopyWithImpl<
//     _$ResendVerificationCodeFailedImpl
//   >(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return resendVerificationCodeFailed(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return resendVerificationCodeFailed?.call(generalException);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (resendVerificationCodeFailed != null) {
//       return resendVerificationCodeFailed(generalException);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return resendVerificationCodeFailed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return resendVerificationCodeFailed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (resendVerificationCodeFailed != null) {
//       return resendVerificationCodeFailed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _ResendVerificationCodeFailed implements ProfileState {
//   const factory _ResendVerificationCodeFailed({
//     final GeneralException? generalException,
//   }) = _$ResendVerificationCodeFailedImpl;

//   GeneralException? get generalException;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$ResendVerificationCodeFailedImplCopyWith<
//     _$ResendVerificationCodeFailedImpl
//   >
//   get copyWith => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$RemainingTimeForResendImplCopyWith<$Res> {
//   factory _$$RemainingTimeForResendImplCopyWith(
//     _$RemainingTimeForResendImpl value,
//     $Res Function(_$RemainingTimeForResendImpl) then,
//   ) = __$$RemainingTimeForResendImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({int? remainingTime});
// }

// /// @nodoc
// class __$$RemainingTimeForResendImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$RemainingTimeForResendImpl>
//     implements _$$RemainingTimeForResendImplCopyWith<$Res> {
//   __$$RemainingTimeForResendImplCopyWithImpl(
//     _$RemainingTimeForResendImpl _value,
//     $Res Function(_$RemainingTimeForResendImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({Object? remainingTime = freezed}) {
//     return _then(
//       _$RemainingTimeForResendImpl(
//         remainingTime:
//             freezed == remainingTime
//                 ? _value.remainingTime
//                 : remainingTime // ignore: cast_nullable_to_non_nullable
//                     as int?,
//       ),
//     );
//   }
// }

// /// @nodoc

// class _$RemainingTimeForResendImpl implements _RemainingTimeForResend {
//   const _$RemainingTimeForResendImpl({this.remainingTime = 0});

//   @override
//   @JsonKey()
//   final int? remainingTime;

//   @override
//   String toString() {
//     return 'ProfileState.remainingTimeForResend(remainingTime: $remainingTime)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$RemainingTimeForResendImpl &&
//             (identical(other.remainingTime, remainingTime) ||
//                 other.remainingTime == remainingTime));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, remainingTime);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$RemainingTimeForResendImplCopyWith<_$RemainingTimeForResendImpl>
//   get copyWith =>
//       __$$RemainingTimeForResendImplCopyWithImpl<_$RemainingTimeForResendImpl>(
//         this,
//         _$identity,
//       );

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return remainingTimeForResend(remainingTime);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return remainingTimeForResend?.call(remainingTime);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (remainingTimeForResend != null) {
//       return remainingTimeForResend(remainingTime);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return remainingTimeForResend(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return remainingTimeForResend?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (remainingTimeForResend != null) {
//       return remainingTimeForResend(this);
//     }
//     return orElse();
//   }
// }

// abstract class _RemainingTimeForResend implements ProfileState {
//   const factory _RemainingTimeForResend({final int? remainingTime}) =
//       _$RemainingTimeForResendImpl;

//   int? get remainingTime;

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$RemainingTimeForResendImplCopyWith<_$RemainingTimeForResendImpl>
//   get copyWith => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$GuestUserImplCopyWith<$Res> {
//   factory _$$GuestUserImplCopyWith(
//     _$GuestUserImpl value,
//     $Res Function(_$GuestUserImpl) then,
//   ) = __$$GuestUserImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$GuestUserImplCopyWithImpl<$Res>
//     extends _$ProfileStateCopyWithImpl<$Res, _$GuestUserImpl>
//     implements _$$GuestUserImplCopyWith<$Res> {
//   __$$GuestUserImplCopyWithImpl(
//     _$GuestUserImpl _value,
//     $Res Function(_$GuestUserImpl) _then,
//   ) : super(_value, _then);

//   /// Create a copy of ProfileState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$GuestUserImpl implements _GuestUser {
//   const _$GuestUserImpl();

//   @override
//   String toString() {
//     return 'ProfileState.guestUser()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$GuestUserImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(UserData? userData) getProfileSucceed,
//     required TResult Function(GeneralException? generalException) failed,
//     required TResult Function() loadingUpdateProfile,
//     required TResult Function(GeneralException? generalException)
//     failedUpdateProfile,
//     required TResult Function(String? message) succeed,
//     required TResult Function(GeneralException? generalException)
//     changePasswordFailed,
//     required TResult Function() changePasswordLoading,
//     required TResult Function(String? message) changePasswordSucceed,
//     required TResult Function() emailNeedVerify,
//     required TResult Function() loadingLanguages,
//     required TResult Function(GeneralException? generalException)
//     languagesFailed,
//     required TResult Function(List<LanguageData> languages) getLanguagesSucceed,
//     required TResult Function() loadingSetLanguage,
//     required TResult Function(GeneralException? generalException)
//     setLanguageFailed,
//     required TResult Function() setLanguageSucceed,
//     required TResult Function() loadingDeactivateAccount,
//     required TResult Function(GeneralException? generalException)
//     failedDeactivateAccount,
//     required TResult Function(String? message) succeedDeactivateAccount,
//     required TResult Function() loadingSystemInfo,
//     required TResult Function(GeneralException? generalException)
//     failedSystemInfo,
//     required TResult Function(SystemInfoModel? data) succeedSystemInfo,
//     required TResult Function() loadingVerifyAccount,
//     required TResult Function() verifyAccountSucceed,
//     required TResult Function(GeneralException? generalException)
//     verifyAccountFailed,
//     required TResult Function() loadingResendVerificationCode,
//     required TResult Function(String? message) resendVerificationCodeSucceed,
//     required TResult Function(GeneralException? generalException)
//     resendVerificationCodeFailed,
//     required TResult Function(int? remainingTime) remainingTimeForResend,
//     required TResult Function() guestUser,
//   }) {
//     return guestUser();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(UserData? userData)? getProfileSucceed,
//     TResult? Function(GeneralException? generalException)? failed,
//     TResult? Function()? loadingUpdateProfile,
//     TResult? Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult? Function(String? message)? succeed,
//     TResult? Function(GeneralException? generalException)? changePasswordFailed,
//     TResult? Function()? changePasswordLoading,
//     TResult? Function(String? message)? changePasswordSucceed,
//     TResult? Function()? emailNeedVerify,
//     TResult? Function()? loadingLanguages,
//     TResult? Function(GeneralException? generalException)? languagesFailed,
//     TResult? Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult? Function()? loadingSetLanguage,
//     TResult? Function(GeneralException? generalException)? setLanguageFailed,
//     TResult? Function()? setLanguageSucceed,
//     TResult? Function()? loadingDeactivateAccount,
//     TResult? Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult? Function(String? message)? succeedDeactivateAccount,
//     TResult? Function()? loadingSystemInfo,
//     TResult? Function(GeneralException? generalException)? failedSystemInfo,
//     TResult? Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult? Function()? loadingVerifyAccount,
//     TResult? Function()? verifyAccountSucceed,
//     TResult? Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult? Function()? loadingResendVerificationCode,
//     TResult? Function(String? message)? resendVerificationCodeSucceed,
//     TResult? Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult? Function(int? remainingTime)? remainingTimeForResend,
//     TResult? Function()? guestUser,
//   }) {
//     return guestUser?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(UserData? userData)? getProfileSucceed,
//     TResult Function(GeneralException? generalException)? failed,
//     TResult Function()? loadingUpdateProfile,
//     TResult Function(GeneralException? generalException)? failedUpdateProfile,
//     TResult Function(String? message)? succeed,
//     TResult Function(GeneralException? generalException)? changePasswordFailed,
//     TResult Function()? changePasswordLoading,
//     TResult Function(String? message)? changePasswordSucceed,
//     TResult Function()? emailNeedVerify,
//     TResult Function()? loadingLanguages,
//     TResult Function(GeneralException? generalException)? languagesFailed,
//     TResult Function(List<LanguageData> languages)? getLanguagesSucceed,
//     TResult Function()? loadingSetLanguage,
//     TResult Function(GeneralException? generalException)? setLanguageFailed,
//     TResult Function()? setLanguageSucceed,
//     TResult Function()? loadingDeactivateAccount,
//     TResult Function(GeneralException? generalException)?
//     failedDeactivateAccount,
//     TResult Function(String? message)? succeedDeactivateAccount,
//     TResult Function()? loadingSystemInfo,
//     TResult Function(GeneralException? generalException)? failedSystemInfo,
//     TResult Function(SystemInfoModel? data)? succeedSystemInfo,
//     TResult Function()? loadingVerifyAccount,
//     TResult Function()? verifyAccountSucceed,
//     TResult Function(GeneralException? generalException)? verifyAccountFailed,
//     TResult Function()? loadingResendVerificationCode,
//     TResult Function(String? message)? resendVerificationCodeSucceed,
//     TResult Function(GeneralException? generalException)?
//     resendVerificationCodeFailed,
//     TResult Function(int? remainingTime)? remainingTimeForResend,
//     TResult Function()? guestUser,
//     required TResult orElse(),
//   }) {
//     if (guestUser != null) {
//       return guestUser();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GetProfileSucceed value) getProfileSucceed,
//     required TResult Function(_Failed value) failed,
//     required TResult Function(_LoadingUpdateProfile value) loadingUpdateProfile,
//     required TResult Function(_FailedUpdateProfile value) failedUpdateProfile,
//     required TResult Function(_Succeed value) succeed,
//     required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
//     required TResult Function(_ChangePasswordLoading value)
//     changePasswordLoading,
//     required TResult Function(_ChangePasswordSucceed value)
//     changePasswordSucceed,
//     required TResult Function(_EmailNeedVerify value) emailNeedVerify,
//     required TResult Function(_LoadingLanguages value) loadingLanguages,
//     required TResult Function(_LanguagesFailed value) languagesFailed,
//     required TResult Function(_GetLanguagesSucceed value) getLanguagesSucceed,
//     required TResult Function(_LoadingSetLanguage value) loadingSetLanguage,
//     required TResult Function(_SetLanguageFailed value) setLanguageFailed,
//     required TResult Function(_SetLanguageSucceed value) setLanguageSucceed,
//     required TResult Function(_LoadingDeactivateAccount value)
//     loadingDeactivateAccount,
//     required TResult Function(_FailedDeactivateAccount value)
//     failedDeactivateAccount,
//     required TResult Function(_SucceedDeactivateAccount value)
//     succeedDeactivateAccount,
//     required TResult Function(_LoadingSystemInfo value) loadingSystemInfo,
//     required TResult Function(_FailedSystemInfo value) failedSystemInfo,
//     required TResult Function(_SucceedSystemInfo value) succeedSystemInfo,
//     required TResult Function(_LoadingVerifyAccount value) loadingVerifyAccount,
//     required TResult Function(_VerifyAccountSucceed value) verifyAccountSucceed,
//     required TResult Function(_VerifyAccountFailed value) verifyAccountFailed,
//     required TResult Function(_LoadingResendVerificationCode value)
//     loadingResendVerificationCode,
//     required TResult Function(_ResendVerificationCodeSucceed value)
//     resendVerificationCodeSucceed,
//     required TResult Function(_ResendVerificationCodeFailed value)
//     resendVerificationCodeFailed,
//     required TResult Function(_RemainingTimeForResend value)
//     remainingTimeForResend,
//     required TResult Function(_GuestUser value) guestUser,
//   }) {
//     return guestUser(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult? Function(_Failed value)? failed,
//     TResult? Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult? Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult? Function(_Succeed value)? succeed,
//     TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult? Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult? Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult? Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult? Function(_LoadingLanguages value)? loadingLanguages,
//     TResult? Function(_LanguagesFailed value)? languagesFailed,
//     TResult? Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult? Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult? Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult? Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult? Function(_LoadingDeactivateAccount value)?
//     loadingDeactivateAccount,
//     TResult? Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult? Function(_SucceedDeactivateAccount value)?
//     succeedDeactivateAccount,
//     TResult? Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult? Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult? Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult? Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult? Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult? Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult? Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult? Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult? Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult? Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult? Function(_GuestUser value)? guestUser,
//   }) {
//     return guestUser?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GetProfileSucceed value)? getProfileSucceed,
//     TResult Function(_Failed value)? failed,
//     TResult Function(_LoadingUpdateProfile value)? loadingUpdateProfile,
//     TResult Function(_FailedUpdateProfile value)? failedUpdateProfile,
//     TResult Function(_Succeed value)? succeed,
//     TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
//     TResult Function(_ChangePasswordLoading value)? changePasswordLoading,
//     TResult Function(_ChangePasswordSucceed value)? changePasswordSucceed,
//     TResult Function(_EmailNeedVerify value)? emailNeedVerify,
//     TResult Function(_LoadingLanguages value)? loadingLanguages,
//     TResult Function(_LanguagesFailed value)? languagesFailed,
//     TResult Function(_GetLanguagesSucceed value)? getLanguagesSucceed,
//     TResult Function(_LoadingSetLanguage value)? loadingSetLanguage,
//     TResult Function(_SetLanguageFailed value)? setLanguageFailed,
//     TResult Function(_SetLanguageSucceed value)? setLanguageSucceed,
//     TResult Function(_LoadingDeactivateAccount value)? loadingDeactivateAccount,
//     TResult Function(_FailedDeactivateAccount value)? failedDeactivateAccount,
//     TResult Function(_SucceedDeactivateAccount value)? succeedDeactivateAccount,
//     TResult Function(_LoadingSystemInfo value)? loadingSystemInfo,
//     TResult Function(_FailedSystemInfo value)? failedSystemInfo,
//     TResult Function(_SucceedSystemInfo value)? succeedSystemInfo,
//     TResult Function(_LoadingVerifyAccount value)? loadingVerifyAccount,
//     TResult Function(_VerifyAccountSucceed value)? verifyAccountSucceed,
//     TResult Function(_VerifyAccountFailed value)? verifyAccountFailed,
//     TResult Function(_LoadingResendVerificationCode value)?
//     loadingResendVerificationCode,
//     TResult Function(_ResendVerificationCodeSucceed value)?
//     resendVerificationCodeSucceed,
//     TResult Function(_ResendVerificationCodeFailed value)?
//     resendVerificationCodeFailed,
//     TResult Function(_RemainingTimeForResend value)? remainingTimeForResend,
//     TResult Function(_GuestUser value)? guestUser,
//     required TResult orElse(),
//   }) {
//     if (guestUser != null) {
//       return guestUser(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GuestUser implements ProfileState {
//   const factory _GuestUser() = _$GuestUserImpl;
// }
