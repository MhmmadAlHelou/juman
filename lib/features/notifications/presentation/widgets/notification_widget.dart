// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';

// import '../../../../core/core.dart';
// import '../../data/data.dart';

// class NotificationWidget extends StatelessWidget {
//   const NotificationWidget({
//     super.key,
//     required this.notificationData,
//     required this.showDate,
//   });
//   final NotificationData notificationData;
//   final bool showDate;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         // Navigate based on notification type
//         switch (notificationData.objectType) {
//           case NotificationType.order:
//             if (notificationData.objectId != null) {
//               GlobalNotifiers.orderNotifier.value =
//                   !GlobalNotifiers.orderNotifier.value;
//               context.pushRoute(
//                 OrderRoute(
//                   orderId: notificationData.objectId!,
//                   isMyOrder: false,
//                 ),
//               );
//             }
//             break;
//           case NotificationType.myOrder:
//             if (notificationData.objectId != null) {
//               GlobalNotifiers.orderNotifier.value =
//                   !GlobalNotifiers.orderNotifier.value;
//               context.pushRoute(
//                 OrderRoute(
//                   orderId: notificationData.objectId!,
//                   isMyOrder: true,
//                 ),
//               );
//             }
//             break;
//           case NotificationType.alert:
//           default:
//             // Already on notification screen, maybe do nothing or mark as read
//             break;
//         }
//       },
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Visibility(
//             visible: showDate,
//             replacement: SizedBox.shrink(),
//             child: Padding(
//               padding: const EdgeInsetsDirectional.symmetric(
//                 vertical: Dimensions.space8,
//               ),
//               child: Text(
//                 DateFormat('dd.MM.yyyy').format(notificationData.createdAt),
//                 style: context.labelLarge?.copyWith(
//                   color: context.colorScheme.tertiary,
//                 ),
//               ),
//             ),
//           ),
//           DecoratedBox(
//             decoration: AppDecorations.card.copyWith(),
//             child: Padding(
//               padding: const EdgeInsets.all(Dimensions.space16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Row(
//                     children: <Widget>[
//                       getIconByType(notificationData.objectType),
//                       SizedBox(width: Dimensions.space8),
//                       Text(
//                         notificationData.title ?? "",
//                         style: context.titleSmall,
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: Dimensions.space8),
//                   Text(notificationData.body ?? "", style: context.bodySmall),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget getIconByType(NotificationType? notificationType) {
//     switch (notificationType) {
//       case NotificationType.alert:
//         return AssetsManager.svg.notificationBing.svg();

//       case NotificationType.order:
//         return AssetsManager.svg.orders.svg();

//       case NotificationType.myOrder:
//         return AssetsManager.svg.orders.svg();

//       default:
//         return AssetsManager.images.logoLabeled.image(width: 24, height: 24);
//     }
//   }
// }
