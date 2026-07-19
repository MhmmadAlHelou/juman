// import 'package:ewan/core/core.dart';

// import '../home.dart';

// class HomeRepository {
//   HomeRepository(this._dioClient);

//   final DioClient _dioClient;

//   Future<ItemsModel> getAds() async {
//     final Response<dynamic> response = await _dioClient.sendRequest(
//       RequestType.get,
//       EndPoint.ads,
//       queryParameters: <String, int>{
//         "pagination_page_size": 1000,
//         'ad_type': AdType.slider.index,
//       },
//     );
//     final ItemsModel successResponseModel = ItemsModel.fromJson(
//       response.data as Map<String, dynamic>,
//     );
//     return successResponseModel;
//   }

//   Future<ItemsModel> getHomeAd() async {
//     final Response<dynamic> response = await _dioClient.sendRequest(
//       RequestType.get,
//       EndPoint.ads,
//       queryParameters: <String, int>{
//         "pagination_page_size": 1000,
//         'ad_type': AdType.single.index,
//       },
//     );
//     final ItemsModel successResponseModel = ItemsModel.fromJson(
//       response.data as Map<String, dynamic>,
//     );
//     return successResponseModel;
//   }

//   Future<void> clickAd(String id) async {
//     await _dioClient.sendRequest(RequestType.put, '${EndPoint.ads}/$id/click/');
//   }

//   Future<ServicesModel> filterServices({
//     String search = "",
//     int page = 1,
//     bool? isFromAdminOnly,
//     bool? hasActiveOrderOnly,
//   }) async {
//     Map<String, dynamic> params = <String, dynamic>{
//       "search": search,
//       "pagination_page": page,
//       "is_from_admin_only": isFromAdminOnly,
//       "pagination_page_size": 25,
//     };
//     if (hasActiveOrderOnly != null) {
//       // for view quick exploer in home page
//       params = <String, dynamic>{
//         ...params,
//         "has_active_orders": hasActiveOrderOnly,
//       };
//     } else {
//       // for view "see all services", to view multi level services
//       params = <String, dynamic>{...params, "parent__isnull": true};
//     }
//     final Response<dynamic> response = await _dioClient.sendRequest(
//       RequestType.get,
//       EndPoint.services,
//       queryParameters: params,
//     );

//     final ServicesModel successResponseModel = ServicesModel.fromJson(
//       response.data as Map<String, dynamic>,
//     );
//     return successResponseModel;
//   }

//   Future<SubServiceModel> serviceById({
//     String search = "",
//     required String id,
//   }) async {
//     final Response<dynamic> response = await _dioClient.sendRequest(
//       RequestType.get,
//       '${EndPoint.services}$id',
//       queryParameters: <String, dynamic>{"search": search},
//     );
//     final SubServiceModel successResponseModel = SubServiceModel.fromJson(
//       response.data as Map<String, dynamic>,
//     );
//     return successResponseModel;
//   }
// }
