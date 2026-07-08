// import '../../../core/core.dart';
// import '../data/data.dart';

// part 'notification_event.dart';
// part 'notification_state.dart';
// part 'notification_bloc.freezed.dart';

// class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
//   NotificationBloc(this._notificationRepository) : super(const _Initial()) {
//     on<NotificationEvent>((
//       NotificationEvent event,
//       Emitter<NotificationState> emit,
//     ) async {
//       await event.map(
//         getNotifications:
//             (_GetNotifications value) => getNotifications(event, emit),
//       );
//     });
//   }
//   final NotificationRepository _notificationRepository;
//   int page = 1;
//   List<NotificationData> notifications = <NotificationData>[];
//   bool isSigned = PrefData.isSignedIn;

//   Future<void> getNotifications(
//     NotificationEvent event,
//     Emitter<NotificationState> emit,
//   ) async {
//     try {
//       event as _$GetNotificationsImpl;
//       if (!isSigned) {
//         emit(const NotificationState.guest());
//         return;
//       }

//       if (event.isRefresh) {
//         notifications.clear();
//         page = 1;
//       }
//       if (page == 1) {
//         emit(const NotificationState.loading());
//       }
//       NotificationModel response = await _notificationRepository
//           .getNotifications(paginationOffset: notifications.length);
//       notifications.addAll(response.results);
//       if (notifications.isNotEmpty) {
//         page++;
//       }
//       emit(
//         NotificationState.succeed(
//           notifications: notifications,
//           hasNext: response.pagination.count! > notifications.length,
//         ),
//       );
//     } catch (e) {
//       emit(
//         NotificationState.failed(
//           generalException: LocalException(message: e.toString()),
//         ),
//       );
//     }
//   }
// }
