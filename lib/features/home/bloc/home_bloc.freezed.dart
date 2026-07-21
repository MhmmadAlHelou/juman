// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {

 int get page; String get search;
/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeEventCopyWith<HomeEvent> get copyWith => _$HomeEventCopyWithImpl<HomeEvent>(this as HomeEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent&&(identical(other.page, page) || other.page == page)&&(identical(other.search, search) || other.search == search));
}


@override
int get hashCode => Object.hash(runtimeType,page,search);

@override
String toString() {
  return 'HomeEvent(page: $page, search: $search)';
}


}

/// @nodoc
abstract mixin class $HomeEventCopyWith<$Res>  {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) _then) = _$HomeEventCopyWithImpl;
@useResult
$Res call({
 int page, String search
});




}
/// @nodoc
class _$HomeEventCopyWithImpl<$Res>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._self, this._then);

  final HomeEvent _self;
  final $Res Function(HomeEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? search = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,search: null == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FilterServices value)?  filterServices,TResult Function( _GetSubServices value)?  getSubServices,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterServices() when filterServices != null:
return filterServices(_that);case _GetSubServices() when getSubServices != null:
return getSubServices(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FilterServices value)  filterServices,required TResult Function( _GetSubServices value)  getSubServices,}){
final _that = this;
switch (_that) {
case _FilterServices():
return filterServices(_that);case _GetSubServices():
return getSubServices(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FilterServices value)?  filterServices,TResult? Function( _GetSubServices value)?  getSubServices,}){
final _that = this;
switch (_that) {
case _FilterServices() when filterServices != null:
return filterServices(_that);case _GetSubServices() when getSubServices != null:
return getSubServices(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page,  String search,  bool? isFromAdminOnly,  bool? hasActiveOrderOnly)?  filterServices,TResult Function( int page,  String search,  String serviceId)?  getSubServices,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterServices() when filterServices != null:
return filterServices(_that.page,_that.search,_that.isFromAdminOnly,_that.hasActiveOrderOnly);case _GetSubServices() when getSubServices != null:
return getSubServices(_that.page,_that.search,_that.serviceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page,  String search,  bool? isFromAdminOnly,  bool? hasActiveOrderOnly)  filterServices,required TResult Function( int page,  String search,  String serviceId)  getSubServices,}) {final _that = this;
switch (_that) {
case _FilterServices():
return filterServices(_that.page,_that.search,_that.isFromAdminOnly,_that.hasActiveOrderOnly);case _GetSubServices():
return getSubServices(_that.page,_that.search,_that.serviceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page,  String search,  bool? isFromAdminOnly,  bool? hasActiveOrderOnly)?  filterServices,TResult? Function( int page,  String search,  String serviceId)?  getSubServices,}) {final _that = this;
switch (_that) {
case _FilterServices() when filterServices != null:
return filterServices(_that.page,_that.search,_that.isFromAdminOnly,_that.hasActiveOrderOnly);case _GetSubServices() when getSubServices != null:
return getSubServices(_that.page,_that.search,_that.serviceId);case _:
  return null;

}
}

}

/// @nodoc


class _FilterServices implements HomeEvent {
  const _FilterServices({this.page = 1, this.search = "", this.isFromAdminOnly, this.hasActiveOrderOnly});
  

@override@JsonKey() final  int page;
@override@JsonKey() final  String search;
 final  bool? isFromAdminOnly;
 final  bool? hasActiveOrderOnly;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterServicesCopyWith<_FilterServices> get copyWith => __$FilterServicesCopyWithImpl<_FilterServices>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterServices&&(identical(other.page, page) || other.page == page)&&(identical(other.search, search) || other.search == search)&&(identical(other.isFromAdminOnly, isFromAdminOnly) || other.isFromAdminOnly == isFromAdminOnly)&&(identical(other.hasActiveOrderOnly, hasActiveOrderOnly) || other.hasActiveOrderOnly == hasActiveOrderOnly));
}


@override
int get hashCode => Object.hash(runtimeType,page,search,isFromAdminOnly,hasActiveOrderOnly);

@override
String toString() {
  return 'HomeEvent.filterServices(page: $page, search: $search, isFromAdminOnly: $isFromAdminOnly, hasActiveOrderOnly: $hasActiveOrderOnly)';
}


}

