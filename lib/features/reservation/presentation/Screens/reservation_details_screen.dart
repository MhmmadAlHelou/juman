import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/bloc/reserve_details/reserve_details_cubit.dart';
import 'package:ewan/features/reservation/data/models/reservation_model.dart';
import 'package:ewan/features/reservation/data/reservation_repository.dart';
import 'package:ewan/features/reservation/data/reservation_status.dart';
import 'package:ewan/features/reservation/presentation/widgets/info_tile.dart';
import 'package:ewan/features/reservation/presentation/widgets/property_summary_card.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ReservationDetailsScreen extends StatelessWidget {
  const ReservationDetailsScreen({super.key, required this.reservationId});
  final String reservationId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ReservationDetailsCubit(
        getIt<ReservationRepository>(),
        reservationId: reservationId,
      ),
      child: const _ReservationDetailsView(),
    );
  }
}

class _ReservationDetailsView extends StatelessWidget {
  const _ReservationDetailsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocaleKeys.reservationDetails.tr())),
      body: BlocBuilder<ReservationDetailsCubit, ReservationDetailsState>(
        builder: (context, state) {
          if (state.status == ReservationDetailsStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.reservation == null) {
            return Center(child: Text(state.errorMessage ?? ''));
          }
          final r = state.reservation!;
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              PropertySummaryCard(property: r.property),
              const SizedBox(height: 24),
              InfoTile(
                icon: Icons.calendar_today,
                title: LocaleKeys.dates.tr(),
                subtitle:
                    '${_fmt(r.checkIn)} – ${_fmt(r.checkOut)}\n'
                    '${r.numberOfNights} ${LocaleKeys.nights.tr()}',
              ),
              InfoTile(
                icon: Icons.people_outline,
                title: LocaleKeys.guests.tr(),
                subtitle: '${r.numberOfGuests} ${LocaleKeys.guests.tr()}',
              ),
              const SizedBox(height: 24),
              _PriceBreakdown(reservation: r),
              const SizedBox(height: 24),
              // if (r.status == ReservationStatus.confirmed) TODO:_____________
              //   OutlinedButton.icon(
              //     onPressed: () => context.read<InvoiceCubit?>()?.load(r.id),
              //     icon: const Icon(Icons.receipt_long),
              //     label: Text(LocaleKeys.downloadInvoice.tr()),
              //   ),
            ],
          );
        },
      ),
    );
  }

  String _fmt(DateTime d) => '${d.day}/${d.month}/${d.year}';
}

class _PriceBreakdown extends StatelessWidget {
  const _PriceBreakdown({required this.reservation});
  final ReservationModel reservation;

  @override
  Widget build(BuildContext context) {
    final r = reservation;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.priceDetails.tr(),
          style: TextStyle(
            color: Palette.fontColor,
            fontFamily: FontFamily.alexandria,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        _row(
          '${r.pricePerNight.toStringAsFixed(0)} × ${r.numberOfNights}',
          r.totalAmount.toStringAsFixed(0),
        ),
        const Divider(),
        _row(
          LocaleKeys.totalSyp.tr(),
          r.totalAmount.toStringAsFixed(0),
          bold: true,
        ),
      ],
    );
  }

  Widget _row(String label, String value, {bool bold = false}) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: bold ? const TextStyle(fontWeight: FontWeight.bold) : null,
        ),
        Text(
          value,
          style: bold ? const TextStyle(fontWeight: FontWeight.bold) : null,
        ),
      ],
    ),
  );
}
