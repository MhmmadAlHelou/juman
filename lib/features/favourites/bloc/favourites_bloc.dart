// import 'package:tallebplus_app/features/Favourites/data/models/Favourites_model.dart';
// import 'package:tallebplus_app/features/favourites/data/favourites_repository.dart';
// import '../../../core/core.dart';
// part 'favourites_bloc.freezed.dart';
// part 'favourites_event.dart';
// part 'favourites_state.dart';

// class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
//   FavouritesBloc(this._favouritesRepository) : super(const _Initial()) {
//     on<FavouritesEvent>((
//       FavouritesEvent event,
//       Emitter<FavouritesState> emit,
//     ) async {
//       await event.map(
//         getAllFavourites:
//             (_GetAllFavourites value) => getFavouritesToView(event, emit),
//         createFavourite:
//             (_CreateFavourite value) => createFavourite(event, emit),
//         deleteFavourite:
//             (_DeleteFavourite value) => deleteFavourite(event, emit),
//       );
//     });
//   }

//   final FavouritesRepository _favouritesRepository;
//   List<FavouriteResult> favourites = <FavouriteResult>[];
//   bool isSigned = PrefData.isSignedIn;
//   CancelToken? _cancelToken;

//   @override
//   Future<void> close() {
//     _cancelToken?.cancel("Bloc closed");
//     return super.close();
//   }

//   Future<void> getFavouritesToView(
//     FavouritesEvent event,
//     Emitter<FavouritesState> emit,
//   ) async {
//     try {
//       event as _$GetAllFavouritesImpl;
//       if (!isSigned) {
//         emit(const FavouritesState.guest());
//         return;
//       }
//       if (event.page == 1) {
//         emit(const FavouritesState.loadingAllFavourites());
//         favourites.clear();
//       }
//       FavouritesModel favouritesModel = await _favouritesRepository
//           .getFavourites(event.page, _cancelToken);
//       favourites.addAll(favouritesModel.results);

//       emit(
//         FavouritesState.successAllFavourites(
//           favourites: favourites,
//           hasNext: favouritesModel.pagination.count! > favourites.length,
//           page: event.page,
//         ),
//       );
//     } on GeneralException catch (e) {
//       emit(FavouritesState.failureAllFavourites(generalException: e));
//     }
//   }

//   Future<void> createFavourite(
//     FavouritesEvent event,
//     Emitter<FavouritesState> emit,
//   ) async {
//     try {
//       event as _$CreateFavouriteImpl;
//       await _favouritesRepository.createFavourite(event.orderId);
//     } on GeneralException catch (e) {
//       emit(FavouritesState.failureCreateFavourite(generalException: e));
//     }
//   }

//   Future<void> deleteFavourite(
//     FavouritesEvent event,
//     Emitter<FavouritesState> emit,
//   ) async {
//     try {
//       event as _$DeleteFavouriteImpl;
//       await _favouritesRepository.deleteFavourite(event.orderId);
//     } on GeneralException catch (e) {
//       emit(FavouritesState.failureDeleteFavourite(generalException: e));
//     }
//   }
// }