/// @nodoc
abstract mixin class _$FilterServicesCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$FilterServicesCopyWith(_FilterServices value, $Res Function(_FilterServices) _then) = __$FilterServicesCopyWithImpl;
@override @useResult
$Res call({
 int page, String search, bool? isFromAdminOnly, bool? hasActiveOrderOnly
});




}
/// @nodoc
class __$FilterServicesCopyWithImpl<$Res>
    implements _$FilterServicesCopyWith<$Res> {
  __$FilterServicesCopyWithImpl(this._self, this._then);

  final _FilterServices _self;
  final $Res Function(_FilterServices) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? search = null,Object? isFromAdminOnly = freezed,Object? hasActiveOrderOnly = freezed,}) {
  return _then(_FilterServices(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,search: null == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String,isFromAdminOnly: freezed == isFromAdminOnly ? _self.isFromAdminOnly : isFromAdminOnly // ignore: cast_nullable_to_non_nullable
as bool?,hasActiveOrderOnly: freezed == hasActiveOrderOnly ? _self.hasActiveOrderOnly : hasActiveOrderOnly // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class _GetSubServices implements HomeEvent {
  const _GetSubServices({this.page = 1, this.search = "", required this.serviceId});
  

@override@JsonKey() final  int page;
@override@JsonKey() final  String search;
 final  String serviceId;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSubServicesCopyWith<_GetSubServices> get copyWith => __$GetSubServicesCopyWithImpl<_GetSubServices>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSubServices&&(identical(other.page, page) || other.page == page)&&(identical(other.search, search) || other.search == search)&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId));
}


@override
int get hashCode => Object.hash(runtimeType,page,search,serviceId);

@override
String toString() {
  return 'HomeEvent.getSubServices(page: $page, search: $search, serviceId: $serviceId)';
}


}

