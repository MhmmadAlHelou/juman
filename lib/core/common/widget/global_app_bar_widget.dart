// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:badges/badges.dart' as badges;
// import '/core/core.dart';

// class GlobalAppBar extends StatefulWidget implements PreferredSizeWidget {
//   const GlobalAppBar({
//     super.key,
//     this.backButton = false,
//     this.shareButton = false,
//     this.onShare,
//     required this.title,
//     this.centerTitle = true,
//   });
//   final bool backButton;
//   final String title;
//   final bool centerTitle;
//   final bool shareButton;
//   final VoidCallback? onShare;

//   @override
//   State<GlobalAppBar> createState() => _GlobalAppBarState();

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }

// class _GlobalAppBarState extends State<GlobalAppBar> {
//   bool hasNewNotification = false;

//   void onNotificationReceived() {
//     setState(() {
//       hasNewNotification = true;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     GlobalNotifiers.notificationNotifier.addListener(onNotificationReceived);
//   }

//   @override
//   void dispose() {
//     GlobalNotifiers.notificationNotifier.removeListener(onNotificationReceived);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       // backgroundColor: Colors.transparent,
//       elevation: 0,
//       leading: Builder(
//         builder: (BuildContext context) {
//           if (widget.backButton) {
//             return Container(
//               width: 40,
//               height: 40,
//               margin: const EdgeInsetsDirectional.only(start: 20),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Palette.white,
//                 border: Border.all(color: Palette.gray),
//                 boxShadow: <BoxShadow>[
//                   BoxShadow(
//                     color: Palette.black.withValues(alpha: 0.05),
//                     blurRadius: 1,
//                     offset: const Offset(0, 1),
//                   ),
//                 ],
//               ),
//               child: IconButton(
//                 onPressed: context.maybePop,
//                 icon: const Icon(
//                   Icons.arrow_back_ios_new,
//                   color: Palette.secondary,
//                   size: 20,
//                 ),
//               ),
//             );
//           } else {
//             return Container();
//           }
//         },
//       ),
//       title: Text(
//         widget.title,
//         style: context.titleSmall?.copyWith(fontFamily: FontFamily.fredokaOne),
//       ),
//       actions: <Widget>[
//         if (widget.shareButton)
//           Container(
//             width: 40,
//             height: 40,
//             margin: const EdgeInsetsDirectional.only(end: 5),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Palette.white,
//               border: Border.all(color: Palette.gray),
//               boxShadow: <BoxShadow>[
//                 BoxShadow(
//                   color: Palette.black.withValues(alpha: 0.05),
//                   blurRadius: 1,
//                   offset: const Offset(0, 1),
//                 ),
//               ],
//             ),
//             child: IconButton(
//               onPressed: widget.onShare ?? context.maybePop,
//               icon: const Icon(Icons.share, color: Palette.secondary, size: 20),
//             ),
//           ),
//         Container(
//           width: 40,
//           height: 40,
//           margin: const EdgeInsetsDirectional.only(end: 20),
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Palette.white,
//             border: Border.all(color: Palette.gray),
//             boxShadow: <BoxShadow>[
//               BoxShadow(
//                 color: Palette.black.withValues(alpha: 0.05),
//                 blurRadius: 1,
//                 offset: const Offset(0, 1),
//               ),
//             ],
//           ),
//           child: badges.Badge(
//             showBadge: hasNewNotification,
//             position: badges.BadgePosition.topEnd(top: -5, end: -5),
//             badgeContent: const SizedBox.shrink(),
//             child: IconButton(
//               onPressed: () {
//                 setState(() {
//                   hasNewNotification = false; // Reset on tap
//                 });
//                 context.pushRoute(const NotificationRoute());
//               },
//               icon: const Icon(
//                 Icons.notifications,
//                 color: Palette.secondary,
//                 size: 20,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
