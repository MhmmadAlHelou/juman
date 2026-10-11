import 'package:equatable/equatable.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/notifications/data/models/notification_model.dart';
import 'package:ewan/features/notifications/data/notification_repository.dart';

part 'notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  final NotificationsRepository _repo;
  static const _pageSize = 20;

  NotificationsCubit(this._repo) : super(const NotificationsState());

  Future<void> load() async {
    emit(
      state.copyWith(status: NotificationsStatus.loading, errorMessage: null),
    );
    try {
      final results = await Future.wait([
        _repo.getNotifications(page: 1, pageSize: _pageSize),
        _repo.getUnreadCount(),
      ]);
      final page = results[0] as PaginatedNotifications;
      emit(
        state.copyWith(
          status: NotificationsStatus.success,
          items: page.items,
          page: 1,
          hasMore: page.hasNext,
          unreadCount: results[1] as int,
        ),
      );
    } on BackendException catch (e) {
      emit(
        state.copyWith(
          status: NotificationsStatus.failure,
          errorMessage: e.message,
        ),
      );
    } on Exception catch (e) {
      emit(
        state.copyWith(
          status: NotificationsStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> loadMore() async {
    if (state.isLoadingMore || !state.hasMore) return;
    emit(state.copyWith(isLoadingMore: true));
    try {
      final next = state.page + 1;
      final page = await _repo.getNotifications(
        page: next,
        pageSize: _pageSize,
      );
      emit(
        state.copyWith(
          items: [...state.items, ...page.items],
          page: next,
          hasMore: page.hasNext,
          isLoadingMore: false,
        ),
      );
    } on Exception {
      emit(state.copyWith(isLoadingMore: false));
    }
  }

  Future<void> markAsRead(String id) async {
    final index = state.items.indexWhere((n) => n.id == id);
    if (index == -1 || state.items[index].isRead) return;

    final previous = state;
    final updated = [...state.items]
      ..[index] = state.items[index].copyWith(isRead: true);
    emit(
      state.copyWith(
        items: updated,
        unreadCount: (state.unreadCount - 1).clamp(0, 1 << 31),
      ),
    );

    try {
      await _repo.markAsRead(id);
    } on Exception {
      emit(previous); // rollback
    }
  }
}
