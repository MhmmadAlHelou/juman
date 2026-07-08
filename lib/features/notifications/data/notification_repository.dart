// import 'package:ewan/features/notifications/data/models/notification_model.dart';

// import '../../../core/core.dart';

// class NotificationRepository {
//   final DioClient _dioClient;

//   NotificationRepository(this._dioClient);

//   Future<NotificationModel> getNotifications({
//     required int paginationOffset,
//   }) async {
//     final Response<dynamic> response = await _dioClient.sendRequest(
//       RequestType.get,
//       EndPoint.notifications,
//       queryParameters: <String, dynamic>{
//         "ordering": "-created_at",
//         "pagination_offset": paginationOffset,
//         "pagination_limit": 50,
//       },
//     );
//     final NotificationModel responseModel = NotificationModel.fromJson(
//       response.data as Map<String, dynamic>,
//     );
//     return responseModel;
//   }
// }
