// // To parse this JSON data, do
// //
// //     final notificationModel = notificationModelFromJson(jsonString);

// import '../../../../core/common/models/pagination_model.dart';
// import '../../../../core/core.dart';

// class NotificationModel {
//   final PaginationData pagination;
//   final List<NotificationData> results;

//   NotificationModel({required this.pagination, required this.results});

//   factory NotificationModel.fromJson(Map<String, dynamic> json) =>
//       NotificationModel(
//         pagination: PaginationData.fromJson(json["pagination"]),
//         results: json["results"] == null
//             ? <NotificationData>[]
//             : List<NotificationData>.from(
//                 json["results"]!.map(
//                   (dynamic x) => NotificationData.fromJson(x),
//                 ),
//               ),
//       );
// }

// class NotificationData {
//   final String id;
//   final String? user;
//   final int? role;
//   final String? title;
//   final String? body;
//   final String? image;
//   final NotificationType? objectType;
//   final String? objectId;
//   final dynamic extraData;
//   final bool? isViewed;
//   final DateTime createdAt;
//   final String? updatedAt;

//   NotificationData({
//     required this.id,
//     this.user,
//     this.role,
//     this.title,
//     this.body,
//     this.image,
//     this.objectType,
//     this.objectId,
//     this.extraData,
//     this.isViewed,
//     required this.createdAt,
//     this.updatedAt,
//   });

//   factory NotificationData.fromJson(Map<String, dynamic> json) =>
//       NotificationData(
//         id: json["id"],
//         user: json["user"],
//         role: json["role"],
//         title: json["title"],
//         body: json["body"],
//         image: json["image"],
//         objectType: json["object_type"] == null
//             ? NotificationType.none
//             : NotificationType.values[json["object_type"]],
//         objectId: json["object_id"],
//         extraData: json["extra_data"],
//         isViewed: json["is_viewed"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: json["updated_at"],
//       );

//   Map<String, dynamic> toJson() => <String, dynamic>{
//     "id": id,
//     "user": user,
//     "role": role,
//     "title": title,
//     "body": body,
//     "image": image,
//     "object_type": objectType,
//     "object_id": objectId,
//     "extra_data": extraData,
//     "is_viewed": isViewed,
//     "created_at": createdAt,
//     "updated_at": updatedAt,
//   };
// }
