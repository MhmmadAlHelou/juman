import 'package:equatable/equatable.dart';

class NotificationModel extends Equatable {
  final String id;
  final String type;
  final String title;
  final String message;
  final Map<String, dynamic> data;
  final bool isRead;
  final DateTime createdAt;

  const NotificationModel({
    required this.id,
    required this.type,
    required this.title,
    required this.message,
    required this.data,
    required this.isRead,
    required this.createdAt,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      id: json['id'] as String,
      type: json['notification_type'] as String? ?? '',
      title: json['title'] as String? ?? '',
      message: json['message'] as String? ?? '',
      data: Map<String, dynamic>.from(json['data'] as Map? ?? const {}),
      isRead: json['is_read'] as bool? ?? false,
      createdAt: DateTime.parse(json['created_at'] as String).toLocal(),
    );
  }

  NotificationModel copyWith({bool? isRead}) => NotificationModel(
    id: id,
    type: type,
    title: title,
    message: message,
    data: data,
    isRead: isRead ?? this.isRead,
    createdAt: createdAt,
  );

  /// Convenience for navigation on tap (RESERVATION_* types).
  String? get reservationId => data['reservation_id'] as String?;

  @override
  List<Object?> get props => [
    id,
    type,
    title,
    message,
    data,
    isRead,
    createdAt,
  ];
}

class PaginatedNotifications {
  final List<NotificationModel> items;
  final bool hasNext;
  final int count;

  const PaginatedNotifications({
    required this.items,
    required this.hasNext,
    required this.count,
  });

  factory PaginatedNotifications.fromJson(Map<String, dynamic> json) {
    return PaginatedNotifications(
      items: (json['results'] as List)
          .map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasNext: json['next'] != null,
      count: json['count'] as int? ?? 0,
    );
  }
}
