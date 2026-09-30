import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/data/models/reservation_model.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ReservationConfirmedScreen extends StatelessWidget {
  const ReservationConfirmedScreen({super.key, required this.reservation});

  final ReservationModel reservation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
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
                LocaleKeys.reservationConfirmedTitle.tr(),
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
                reservation.property.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Palette.fontColor.withValues(alpha: 0.8),
                  fontFamily: FontFamily.alexandria,
                ),
              ),
              Text(
                '${_fmt(reservation.checkIn)} – ${_fmt(reservation.checkOut)}',
                style: TextStyle(
                  color: Palette.fontColor.withValues(alpha: 0.8),
                  fontFamily: FontFamily.alexandria,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    context.router.root.navigate(const BaseRoute());
                    context.tabsRouter.setActiveIndex(1);
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
        ),
      ),
    );
  }

  String _fmt(DateTime d) => '${d.day}/${d.month}/${d.year}';
}