/// @nodoc
abstract mixin class _$GetSubServicesCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$GetSubServicesCopyWith(_GetSubServices value, $Res Function(_GetSubServices) _then) = __$GetSubServicesCopyWithImpl;
@override @useResult
$Res call({
 int page, String search, String serviceId
});




}
/// @nodoc
class __$GetSubServicesCopyWithImpl<$Res>
    implements _$GetSubServicesCopyWith<$Res> {
  __$GetSubServicesCopyWithImpl(this._self, this._then);

  final _GetSubServices _self;
  final $Res Function(_GetSubServices) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? search = null,Object? serviceId = null,}) {
  return _then(_GetSubServices(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,search: null == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String,serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LoadingFilteringServices value)?  loadingFilteringServices,TResult Function( _SuccessFilteringServices value)?  successFilteringServices,TResult Function( _FailureFilteringServices value)?  failureFilteringServices,TResult Function( _LoadingSubServices value)?  loadingSubServices,TResult Function( _SuccessSubServices value)?  successSubServices,TResult Function( _FailureSubServices value)?  failureSubServices,TResult Function( _LoadingClick value)?  loadingClick,TResult Function( _SuccessClick value)?  successClick,TResult Function( _FailureClick value)?  failureClick,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingFilteringServices() when loadingFilteringServices != null:
return loadingFilteringServices(_that);case _SuccessFilteringServices() when successFilteringServices != null:
return successFilteringServices(_that);case _FailureFilteringServices() when failureFilteringServices != null:
return failureFilteringServices(_that);case _LoadingSubServices() when loadingSubServices != null:
return loadingSubServices(_that);case _SuccessSubServices() when successSubServices != null:
return successSubServices(_that);case _FailureSubServices() when failureSubServices != null:
return failureSubServices(_that);case _LoadingClick() when loadingClick != null:
return loadingClick(_that);case _SuccessClick() when successClick != null:
return successClick(_that);case _FailureClick() when failureClick != null:
return failureClick(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LoadingFilteringServices value)  loadingFilteringServices,required TResult Function( _SuccessFilteringServices value)  successFilteringServices,required TResult Function( _FailureFilteringServices value)  failureFilteringServices,required TResult Function( _LoadingSubServices value)  loadingSubServices,required TResult Function( _SuccessSubServices value)  successSubServices,required TResult Function( _FailureSubServices value)  failureSubServices,required TResult Function( _LoadingClick value)  loadingClick,required TResult Function( _SuccessClick value)  successClick,required TResult Function( _FailureClick value)  failureClick,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LoadingFilteringServices():
return loadingFilteringServices(_that);case _SuccessFilteringServices():
return successFilteringServices(_that);case _FailureFilteringServices():
return failureFilteringServices(_that);case _LoadingSubServices():
return loadingSubServices(_that);case _SuccessSubServices():
return successSubServices(_that);case _FailureSubServices():
return failureSubServices(_that);case _LoadingClick():
return loadingClick(_that);case _SuccessClick():
return successClick(_that);case _FailureClick():
return failureClick(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LoadingFilteringServices value)?  loadingFilteringServices,TResult? Function( _SuccessFilteringServices value)?  successFilteringServices,TResult? Function( _FailureFilteringServices value)?  failureFilteringServices,TResult? Function( _LoadingSubServices value)?  loadingSubServices,TResult? Function( _SuccessSubServices value)?  successSubServices,TResult? Function( _FailureSubServices value)?  failureSubServices,TResult? Function( _LoadingClick value)?  loadingClick,TResult? Function( _SuccessClick value)?  successClick,TResult? Function( _FailureClick value)?  failureClick,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingFilteringServices() when loadingFilteringServices != null:
return loadingFilteringServices(_that);case _SuccessFilteringServices() when successFilteringServices != null:
return successFilteringServices(_that);case _FailureFilteringServices() when failureFilteringServices != null:
return failureFilteringServices(_that);case _LoadingSubServices() when loadingSubServices != null:
return loadingSubServices(_that);case _SuccessSubServices() when successSubServices != null:
return successSubServices(_that);case _FailureSubServices() when failureSubServices != null:
return failureSubServices(_that);case _LoadingClick() when loadingClick != null:
return loadingClick(_that);case _SuccessClick() when successClick != null:
return successClick(_that);case _FailureClick() when failureClick != null:
return failureClick(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingFilteringServices,TResult Function( List<ServiceResult> results,  bool hasNext,  int currentPage)?  successFilteringServices,TResult Function( GeneralException? generalException)?  failureFilteringServices,TResult Function()?  loadingSubServices,TResult Function( ServiceResult? results)?  successSubServices,TResult Function( GeneralException? generalException)?  failureSubServices,TResult Function()?  loadingClick,TResult Function()?  successClick,TResult Function( GeneralException? generalException)?  failureClick,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingFilteringServices() when loadingFilteringServices != null:
return loadingFilteringServices();case _SuccessFilteringServices() when successFilteringServices != null:
return successFilteringServices(_that.results,_that.hasNext,_that.currentPage);case _FailureFilteringServices() when failureFilteringServices != null:
return failureFilteringServices(_that.generalException);case _LoadingSubServices() when loadingSubServices != null:
return loadingSubServices();case _SuccessSubServices() when successSubServices != null:
return successSubServices(_that.results);case _FailureSubServices() when failureSubServices != null:
return failureSubServices(_that.generalException);case _LoadingClick() when loadingClick != null:
return loadingClick();case _SuccessClick() when successClick != null:
return successClick();case _FailureClick() when failureClick != null:
return failureClick(_that.generalException);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingFilteringServices,required TResult Function( List<ServiceResult> results,  bool hasNext,  int currentPage)  successFilteringServices,required TResult Function( GeneralException? generalException)  failureFilteringServices,required TResult Function()  loadingSubServices,required TResult Function( ServiceResult? results)  successSubServices,required TResult Function( GeneralException? generalException)  failureSubServices,required TResult Function()  loadingClick,required TResult Function()  successClick,required TResult Function( GeneralException? generalException)  failureClick,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LoadingFilteringServices():
return loadingFilteringServices();case _SuccessFilteringServices():
return successFilteringServices(_that.results,_that.hasNext,_that.currentPage);case _FailureFilteringServices():
return failureFilteringServices(_that.generalException);case _LoadingSubServices():
return loadingSubServices();case _SuccessSubServices():
return successSubServices(_that.results);case _FailureSubServices():
return failureSubServices(_that.generalException);case _LoadingClick():
return loadingClick();case _SuccessClick():
return successClick();case _FailureClick():
return failureClick(_that.generalException);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingFilteringServices,TResult? Function( List<ServiceResult> results,  bool hasNext,  int currentPage)?  successFilteringServices,TResult? Function( GeneralException? generalException)?  failureFilteringServices,TResult? Function()?  loadingSubServices,TResult? Function( ServiceResult? results)?  successSubServices,TResult? Function( GeneralException? generalException)?  failureSubServices,TResult? Function()?  loadingClick,TResult? Function()?  successClick,TResult? Function( GeneralException? generalException)?  failureClick,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingFilteringServices() when loadingFilteringServices != null:
return loadingFilteringServices();case _SuccessFilteringServices() when successFilteringServices != null:
return successFilteringServices(_that.results,_that.hasNext,_that.currentPage);case _FailureFilteringServices() when failureFilteringServices != null:
return failureFilteringServices(_that.generalException);case _LoadingSubServices() when loadingSubServices != null:
return loadingSubServices();case _SuccessSubServices() when successSubServices != null:
return successSubServices(_that.results);case _FailureSubServices() when failureSubServices != null:
return failureSubServices(_that.generalException);case _LoadingClick() when loadingClick != null:
return loadingClick();case _SuccessClick() when successClick != null:
return successClick();case _FailureClick() when failureClick != null:
return failureClick(_that.generalException);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class _LoadingFilteringServices implements HomeState {
  const _LoadingFilteringServices();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingFilteringServices);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loadingFilteringServices()';
}


}




/// @nodoc


class _SuccessFilteringServices implements HomeState {
  const _SuccessFilteringServices({final  List<ServiceResult> results = const <ServiceResult>[], this.hasNext = false, this.currentPage = 1}): _results = results;
  

 final  List<ServiceResult> _results;
@JsonKey() List<ServiceResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@JsonKey() final  bool hasNext;
@JsonKey() final  int currentPage;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessFilteringServicesCopyWith<_SuccessFilteringServices> get copyWith => __$SuccessFilteringServicesCopyWithImpl<_SuccessFilteringServices>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuccessFilteringServices&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results),hasNext,currentPage);

