import 'package:ewan/core/core.dart';
import 'package:ewan/features/notifications/data/models/notification_model.dart';

abstract class NotificationsRepository {
  Future<PaginatedNotifications> getNotifications({
    int page = 1,
    int pageSize = 20,
  });
  Future<NotificationModel> markAsRead(String id);
  Future<int> getUnreadCount();
}

class NotificationsRepositoryImpl implements NotificationsRepository {
  final DioClient _client;
  NotificationsRepositoryImpl(this._client);

  @override
  Future<PaginatedNotifications> getNotifications({
    int page = 1,
    int pageSize = 20,
  }) async {
    try {
      final res = await _client.sendRequest(
        RequestType.get,
        EndPoint.notifications,
        queryParameters: {'page': page, 'page_size': pageSize},
      );
      return PaginatedNotifications.fromJson(
        res.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  @override
  Future<NotificationModel> markAsRead(String id) async {
    try {
      final res = await _client.sendRequest(
        RequestType.patch,
        '${EndPoint.notifications}$id/mark-read/',
      );
      return NotificationModel.fromJson(
        res.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }

  @override
  Future<int> getUnreadCount() async {
    try {
      final res = await _client.sendRequest(
        RequestType.get,
        '${EndPoint.notifications}unread-count/',
      );
      return res.data['data']['unread_count'] as int;
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }
}
