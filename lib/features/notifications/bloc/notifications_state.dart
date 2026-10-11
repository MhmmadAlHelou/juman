part of 'notifications_cubit.dart';

enum NotificationsStatus { initial, loading, success, failure }

class NotificationsState extends Equatable {
  final NotificationsStatus status;
  final List<NotificationModel> items;
  final int page;
  final bool hasMore;
  final bool isLoadingMore;
  final int unreadCount;
  final String? errorMessage;

  const NotificationsState({
    this.status = NotificationsStatus.initial,
    this.items = const [],
    this.page = 1,
    this.hasMore = false,
    this.isLoadingMore = false,
    this.unreadCount = 0,
    this.errorMessage,
  });

  NotificationsState copyWith({
    NotificationsStatus? status,
    List<NotificationModel>? items,
    int? page,
    bool? hasMore,
    bool? isLoadingMore,
    int? unreadCount,
    String? errorMessage,
  }) => NotificationsState(
    status: status ?? this.status,
    items: items ?? this.items,
    page: page ?? this.page,
    hasMore: hasMore ?? this.hasMore,
    isLoadingMore: isLoadingMore ?? this.isLoadingMore,
    unreadCount: unreadCount ?? this.unreadCount,
    errorMessage: errorMessage,
  );

  @override
  List<Object?> get props => [
    status,
    items,
    page,
    hasMore,
    isLoadingMore,
    unreadCount,
    errorMessage,
  ];
}
