part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  // const factory HomeState.loadingAds() = _LoadingAds;
  // const factory HomeState.successAds({
  //   @Default(<ItemResult>[]) List<ItemResult> results,
  // }) = _SuccessAds;
  // const factory HomeState.failureAds({
  //   @Default(null) GeneralException? generalException,
  // }) = _FailureAds;

  // const factory HomeState.loadingHomeAd() = _LoadingHomeAd;
  // const factory HomeState.successHomeAd({@Default(null) ItemResult? result}) =
  //     _SuccessHomeAd;
  // const factory HomeState.failureHomeAd({
  //   @Default(null) GeneralException? generalException,
  // }) = _FailureHomeAd;

  const factory HomeState.loadingFilteringServices() =
      _LoadingFilteringServices;
  const factory HomeState.successFilteringServices({
    @Default(<ServiceResult>[]) List<ServiceResult> results,
    @Default(false) bool hasNext,
    @Default(1) int currentPage,
  }) = _SuccessFilteringServices;
  const factory HomeState.failureFilteringServices({
    @Default(null) GeneralException? generalException,
  }) = _FailureFilteringServices;

  const factory HomeState.loadingSubServices() = _LoadingSubServices;
  const factory HomeState.successSubServices({
    @Default(null) ServiceResult? results,
  }) = _SuccessSubServices;
  const factory HomeState.failureSubServices({
    @Default(null) GeneralException? generalException,
  }) = _FailureSubServices;

  const factory HomeState.loadingClick() = _LoadingClick;
  const factory HomeState.successClick() = _SuccessClick;
  const factory HomeState.failureClick({
    @Default(null) GeneralException? generalException,
  }) = _FailureClick;
}
