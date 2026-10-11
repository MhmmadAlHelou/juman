import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/bloc/reserve_details/reserve_details_cubit.dart';
import 'package:ewan/features/reservation/data/models/reservation_model.dart';
import 'package:ewan/features/reservation/data/reservation_repository.dart';
import 'package:ewan/features/reservation/data/reservation_status.dart';
import 'package:ewan/features/reservation/presentation/widgets/info_tile.dart';
import 'package:ewan/features/reservation/presentation/widgets/invoice_sheet.dart';
import 'package:ewan/features/reservation/presentation/widgets/price_breakdown.dart';
import 'package:ewan/features/reservation/presentation/widgets/property_summary_card.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ReservationDetailsScreen extends StatelessWidget {
  const ReservationDetailsScreen({super.key, required this.reservationId});
  final String reservationId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocaleKeys.reservationDetails.tr())),

      body: BlocProvider(
        create: (_) => ReservationDetailsCubit(
          getIt<ReservationRepository>(),
          reservationId: reservationId,
        ),
        child: BlocBuilder<ReservationDetailsCubit, ReservationDetailsState>(
          builder: (context, state) {
            if (state.status == ReservationDetailsStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            final r = state.reservation;
            if (r == null) {
              return Center(child: Text(state.errorMessage ?? ''));
            }
            return RefreshIndicator(
              onRefresh: () =>
                  context.read<ReservationDetailsCubit>().load(r.id),
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  _StatusBanner(reservation: r),
                  const SizedBox(height: 16),
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
                  PriceBreakdown(reservation: r),
                  const SizedBox(height: 24),
                  _DetailsActions(reservation: r),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  String _fmt(DateTime d) => '${d.day}/${d.month}/${d.year}';
}

class _StatusBanner extends StatelessWidget {
  const _StatusBanner({required this.reservation});
  final ReservationModel reservation;

  @override
  Widget build(BuildContext context) {
    final r = reservation;
    final (icon, label, color, body) = switch (r) {
      _ when r.status == ReservationStatus.confirmed => (
        Icons.check_circle,
        LocaleKeys.confirmed.tr(),
        Colors.green,
        null,
      ),
      _ when r.isEffectivelyExpired => (
        Icons.cancel,
        LocaleKeys.expired.tr(),
        Colors.red,
        null,
      ),
      _ when r.status == ReservationStatus.rejected => (
        Icons.cancel,
        LocaleKeys.rejected.tr(),
        Colors.red,
        r.rejectionReason,
      ),
      _ when r.status == ReservationStatus.holdApproval => (
        Icons.hourglass_top,
        LocaleKeys.pendingReview.tr(),
        Colors.orange,
        LocaleKeys.pendingReviewBody.tr(),
      ),
      _ when r.needsReceiptUpload => (
        Icons.warning_amber,
        LocaleKeys.actionRequired.tr(),
        Colors.red,
        LocaleKeys.actionRequiredBody.tr(),
      ),
      _ => (Icons.info_outline, r.status.name, Palette.darkGray, null),
    };

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(color: color, fontWeight: FontWeight.w700),
                ),
                if (body != null && body.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      body,
                      style: const TextStyle(color: Palette.darkGray),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailsActions extends StatelessWidget {
  const _DetailsActions({required this.reservation});
  final ReservationModel reservation;

  @override
  Widget build(BuildContext context) {
    final r = reservation;
    final buttons = <Widget>[];

    if (r.status == ReservationStatus.confirmed) {
      buttons.add(
        OutlinedButton.icon(
          onPressed: () async {
            await context.read<ReservationDetailsCubit>().loadInvoice(r.id);
            if (!context.mounted) return;
            final invoice = context
                .read<ReservationDetailsCubit>()
                .state
                .invoice;
            if (invoice == null) return;
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (_) => InvoiceSheet(invoice: invoice),
            );
          },
          icon: const Icon(Icons.receipt_long),
          label: Text(LocaleKeys.viewInvoice.tr()),
        ),
      );
    }

    if (r.needsReceiptUpload) {
      buttons.add(
        ElevatedButton(
          onPressed: () =>
              context.router.push(UploadReceiptRoute(reservation: r)),
          style: ElevatedButton.styleFrom(
            backgroundColor: Palette.primary,
            foregroundColor: Palette.white,
          ),
          child: Text(LocaleKeys.submitBooking.tr()),
        ),
      );
    }
    if (r.canResubmitReceipt) {
      buttons.add(
        ElevatedButton(
          onPressed: () =>
              context.router.push(UploadReceiptRoute(reservation: r)),
          style: ElevatedButton.styleFrom(
            backgroundColor: Palette.primary,
            foregroundColor: Palette.white,
          ),
          child: Text(LocaleKeys.resubmitBooking.tr()),
        ),
      );
    }
    if (r.canCancel) {
      buttons.add(
        OutlinedButton(
          onPressed: () => context.read<ReservationDetailsCubit>().cancel(r.id),
          child: Text(LocaleKeys.cancelReservation.tr()),
        ),
      );
    }

    if (buttons.isEmpty) return const SizedBox.shrink();
    return Column(
      children: buttons
          .map(
            (b) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SizedBox(width: double.infinity, child: b),
            ),
          )
          .toList(),
    );
  }
}
