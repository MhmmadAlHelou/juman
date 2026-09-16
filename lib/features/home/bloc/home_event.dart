part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const HomeEvent._(); /////////

  // const factory HomeEvent.getAds() = _GetAds;

  // const factory HomeEvent.getHomeAd() = _GetHomeAd;

  // const factory HomeEvent.clickAds({required String adsId}) = _ClickAds;

  const factory HomeEvent.filterServices({
    @Default(1) int page,
    @Default("") String search,
    bool? isFromAdminOnly,
    bool? hasActiveOrderOnly,
  }) = _FilterServices;

  const factory HomeEvent.getSubServices({
    @Default(1) int page,
    @Default("") String search,
    required String serviceId,
  }) = _GetSubServices;

  @override
  // TODO: implement page
  int get page => throw UnimplementedError();

  @override
  // TODO: implement search
  String get search => throw UnimplementedError();
}
