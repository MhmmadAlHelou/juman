import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/data/models/reservation_invoice_model.dart';
import 'package:flutter/material.dart';

class InvoiceSheet extends StatelessWidget {
  const InvoiceSheet({super.key, required this.invoice});
  final ReservationInvoiceModel invoice;

  @override
  Widget build(BuildContext context) {
    final i = invoice;

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.invoiceDetails.tr(),
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const SizedBox(height: 16),
            _row(LocaleKeys.invoiceNumber.tr(), i.invoiceNumber),
            _row(LocaleKeys.invoiceDate.tr(), _fmt(i.invoiceDate)),
            _row(LocaleKeys.reservationNumber.tr(), i.reservationNumber),
            _row(LocaleKeys.property.tr(), i.propertyName),
            _row(LocaleKeys.propertyOwner.tr(), i.propertyOwnerName),
            _row(LocaleKeys.checkIn.tr(), _fmt(i.checkIn)),
            _row(LocaleKeys.checkOut.tr(), _fmt(i.checkOut)),
            _row(LocaleKeys.guests.tr(), '${i.numberOfGuests}'),
            _row(LocaleKeys.paymentMethod.tr(), i.paymentMethod),
            _row(
              LocaleKeys.pricePerNight.tr(),
              '${i.pricePerNight.toStringAsFixed(0)} ${i.currency}',
            ),
            _row(LocaleKeys.nights.tr(), '${i.numberOfNights}'),
            const Divider(height: 24),
            _row(
              LocaleKeys.totalPaid.tr(),
              '${i.totalPaid.toStringAsFixed(0)} ${i.currency}',
              bold: true,
            ),
            if (i.paymentReceipt != null) ...[
              const SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  i.paymentReceipt!,
                  height: 120,
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
