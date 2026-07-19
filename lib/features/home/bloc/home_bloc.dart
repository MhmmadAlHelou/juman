// import '../../../core/core.dart';
// import '../home.dart';

// part 'home_bloc.freezed.dart';
// part 'home_event.dart';
// part 'home_state.dart';

// class HomeBloc extends Bloc<HomeEvent, HomeState> {
//   HomeBloc(this._homeRepository) : super(const _Initial()) {
//     on<HomeEvent>((HomeEvent event, Emitter<HomeState> emit) async {
//       await event.map(
//         getAds: (_GetAds value) => getAds(event, emit),
//         getHomeAd: (_GetHomeAd value) => getHomeAd(event, emit),
//         clickAds: (_ClickAds value) => clickOnAds(event, emit),
//         filterServices: (_FilterServices value) => filterServices(event, emit),
//         getSubServices: (_GetSubServices value) => getSubServices(event, emit),
//       );
//     });
//   }

//   final HomeRepository _homeRepository;
//   List<ServiceResult> topServices = List<ServiceResult>.from(<ServiceResult>[]);
//   List<ServiceResult> services = List<ServiceResult>.from(<ServiceResult>[]);

//   Future<void> getAds(HomeEvent event, Emitter<HomeState> emit) async {
//     try {
//       event as _$GetAdsImpl;
//       emit(const HomeState.loadingAds());
//       ItemsModel adsModel = await _homeRepository.getAds();

//       emit(HomeState.successAds(results: adsModel.results));
//     } on GeneralException catch (e) {
//       emit(HomeState.failureAds(generalException: e));
//     }
//   }

//   Future<void> getHomeAd(HomeEvent event, Emitter<HomeState> emit) async {
//     try {
//       event as _$GetHomeAdImpl;
//       emit(const HomeState.loadingHomeAd());
//       ItemsModel homeAdModel = await _homeRepository.getHomeAd();

//       emit(HomeState.successHomeAd(result: homeAdModel.results.firstOrNull));
//     } on GeneralException catch (e) {
//       emit(HomeState.failureHomeAd(generalException: e));
//     }
//   }

//   Future<void> clickOnAds(HomeEvent event, Emitter<HomeState> emit) async {
//     try {
//       event as _$ClickAdsImpl;
//       _homeRepository.clickAd(event.adsId);
//     } on GeneralException catch (e) {
//       emit(HomeState.failureClick(generalException: e));
//     }
//   }

//   Future<void> filterServices(HomeEvent event, Emitter<HomeState> emit) async {
//     try {
//       event as _$FilterServicesImpl;
//       if (event.page == 1) {
//         emit(const HomeState.loadingFilteringServices());
//         services.clear();
//       }
//       ServicesModel model = await _homeRepository.filterServices(
//         page: event.page,
//         search: event.search,
//         isFromAdminOnly: event.isFromAdminOnly,
//         hasActiveOrderOnly: event.hasActiveOrderOnly,
//       );
//       services.addAll(model.results);
//       emit(
//         HomeState.successFilteringServices(
//           results: services,
//           currentPage: event.page,
//           hasNext: model.pagination.count! > services.length,
//         ),
//       );
//     } on GeneralException catch (e) {
//       emit(HomeState.failureFilteringServices(generalException: e));
//     }
//   }

//   Future<void> getSubServices(HomeEvent event, Emitter<HomeState> emit) async {
//     try {
//       event as _$GetSubServicesImpl;
//       emit(const HomeState.loadingSubServices());

//       SubServiceModel model = await _homeRepository.serviceById(
//         id: event.serviceId,
//         search: event.search,
//       );

//       emit(HomeState.successSubServices(results: model.results));
//     } on GeneralException catch (e) {
//       emit(HomeState.failureSubServices(generalException: e));
//     }
//   }
// }
