// import 'package:flutter/material.dart';
// import 'package:ewan/core/common/widget/guest_widget.dart';
// import 'package:ewan/features/home/presentation/widgets/shimmer_home_widgets.dart';

// import '../../../../core/core.dart';
// import '../../notification.dart';

// @RoutePage()
// class NotificationScreen extends StatelessWidget {
//   const NotificationScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<NotificationBloc>(
//       create: (BuildContext context) =>
//           getIt<NotificationBloc>()
//             ..add(const NotificationEvent.getNotifications()),
//       child: const NotificationView(),
//     );
//   }
// }

// class NotificationView extends StatefulWidget {
//   const NotificationView({super.key});

//   @override
//   State<NotificationView> createState() => _NotificationViewState();
// }

// class _NotificationViewState extends State<NotificationView> {
//   late final NotificationBloc _notificationBloc;
//   late final ScrollController controller;

//   callNotificationApi() {
//     _notificationBloc.isSigned = PrefData.isSignedIn;
//     _notificationBloc.add(const NotificationEvent.getNotifications());
//   }

//   @override
//   void initState() {
//     super.initState();
//     _notificationBloc = context.read<NotificationBloc>();

//     controller = ScrollController();
//     GlobalNotifiers.profileNotifier.addListener(callNotificationApi);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: GlobalAppBar(
//         title: LocaleKeys.notifications.tr(),
//         backButton: true,
//       ),
//       body: SizedBox(
//         child: BlocBuilder<NotificationBloc, NotificationState>(
//           builder: (BuildContext context, NotificationState state) {
//             return state.maybeWhen(
//               loading: () => const RecentProjectsShimmer(itemCount: 4),
//               failed: (GeneralException? generalException) => Center(
//                 child: GlobalErrorWidget(
//                   generalException: generalException,
//                   onPressed: () {
//                     _notificationBloc.add(
//                       const NotificationEvent.getNotifications(),
//                     );
//                   },
//                 ),
//               ),
//               guest: () {
//                 return GuestWidget(
//                   onPressed: () {
//                     context.router
//                         .push<bool>(
//                           LoginRoute(
//                             onLoginSuccess: () {
//                               context.maybePop(true);
//                             },
//                           ),
//                         )
//                         .then((bool? value) {
//                           _notificationBloc.isSigned = PrefData.isSignedIn;

//                           _notificationBloc.add(
//                             const NotificationEvent.getNotifications(),
//                           );
//                         });
//                   },
//                 );
//               },
//               succeed: (List<NotificationData> notifications, bool hasNext) {
//                 if (notifications.isEmpty) {
//                   return const GlobalEmptyList();
//                 }
//                 return RefreshIndicator(
//                   onRefresh: () {
//                     _notificationBloc.add(
//                       const NotificationEvent.getNotifications(isRefresh: true),
//                     );
//                     return Future<void>.delayed(
//                       const Duration(milliseconds: 300),
//                     );
//                   },
//                   child: InfiniteListView.separated(
//                     physics: const AlwaysScrollableScrollPhysics(),
//                     nextData: () {
//                       _notificationBloc.add(
//                         const NotificationEvent.getNotifications(),
//                       );
//                     },
//                     hasNext: hasNext,
//                     padding: const EdgeInsetsDirectional.all(
//                       Dimensions.space16,
//                     ),
//                     controller: controller,
//                     itemBuilder: (BuildContext context, int index) {
//                       return NotificationWidget(
//                         showDate: _shouldShowDateHeader(notifications, index),
//                         notificationData: notifications[index],
//                       );
//                     },
//                     separatorBuilder: (BuildContext context, int index) {
//                       return const SizedBox(height: Dimensions.space10);
//                     },
//                     itemCount: notifications.length,
//                   ),
//                 );
//               },
//               orElse: () => const SizedBox.shrink(),
//             );
//           },
//         ),
//       ),
//     );
//   }

//   /// Determines whether a date header should be shown for the current notification
//   bool _shouldShowDateHeader(List<NotificationData> notifications, int index) {
//     if (index == 0) return true;
//     final DateTime currentDate = notifications[index].createdAt;
//     final DateTime previousDate = notifications[index - 1].createdAt;
//     return !currentDate.isSameDate(previousDate);
//   }

//   @override
//   void dispose() {
//     GlobalNotifiers.profileNotifier.removeListener(callNotificationApi);
//     super.dispose();
//   }
// }
