// import 'package:flutter/material.dart';
// import 'package:badges/badges.dart' as badges;
// import 'package:ewan/core/core.dart';
// import '../../../profile/profile.dart';
// import '../../../auth/auth.dart' show UserData;

// class HomeHeaderWidget extends StatelessWidget {
//   const HomeHeaderWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<ProfileBloc>(
//       create:
//           (BuildContext context) =>
//               getIt<ProfileBloc>()..add(const ProfileEvent.getProfile()),
//       child: const HomeHeaderWidgetView(),
//     );
//   }
// }

// class HomeHeaderWidgetView extends StatefulWidget {
//   const HomeHeaderWidgetView({super.key});

//   @override
//   State<HomeHeaderWidgetView> createState() => _HomeHeaderWidgetViewState();
// }

// class _HomeHeaderWidgetViewState extends State<HomeHeaderWidgetView> {
//   bool hasNewNotification = false;

//   void callProfileApi() {
//     context.read<ProfileBloc>().isSigned = PrefData.isSignedIn;

//     context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
//   }

//   void onNotificationReceived() {
//     setState(() {
//       hasNewNotification = true;
//     });
//   }

//   @override
//   void initState() {
//     GlobalNotifiers.profileNotifier.addListener(callProfileApi);
//     GlobalNotifiers.notificationNotifier.addListener(onNotificationReceived);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
//       child: Row(
//         children: <Widget>[
//           profileHomeHeader(),
//           const Spacer(),
//           badges.Badge(
//             showBadge: hasNewNotification,
//             position: badges.BadgePosition.topEnd(top: -5, end: -5),
//             badgeContent: const SizedBox.shrink(),
//             child: GestureDetector(
//               onTap: () {
//                 setState(() {
//                   hasNewNotification = false; // Reset on tap
//                 });
//                 context.pushRoute(const NotificationRoute());
//               },
//               child: Container(
//                 width: 40,
//                 height: 40,
//                 decoration: AppDecorations.card,
//                 child: const Icon(Icons.notifications, color: Palette.darkGray),
//               ),
//             ),
//           ),
//           const SizedBox(width: 12),
//           Container(
//             width: 59,
//             height: 40,
//             decoration: AppDecorations.card,
//             padding: const EdgeInsets.symmetric(horizontal: 12),
//             child: AssetsManager.images.logoLabeled.image(
//               width: 33,
//               height: 24,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   profileHomeHeader() {
//     return BlocBuilder<ProfileBloc, ProfileState>(
//       buildWhen:
//           (ProfileState previous, ProfileState current) =>
//               current.runtimeType ==
//                   const ProfileState.getProfileSucceed().runtimeType ||
//               current.runtimeType == const ProfileState.loading().runtimeType ||
//               current.runtimeType ==
//                   const ProfileState.guestUser().runtimeType ||
//               current.runtimeType == const ProfileState.failed().runtimeType,
//       builder: (BuildContext context, ProfileState state) {
//         return state.maybeWhen(
//           loading: () => Container(),
//           failed:
//               (GeneralException? generalException) => const SizedBox.shrink(),
//           guestUser:
//               () => GestureDetector(
//                 onTap: () {
//                   AutoTabsRouter.of(context).setActiveIndex(3);
//                 },
//                 child: Row(
//                   children: <Widget>[
//                     GestureDetector(
//                       onTap: () {
//                         AutoTabsRouter.of(context).setActiveIndex(3);
//                       },
//                       child: Container(
//                         width: 40,
//                         height: 40,
//                         decoration: BoxDecoration(
//                           color: Palette.gray,
//                           shape: BoxShape.circle,
//                           border: Border.all(
//                             color: context.colorScheme.primary,
//                             width: 1,
//                           ),
//                         ),
//                         child: Center(
//                           child: SvgPicture.asset(
//                             height: 20,
//                             width: 20,
//                             AssetsManager.svg.profile.path,
//                             colorFilter: const ColorFilter.mode(
//                               Palette.darkGray,
//                               BlendMode.srcIn,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 12),
//                     GestureDetector(
//                       onTap: () {
//                         AutoTabsRouter.of(context).setActiveIndex(3);
//                       },
//                       child: Text(
//                         (LocaleKeys.hiTechie).tr(),
//                         style: context.titleSmall?.copyWith(
//                           color: Palette.secondary,
//                           fontFamily: FontFamily.fredokaOne,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//           getProfileSucceed:
//               (UserData? userData) => GestureDetector(
//                 onTap: () {
//                   AutoTabsRouter.of(context).setActiveIndex(3);
//                 },
//                 child: Row(
//                   children: <Widget>[
//                     GestureDetector(
//                       onTap: () {
//                         AutoTabsRouter.of(context).setActiveIndex(3);
//                       },
//                       child: Container(
//                         width: 40,
//                         height: 40,
//                         decoration: BoxDecoration(
//                           color: Palette.gray,
//                           shape: BoxShape.circle,
//                           border: Border.all(
//                             color: context.colorScheme.primary,
//                             width: 1,
//                           ),
//                         ),
//                         child: Center(
//                           child: ClipOval(
//                             clipBehavior: Clip.hardEdge,
//                             child: NetworkImageWidget(
//                               width: 30,
//                               height: 30,
//                               url: userData?.image ?? "",
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 12),
//                     GestureDetector(
//                       onTap: () {
//                         AutoTabsRouter.of(context).setActiveIndex(3);
//                       },
//                       child: Text(
//                         "Hi, ${userData?.firstName ?? "Techie"}".tr(),
//                         style: context.titleSmall?.copyWith(
//                           color: Palette.secondary,
//                           fontFamily: FontFamily.fredokaOne,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//           orElse: () => const SizedBox.shrink(),
//         );
//       },
//     );
//   }

//   @override
//   void dispose() {
//     GlobalNotifiers.profileNotifier.removeListener(callProfileApi);
//     GlobalNotifiers.notificationNotifier.removeListener(onNotificationReceived);
//     super.dispose();
//   }
// }
