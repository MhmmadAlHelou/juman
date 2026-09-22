import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/bloc/upload_receipt_cubit.dart';
import 'package:ewan/features/reservation/data/models/reservation_model.dart';
import 'package:flutter/material.dart';

class UploadSuccessView extends StatelessWidget {
  const UploadSuccessView({super.key, required this.state});
  final UploadReceiptState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Palette.primary,
            ),
            child: const Icon(Icons.check, color: Palette.white, size: 32),
          ),
          const SizedBox(height: 16),
          Text(
            LocaleKeys.receiptUploadedTitle.tr(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Palette.fontColor,
              fontFamily: FontFamily.alexandria,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            LocaleKeys.receiptUploadedBody.tr(),
            textAlign: TextAlign.center,
            style: TextStyle(color: Palette.fontColor.withValues(alpha: 0.8)),
          ),
          const SizedBox(height: 24),
          _ReceiptFileCard(reservation: state.reservation),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // context.router.replaceAll([const MyTripsRoute()]); //TODO
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Palette.primary,
                foregroundColor: Palette.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(LocaleKeys.goToMyTrips.tr()),
            ),
          ),
        ],
      ),
    );
  }
}

class _ReceiptFileCard extends StatelessWidget {
  const _ReceiptFileCard({required this.reservation});
  final ReservationModel reservation;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Palette.semiGray),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(Icons.description_outlined, color: Palette.primary),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  reservation.receiptImage?.split('/').last ?? '',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  LocaleKeys.underVerification.tr(),
                  style: const TextStyle(color: Colors.orange, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