@override
String toString() {
  return 'HomeState.successFilteringServices(results: $results, hasNext: $hasNext, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class _$SuccessFilteringServicesCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$SuccessFilteringServicesCopyWith(_SuccessFilteringServices value, $Res Function(_SuccessFilteringServices) _then) = __$SuccessFilteringServicesCopyWithImpl;
@useResult
$Res call({
 List<ServiceResult> results, bool hasNext, int currentPage
});




}
/// @nodoc
class __$SuccessFilteringServicesCopyWithImpl<$Res>
    implements _$SuccessFilteringServicesCopyWith<$Res> {
  __$SuccessFilteringServicesCopyWithImpl(this._self, this._then);

  final _SuccessFilteringServices _self;
  final $Res Function(_SuccessFilteringServices) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? results = null,Object? hasNext = null,Object? currentPage = null,}) {
  return _then(_SuccessFilteringServices(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<ServiceResult>,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _FailureFilteringServices implements HomeState {
  const _FailureFilteringServices({this.generalException = null});
  

@JsonKey() final  GeneralException? generalException;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureFilteringServicesCopyWith<_FailureFilteringServices> get copyWith => __$FailureFilteringServicesCopyWithImpl<_FailureFilteringServices>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FailureFilteringServices&&(identical(other.generalException, generalException) || other.generalException == generalException));
}


@override
int get hashCode => Object.hash(runtimeType,generalException);

@override
String toString() {
  return 'HomeState.failureFilteringServices(generalException: $generalException)';
}


}

/// @nodoc
abstract mixin class _$FailureFilteringServicesCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$FailureFilteringServicesCopyWith(_FailureFilteringServices value, $Res Function(_FailureFilteringServices) _then) = __$FailureFilteringServicesCopyWithImpl;
@useResult
$Res call({
 GeneralException? generalException
});




}
/// @nodoc
class __$FailureFilteringServicesCopyWithImpl<$Res>
    implements _$FailureFilteringServicesCopyWith<$Res> {
  __$FailureFilteringServicesCopyWithImpl(this._self, this._then);

  final _FailureFilteringServices _self;
  final $Res Function(_FailureFilteringServices) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? generalException = freezed,}) {
  return _then(_FailureFilteringServices(
generalException: freezed == generalException ? _self.generalException : generalException // ignore: cast_nullable_to_non_nullable
as GeneralException?,
  ));
}


}

/// @nodoc


