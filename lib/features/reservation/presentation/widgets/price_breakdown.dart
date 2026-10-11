import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/data/models/reservation_model.dart';
import 'package:flutter/material.dart';

class PriceBreakdown extends StatelessWidget {
  const PriceBreakdown({super.key, required this.reservation});
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
          r.totalAmount.toStringAsFixed(2),
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
