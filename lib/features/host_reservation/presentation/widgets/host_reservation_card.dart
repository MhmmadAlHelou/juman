import 'package:ewan/core/core.dart';
import 'package:ewan/features/host_reservation/bloc/host_reservation_cubit.dart';
import 'package:ewan/features/host_reservation/data/host_reservation_model.dart';
import 'package:ewan/features/host_reservation/presentation/widgets/payment_receipt_sheet.dart';
import 'package:flutter/material.dart';

class HostReservationCard extends StatelessWidget {
  const HostReservationCard({super.key, required this.reservation});
  final HostReservationModel reservation;

  @override
  Widget build(BuildContext context) {
    final r = reservation;
    final payoutColor = r.isPaid ? Colors.green : Colors.orange;
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () => _openReceiptSheet(context, r.id),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Palette.backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    r.propertyTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontFamily: FontFamily.alexandria,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                _Badge(
                  label: r.reservationStatus,
                  color: _badgeColor(r.statusBadgeColor),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(
                  Icons.person_outline,
                  size: 18,
                  color: Palette.semiGray,
                ),
                const SizedBox(width: 6),
                Expanded(child: Text(r.guestName)),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(
                  Icons.calendar_today,
                  size: 16,
                  color: Palette.semiGray,
                ),
                const SizedBox(width: 6),
                Text(
                  '${_fmt(r.checkIn)} → ${_fmt(r.checkOut)}  (${r.numberOfNights})',
                ),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Palette.semiGray.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.ownerReceivable.tr(),
                        style: const TextStyle(
                          color: Palette.semiGray,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '${r.ownerReceivable.toStringAsFixed(0)} ${LocaleKeys.currency.tr()}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  _Badge(label: r.payoutStatus, color: payoutColor),
                ],
              ),
            ),
            if (!r.isPaid && r.payoutMessage.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  r.payoutMessage,
                  style: const TextStyle(color: Colors.orange, fontSize: 12),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _openReceiptSheet(BuildContext context, String id) async {
    final cubit = context.read<HostReservationsCubit>();
    final detail = await cubit.fetchDetail(id);
    if (detail == null || !context.mounted) return;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => PaymentReceiptSheet(reservation: detail),
    );
  }

  String _fmt(DateTime? d) => d == null ? '-' : '${d.day}/${d.month}/${d.year}';
}

Color _badgeColor(String value) {
  final v = value.trim().toLowerCase();
  if (v.startsWith('#')) {
    final hex = v.substring(1);
    final parsed = int.tryParse(hex.length == 6 ? 'ff$hex' : hex, radix: 16);
    if (parsed != null) return Color(parsed);
  }
  switch (v) {
    case 'green':
    case 'success':
      return Colors.green;
    case 'orange':
    case 'yellow':
    case 'warning':
      return Colors.orange;
    case 'red':
    case 'danger':
    case 'error':
      return Colors.red;
    case 'blue':
    case 'info':
      return Colors.blue;
    default:
      return Palette.semiGray;
  }
}

class _Badge extends StatelessWidget {
  const _Badge({required this.label, required this.color});
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
