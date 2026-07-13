import '../../../../core/core.dart';

NotificationMiniData notificationMiniDataFromJson(String str) =>
    NotificationMiniData.fromJson(json.decode(str));

String notificationMiniDataToJson(NotificationMiniData data) =>
    json.encode(data.toJson());

class NotificationMiniData {
  final String? bodyEn;
  final String? image;
  final String? fcmType;
  final String? role;
  final NotificationType? objectType;
  final String? titleEn;
  final String? body;
  final String? title;
  final String? objectId;
  final String? imageEn;

  NotificationMiniData({
    this.bodyEn,
    this.image,
    this.fcmType,
    this.role,
    this.objectType,
    this.titleEn,
    this.body,
    this.title,
    this.objectId,
    this.imageEn,
  });

  NotificationMiniData copyWith({
    String? bodyEn,
    String? image,
    String? fcmType,
    String? role,
    NotificationType? objectType,
    String? titleEn,
    String? body,
    String? title,
    String? objectId,
    String? imageEn,
  }) => NotificationMiniData(
    bodyEn: bodyEn ?? this.bodyEn,
    image: image ?? this.image,
    fcmType: fcmType ?? this.fcmType,
    role: role ?? this.role,
    objectType: objectType ?? this.objectType,
    titleEn: titleEn ?? this.titleEn,
    body: body ?? this.body,
    title: title ?? this.title,
    objectId: objectId ?? this.objectId,
    imageEn: imageEn ?? this.imageEn,
  );

  factory NotificationMiniData.fromJson(Map<String, dynamic> json) =>
      NotificationMiniData(
        bodyEn: json["body_en"],
        image: json["image"],
        fcmType: json["FCM_TYPE"],
        role: json["role"],
        objectType: json["object_type"] == null
            ? NotificationType.none
            : NotificationType.values[int.tryParse(json["object_type"]) ?? 0],
        titleEn: json["title_en"],
        body: json["body"],
        title: json["title"],
        objectId: json["object_id"],
        imageEn: json["image_en"],
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
    "body_en": bodyEn,
    "image": image,
    "FCM_TYPE": fcmType,
    "role": role,
    "object_type": objectType,
    "title_en": titleEn,
    "body": body,
    "title": title,
    "object_id": objectId,
    "image_en": imageEn,
  };
}
