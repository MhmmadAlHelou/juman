// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// import '../../core.dart';
// import '../../../features/notifications/data/models/notification_mini_data.dart';

// abstract interface class NotificationManager {
//   Future<void> initializeLocalNotification();

//   Future<void> handleForegroundNotification(RemoteMessage message);

//   Future<String> getFcmToken();
// }

// class NotificationManagerImpl implements NotificationManager {
//   static final FlutterLocalNotificationsPlugin notificationPlugin =
//       FlutterLocalNotificationsPlugin();

//   @override
//   Future<void> initializeLocalNotification() async {
//     // Create notification channel for Android
//     const AndroidNotificationChannel channel = AndroidNotificationChannel(
//       'channel_id',
//       'channel_name',
//       description: 'Channel for app notifications',
//       importance: Importance.max,
//       playSound: true,
//     );

//     await notificationPlugin
//         .resolvePlatformSpecificImplementation<
//           AndroidFlutterLocalNotificationsPlugin
//         >()
//         ?.createNotificationChannel(channel);

//     // show message using local notification
//     const AndroidInitializationSettings androidSettings =
//         AndroidInitializationSettings('@mipmap/ic_launcher');
//     const DarwinInitializationSettings iOSSettings =
//         DarwinInitializationSettings();
//     const InitializationSettings initialSettings = InitializationSettings(
//       android: androidSettings,
//       iOS: iOSSettings,
//     );
//     await notificationPlugin.initialize(
//       settings: initialSettings,
//       onDidReceiveNotificationResponse: (NotificationResponse details) {
//         if (details.payload != null) {
//           final data = jsonDecode(details.payload!) as Map<String, dynamic>;
//           _handleNotificationClick(data);
//         }
//       },
//     );
//   }

//   void _handleNotificationClick(Map<String, dynamic> data) {
//     // Parse notification data
//     final NotificationMiniData notificationData = NotificationMiniData.fromJson(
//       data,
//     );
//     // Navigate based on type
//     switch (notificationData.objectType) {
//       case NotificationType.order:
//         if (notificationData.objectId != null) {
//           GlobalNotifiers.orderNotifier.value =
//               !GlobalNotifiers.orderNotifier.value;
//           Managers.route.push(
//             OrderRoute(orderId: notificationData.objectId!, isMyOrder: false),
//           );
//         }
//         break;
//       case NotificationType.myOrder:
//         if (notificationData.objectId != null) {
//           GlobalNotifiers.orderNotifier.value =
//               !GlobalNotifiers.orderNotifier.value;
//           Managers.route.push(
//             OrderRoute(orderId: notificationData.objectId!, isMyOrder: true),
//           );
//         }
//         break;
//       case NotificationType.alert:
//       default:
//         Managers.route.push(const NotificationRoute());
//         break;
//     }
//   }

//   @override
//   Future<void> handleForegroundNotification(RemoteMessage message) async {
//     // Download the image if the URL is provided
//     final Uint8List? imageBytes = message.data['image'] != null
//         ? await downloadImage(message.data['image'])
//         : null;

//     // Prepare BigPictureStyleInformation if image is available
//     DefaultStyleInformation styleInformation = imageBytes != null
//         ? BigPictureStyleInformation(
//             ByteArrayAndroidBitmap(imageBytes),
//             contentTitle: message.notification?.title,
//             summaryText: message.notification?.body,
//           )
//         : BigTextStyleInformation(
//             message.notification?.body ?? "",
//             contentTitle: message.notification?.title,
//           );

//     // show message using local notification
//     final NotificationDetails notificationDetails = NotificationDetails(
//       android: AndroidNotificationDetails(
//         'channel_id',
//         'channel_name',
//         importance: Importance.max,
//         priority: Priority.high,
//         styleInformation: styleInformation,
//         icon: '@mipmap/ic_launcher',
//         color: Palette.primary,
//       ),
//       iOS: const DarwinNotificationDetails(presentSound: true),
//     );

//     await notificationPlugin.show(
//       id: DateTime.now().microsecond,
//       title: message.notification?.title ?? '',
//       body: message.notification?.body ?? '',
//       notificationDetails: notificationDetails,
//       payload: jsonEncode(message.data),
//     );
//   }

//   @override
//   Future<String> getFcmToken() async {
//     final String fcmToken = await FirebaseMessaging.instance.getToken() ?? '';

//     log('get FCM token $fcmToken');
//     return fcmToken;
//   }
// }
