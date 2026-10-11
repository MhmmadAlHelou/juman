import 'package:ewan/core/core.dart';
import 'package:ewan/features/notifications/bloc/notifications_cubit.dart';
import 'package:ewan/features/notifications/data/models/notification_model.dart';
import 'package:ewan/features/notifications/presentation/widgets/notification_tile.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<NotificationsCubit>()..load(),
      child: const _NotificationsView(),
    );
  }
}

class _NotificationsView extends StatefulWidget {
  const _NotificationsView();

  @override
  State<_NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<_NotificationsView> {
  final _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.position.pixels >=
          _controller.position.maxScrollExtent - 200) {
        context.read<NotificationsCubit>().loadMore();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocaleKeys.notifications.tr())),
      body: BlocBuilder<NotificationsCubit, NotificationsState>(
        builder: (context, state) {
          switch (state.status) {
            case NotificationsStatus.initial:
            case NotificationsStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case NotificationsStatus.failure:
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      state.errorMessage ?? LocaleKeys.somethingWentWrong.tr(),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () =>
                          context.read<NotificationsCubit>().load(),
                      child: Text(LocaleKeys.retry.tr()),
                    ),
                  ],
                ),
              );
            case NotificationsStatus.success:
              if (state.items.isEmpty) {
                return Center(child: Text(LocaleKeys.noNotificationsYet.tr()));
              }
              return RefreshIndicator(
                onRefresh: () => context.read<NotificationsCubit>().load(),
                child: ListView.separated(
                  controller: _controller,
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(16),
                  itemCount: state.items.length + (state.isLoadingMore ? 1 : 0),
                  separatorBuilder: (_, _) => const SizedBox(height: 8),
                  itemBuilder: (context, i) {
                    if (i >= state.items.length) {
                      return const Padding(
                        padding: EdgeInsets.all(16),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }
                    return NotificationTile(
                      item: state.items[i],
                      onTap: () => _onTap(context, state.items[i]),
                    );
                  },
                ),
              );
          }
        },
      ),
    );
  }

  void _onTap(BuildContext context, NotificationModel n) {
    context.read<NotificationsCubit>().markAsRead(n.id);
    // TODO: navigate by type once the reservation details route is decided,
    // e.g. n.reservationId -> ReservationDetailsRoute(id: n.reservationId!)
  }
}
