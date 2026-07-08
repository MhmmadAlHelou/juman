// import 'package:tallebplus_app/features/Favourites/data/models/Favourites_model.dart';

// import '../../../core/core.dart';

// class FavouritesRepository {
//   final DioClient _dioClient;

//   FavouritesRepository(this._dioClient);

//   Future<FavouritesModel> getFavourites(
//     int page,
//     CancelToken? cancelToken,
//   ) async {
//     Response<dynamic> response = await _dioClient.sendRequest(
//       RequestType.get,
//       EndPoint.favourites,
//       cancelToken: cancelToken,
//       queryParameters: <String, dynamic>{'page': page},
//     );
//     final FavouritesModel successResponseModel = FavouritesModel.fromJson(
//       response.data as Map<String, dynamic>,
//     );
//     return successResponseModel;
//   }

//   Future<void> createFavourite(String orderId) async {
//     await _dioClient.sendRequest(
//       RequestType.post,
//       EndPoint.favourites,
//       data: <String, dynamic>{'order': orderId},
//     );
//   }

//   Future<void> deleteFavourite(String id) async {
//     await _dioClient.sendRequest(
//       RequestType.delete,
//       "${EndPoint.favourites}delete_by_order/?order=$id",
//     );
//   }
// }