class _LoadingSubServices implements HomeState {
  const _LoadingSubServices();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingSubServices);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loadingSubServices()';
}


}




/// @nodoc


class _SuccessSubServices implements HomeState {
  const _SuccessSubServices({this.results = null});
  

@JsonKey() final  ServiceResult? results;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessSubServicesCopyWith<_SuccessSubServices> get copyWith => __$SuccessSubServicesCopyWithImpl<_SuccessSubServices>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuccessSubServices&&(identical(other.results, results) || other.results == results));
}


@override
int get hashCode => Object.hash(runtimeType,results);

@override
String toString() {
  return 'HomeState.successSubServices(results: $results)';
}


}

/// @nodoc
abstract mixin class _$SuccessSubServicesCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$SuccessSubServicesCopyWith(_SuccessSubServices value, $Res Function(_SuccessSubServices) _then) = __$SuccessSubServicesCopyWithImpl;
@useResult
$Res call({
 ServiceResult? results
});




}
/// @nodoc
class __$SuccessSubServicesCopyWithImpl<$Res>
    implements _$SuccessSubServicesCopyWith<$Res> {
  __$SuccessSubServicesCopyWithImpl(this._self, this._then);

  final _SuccessSubServices _self;
  final $Res Function(_SuccessSubServices) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? results = freezed,}) {
  return _then(_SuccessSubServices(
results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as ServiceResult?,
  ));
}


}

/// @nodoc


class _FailureSubServices implements HomeState {
  const _FailureSubServices({this.generalException = null});
  

@JsonKey() final  GeneralException? generalException;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureSubServicesCopyWith<_FailureSubServices> get copyWith => __$FailureSubServicesCopyWithImpl<_FailureSubServices>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FailureSubServices&&(identical(other.generalException, generalException) || other.generalException == generalException));
}


@override
int get hashCode => Object.hash(runtimeType,generalException);

@override
String toString() {
  return 'HomeState.failureSubServices(generalException: $generalException)';
}


}

/// @nodoc
abstract mixin class _$FailureSubServicesCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$FailureSubServicesCopyWith(_FailureSubServices value, $Res Function(_FailureSubServices) _then) = __$FailureSubServicesCopyWithImpl;
@useResult
$Res call({
 GeneralException? generalException
});




}
/// @nodoc
class __$FailureSubServicesCopyWithImpl<$Res>
    implements _$FailureSubServicesCopyWith<$Res> {
  __$FailureSubServicesCopyWithImpl(this._self, this._then);

  final _FailureSubServices _self;
  final $Res Function(_FailureSubServices) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? generalException = freezed,}) {
  return _then(_FailureSubServices(
generalException: freezed == generalException ? _self.generalException : generalException // ignore: cast_nullable_to_non_nullable
as GeneralException?,
  ));
}


}

/// @nodoc


class _LoadingClick implements HomeState {
  const _LoadingClick();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingClick);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loadingClick()';
}


}




/// @nodoc


class _SuccessClick implements HomeState {
  const _SuccessClick();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuccessClick);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.successClick()';
}


}




/// @nodoc


class _FailureClick implements HomeState {
  const _FailureClick({this.generalException = null});
  

@JsonKey() final  GeneralException? generalException;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureClickCopyWith<_FailureClick> get copyWith => __$FailureClickCopyWithImpl<_FailureClick>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FailureClick&&(identical(other.generalException, generalException) || other.generalException == generalException));
}


@override
int get hashCode => Object.hash(runtimeType,generalException);

@override
String toString() {
  return 'HomeState.failureClick(generalException: $generalException)';
}


}

/// @nodoc
abstract mixin class _$FailureClickCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$FailureClickCopyWith(_FailureClick value, $Res Function(_FailureClick) _then) = __$FailureClickCopyWithImpl;
@useResult
$Res call({
 GeneralException? generalException
});




}
/// @nodoc
class __$FailureClickCopyWithImpl<$Res>
    implements _$FailureClickCopyWith<$Res> {
  __$FailureClickCopyWithImpl(this._self, this._then);

  final _FailureClick _self;
  final $Res Function(_FailureClick) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? generalException = freezed,}) {
  return _then(_FailureClick(
generalException: freezed == generalException ? _self.generalException : generalException // ignore: cast_nullable_to_non_nullable
as GeneralException?,
  ));
}


}

// dart format on
