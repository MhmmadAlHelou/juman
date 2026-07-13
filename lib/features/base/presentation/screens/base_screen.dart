// import 'dart:io';

// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';

// import '../../../../core/core.dart';
// import '../../data/base_repository.dart';
// import '../widgets/custom_navigation_bar.dart';

// @RoutePage()
// class BaseScreen extends StatefulWidget {
//   const BaseScreen({super.key});

//   @override
//   State<BaseScreen> createState() => _BaseScreenState();
// }

// class _BaseScreenState extends State<BaseScreen> {
//   late TabsRouter _tabsRouter;

//   @override
//   void initState() {
//     if (PrefData.isSignedIn) {
//       if (!PrefData.fcmTokenSent) {
//         Managers.notificationManager.getFcmToken().then(
//           (String value) => getIt<BaseRemoteDataSource>()
//               .saveFcmToken(value)
//               .then((_) {
//                 PrefData.fcmTokenSent = true;
//                 PrefData.fcmToken = value;
//               })
//               .onError((Object? error, StackTrace stackTrace) {
//                 PrefData.fcmTokenSent = false;
//                 PrefData.fcmToken = null;
//               }),
//         );
//       }
//       FirebaseMessaging.instance.onTokenRefresh.listen((String? token) {
//         if (token == null) {
//           return;
//         }
//       });
//     } else {
//       if (!PrefData.fcmTokenSent) {
//         Managers.notificationManager.getFcmToken().then(
//           (String value) => getIt<BaseRemoteDataSource>()
//               .saveFcmUnAuthToken(value)
//               .then((_) {
//                 PrefData.fcmTokenSent = true;
//                 PrefData.fcmToken = value;
//               })
//               .onError((Object? error, StackTrace stackTrace) {
//                 PrefData.fcmTokenSent = false;
//                 PrefData.fcmToken = null;
//               }),
//         );
//       }
//       FirebaseMessaging.instance.onTokenRefresh.listen((String? token) {
//         if (token == null) {
//           return;
//         }
//       });
//     }
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return PopScope(
//       canPop: false, // Prevents default back behavior
//       onPopInvokedWithResult: (bool didPop, _) {
//         if (didPop) return;

//         // If not on home screen, switch to home screen
//         if (_tabsRouter.activeIndex != 0) {
//           _tabsRouter.setActiveIndex(0);
//         } else {
//           //  exit
//           exit(0);
//         }
//       },
//       child: AutoTabsScaffold(
//         resizeToAvoidBottomInset: false,
//         homeIndex: 0,
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         animationCurve: Curves.bounceIn,
//         animationDuration: const Duration(milliseconds: 100),
//         routes: const <PageRouteInfo>[
//           // HomeRoute(),
//           // FavouritesRoute(),
//           // OrdersRoute(),
//           // ProfileRoute(),
//         ],
//         bottomNavigationBuilder: (_, TabsRouter tabsRouter) {
//           _tabsRouter = tabsRouter;
//           return CustomTabBar(
//             currentIndex: tabsRouter.activeIndex,
//             onTap: tabsRouter.setActiveIndex,
//             items: <CustomTabBarItem>[
//               CustomTabBarItem(
//                 icon: AssetsManager.svg.home2.svg(
//                   height: 20,
//                   width: 20,
//                   colorFilter: ColorFilter.mode(
//                     context.colorScheme.onSurfaceVariant,
//                     BlendMode.srcIn,
//                   ),
//                 ),
//                 activeIcon: AssetsManager.svg.home2.svg(
//                   height: 20,
//                   width: 20,
//                   colorFilter: ColorFilter.mode(
//                     context.colorScheme.surface,
//                     BlendMode.srcIn,
//                   ),
//                 ),
//                 title: context.tr(LocaleKeys.home),
//               ),
//               CustomTabBarItem(
//                 icon: AssetsManager.svg.bookmark.svg(
//                   height: 20,
//                   width: 20,
//                   colorFilter: ColorFilter.mode(
//                     context.colorScheme.onSurfaceVariant,
//                     BlendMode.srcIn,
//                   ),
//                 ),
//                 activeIcon: AssetsManager.svg.bookmark.svg(
//                   height: 20,
//                   width: 20,
//                   colorFilter: ColorFilter.mode(
//                     context.colorScheme.surface,
//                     BlendMode.srcIn,
//                   ),
//                 ),
//                 title: context.tr(LocaleKeys.saved),
//               ),
//               CustomTabBarItem(
//                 icon: AssetsManager.svg.orders.svg(
//                   height: 20,
//                   width: 20,
//                   colorFilter: ColorFilter.mode(
//                     context.colorScheme.onSurfaceVariant,
//                     BlendMode.srcIn,
//                   ),
//                 ),
//                 activeIcon: AssetsManager.svg.orders.svg(
//                   height: 20,
//                   width: 20,
//                   colorFilter: ColorFilter.mode(
//                     context.colorScheme.surface,
//                     BlendMode.srcIn,
//                   ),
//                 ),
//                 title: context.tr(LocaleKeys.services),
//               ),
//               CustomTabBarItem(
//                 icon: AssetsManager.svg.profile.svg(
//                   height: 20,
//                   width: 20,
//                   colorFilter: ColorFilter.mode(
//                     context.colorScheme.onSurfaceVariant,
//                     BlendMode.srcIn,
//                   ),
//                 ),
//                 activeIcon: AssetsManager.svg.profile.svg(
//                   height: 20,
//                   width: 20,
//                   colorFilter: ColorFilter.mode(
//                     context.colorScheme.surface,
//                     BlendMode.srcIn,
//                   ),
//                 ),
//                 title: context.tr(LocaleKeys.profile),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
