import 'package:ewan/core/common/utils/media_url.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/host_reservation/data/host_reservation_model.dart';
import 'package:flutter/material.dart';

class PaymentReceiptSheet extends StatelessWidget {
  const PaymentReceiptSheet({super.key, required this.reservation});
  final HostReservationModel reservation;

  @override
  Widget build(BuildContext context) {
    final r = reservation;
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.paymentReceipt.tr(),
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const SizedBox(height: 16),
            _row(LocaleKeys.property.tr(), r.propertyTitle),
            _row(LocaleKeys.reservationStatus.tr(), r.reservationStatus),
            _row(LocaleKeys.guest.tr(), r.guestName),
            _row(
              LocaleKeys.stay.tr(),
              '${_fmt(r.checkIn)} – ${_fmt(r.checkOut)} (${r.numberOfNights})',
            ),
            _row(LocaleKeys.payoutStatus.tr(), r.payoutStatus),
            if (r.paymentDate != null)
              _row(LocaleKeys.paymentDate.tr(), _fmt(r.paymentDate)),
            const Divider(height: 24),
            _row(
              LocaleKeys.netPayout.tr(),
              '${r.ownerReceivable.toStringAsFixed(0)} ${LocaleKeys.currency.tr()}',
              bold: true,
            ),
            if (!r.isPaid && r.payoutMessage.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  r.payoutMessage,
                  style: const TextStyle(color: Colors.orange),
                ),
              ),
            if (r.paymentReceipt != null) ...[
              const SizedBox(height: 16),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  resolveMediaUrl(r.paymentReceipt!),
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) =>
                      const Icon(Icons.description_outlined, size: 40),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _row(String label, String value, {bool bold = false}) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Palette.fontColor)),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.end,
            style: bold ? const TextStyle(fontWeight: FontWeight.bold) : null,
          ),
        ),
      ],
    ),
  );

  String _fmt(DateTime? d) => d == null ? '-' : '${d.day}/${d.month}/${d.year}';
}
