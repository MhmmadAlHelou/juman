import 'package:ewan/core/core.dart';
import 'package:ewan/features/host_reservation/bloc/host_reservation_cubit.dart';
import 'package:ewan/features/host_reservation/data/host_reservation_repository.dart';
import 'package:ewan/features/host_reservation/presentation/widgets/host_reservation_card.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HostReservationsScreen extends StatelessWidget {
  const HostReservationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HostReservationsCubit(getIt<HostReservationsRepository>()),
      child: const _HostReservationsView(),
    );
  }
}

class _HostReservationsView extends StatelessWidget {
  const _HostReservationsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocaleKeys.hostReservations.tr())),
      body: BlocConsumer<HostReservationsCubit, HostReservationsState>(
        listener: (context, state) {
          if (state.errorMessage != null) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
          }
        },
        builder: (context, state) {
          if (state.status == HostReservationsStatus.loading &&
              state.reservations.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          final cubit = context.read<HostReservationsCubit>();
          final items = state.filtered;
          return Column(
            children: [
              if (state.statuses.isNotEmpty)
                SizedBox(
                  height: 56,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    children: [
                      _chip(
                        '${LocaleKeys.all.tr()} ${state.countFor(null)}',
                        state.selectedStatus == null,
                        () => cubit.selectFilter(null),
                      ),
                      for (final s in state.statuses)
                        _chip(
                          '$s ${state.countFor(s)}',
                          state.selectedStatus == s,
                          () => cubit.selectFilter(s),
                        ),
                    ],
                  ),
                ),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: cubit.load,
                  child: items.isEmpty
                      ? ListView(
                          children: [
                            const SizedBox(height: 120),
                            Center(child: Text(LocaleKeys.noReservations.tr())),
                          ],
                        )
                      : ListView.separated(
                          padding: const EdgeInsets.all(16),
                          itemCount: items.length,
                          separatorBuilder: (_, _) =>
                              const SizedBox(height: 16),
                          itemBuilder: (_, i) =>
                              HostReservationCard(reservation: items[i]),
                        ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _chip(String label, bool selected, VoidCallback onTap) => Padding(
    padding: const EdgeInsetsDirectional.only(end: 8),
    child: ChoiceChip(
      label: Text(label),
      selected: selected,
      onSelected: (_) => onTap(),
      selectedColor: Palette.primary,
      labelStyle: TextStyle(color: selected ? Palette.white : null),
    ),
  );
}
