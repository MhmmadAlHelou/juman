import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/presentation/screens/property_detail.dart';
import 'package:ewan/features/reservation/bloc/my_trips/my_trips_cubit.dart';
import 'package:ewan/features/reservation/data/models/reservation_model.dart';
import 'package:ewan/features/reservation/data/reservation_repository.dart';
import 'package:ewan/features/reservation/data/reservation_status.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyTripsScreen extends StatelessWidget {
  const MyTripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyTripsCubit(getIt<ReservationRepository>()),
      child: const _MyTripsView(),
    );
  }
}

class _MyTripsView extends StatelessWidget {
  const _MyTripsView();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.myReservations.tr()),
          bottom: TabBar(
            tabs: [
              Tab(text: LocaleKeys.approved.tr()),
              Tab(text: LocaleKeys.pending.tr()),
              Tab(text: LocaleKeys.rejected.tr()),
            ],
          ),
        ),
        body: BlocConsumer<MyTripsCubit, MyTripsState>(
          listener: (context, state) {
            if (state.status == MyTripsStatus.error &&
                state.errorMessage != null) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
            }
          },
          builder: (context, state) {
            if (state.status == MyTripsStatus.loading &&
                state.reservations.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            }
            return TabBarView(
              children: TripTab.values
                  .map(
                    (tab) => _TripsList(
                      reservations: state.byTab(tab),
                      onRefresh: () => context.read<MyTripsCubit>().load(),
                    ),
                  )
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}

class _TripsList extends StatelessWidget {
  const _TripsList({required this.reservations, required this.onRefresh});
  final List<ReservationModel> reservations;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: reservations.isEmpty
          ? ListView(
              children: [
                const SizedBox(height: 120),
                Center(child: Text(LocaleKeys.noReservations.tr())),
              ],
            )
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: reservations.length,
              separatorBuilder: (_, _) => const SizedBox(height: 16),
              itemBuilder: (_, i) =>
                  _ReservationCard(reservation: reservations[i]),
            ),
    );
  }
}

class _ReservationCard extends StatelessWidget {
  const _ReservationCard({required this.reservation});
  final ReservationModel reservation;

  @override
  Widget build(BuildContext context) {
    final r = reservation;
    final cubit = context.read<MyTripsCubit>();
    final cancelling = context.select<MyTripsCubit, bool>(
      (c) => c.state.cancellingId == r.id,
    );

    return Container(
      decoration: BoxDecoration(
        color: Palette.backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (r.property.coverImageUrl != null)
            Image.network(
              r.property.coverImageUrl!,
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  r.property.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontFamily: FontFamily.alexandria,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '${r.property.area.name}, ${r.property.city.name}',
                  style: const TextStyle(
                    color: Palette.fontColor,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${_fmt(r.checkIn)} → ${_fmt(r.checkOut)}  •  '
                  '${r.numberOfGuests} ${LocaleKeys.guests.tr()}',
                ),
                const SizedBox(height: 8),
                Text(
                  '${r.totalAmount.toStringAsFixed(2)} '
                  '${LocaleKeys.total.tr()}',
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                if (r.rejectionReason != null && r.rejectionReason!.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      r.rejectionReason!,
                      style: const TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ),
                const SizedBox(height: 12),
                _Actions(reservation: r, cancelling: cancelling, cubit: cubit),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _fmt(DateTime d) => '${d.day}/${d.month}/${d.year}';
}

class _Actions extends StatelessWidget {
  const _Actions({
    required this.reservation,
    required this.cancelling,
    required this.cubit,
  });

  final ReservationModel reservation;
  final bool cancelling;
  final MyTripsCubit cubit;

  @override
  Widget build(BuildContext context) {
    final r = reservation;
    final buttons = <Widget>[];

    if (r.needsReceiptUpload) {
      buttons.add(
        _primary(LocaleKeys.uploadNow.tr(), () async {
          await context.router.push(UploadReceiptRoute(reservation: r));
          cubit.load();
        }),
      );
    }
    if (r.status == ReservationStatus.holdApproval && !r.isEffectivelyExpired) {
      buttons.add(_secondary(LocaleKeys.pendingHostReview.tr(), null));
    }
    if (r.tripTab == TripTab.rejected &&
        r.status != ReservationStatus.rejected) {
      buttons.add(
        _primary(LocaleKeys.bookAgain.tr(), () {
          // TODO: push PropertyDetailPage(property: r.property)
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => PropertyDetailPage(property: r.property),
            ),
          );
        }),
      );
    }
    buttons.add(
      _secondary(LocaleKeys.viewDetails.tr(), () {
        // TODO: ReservationDetailsScreen (getReservation / invoice / payment-confirmation)
        context.router.push(ReservationDetailsRoute(reservationId: r.id));
      }),
    );
    if (r.canCancel) {
      buttons.add(
        _secondary(
          cancelling ? '...' : LocaleKeys.cancelRequest.tr(),
          cancelling ? null : () => cubit.cancel(r.id),
        ),
      );
    }

    return Wrap(spacing: 8, runSpacing: 8, children: buttons);
  }

  Widget _primary(String label, VoidCallback? onTap) => ElevatedButton(
    onPressed: onTap,
    style: ElevatedButton.styleFrom(
      backgroundColor: Palette.primary,
      foregroundColor: Palette.white,
    ),
    child: Text(label),
  );

  Widget _secondary(String label, VoidCallback? onTap) =>
      OutlinedButton(onPressed: onTap, child: Text(label));
}
