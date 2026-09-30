import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/data/data.dart';
import 'package:ewan/features/profile/data/profile_repository.dart';
import 'package:ewan/features/reservation/presentation/widgets/missing_verification_dialog.dart';
import 'package:ewan/features/reservation/presentation/widgets/select_dates_bottom_sheet.dart';
import 'package:flutter/material.dart';

class PriceBar extends StatefulWidget {
  const PriceBar({super.key, required this.property});
  final PropertiesModel property;

  @override
  State<PriceBar> createState() => _PriceBarState();
}

class _PriceBarState extends State<PriceBar> {
  DateTime? _checkIn;
  DateTime? _checkOut;
  int _numberOfGuests = 1;

  int get _numberOfNights {
    if (_checkIn == null || _checkOut == null) return 0;
    return _checkOut!.difference(_checkIn!).inDays;
  }

  bool get _hasSelectedDates => _checkIn != null && _checkOut != null;

  Future<void> _openSelectDates() async {
    final result = await SelectDatesBottomSheet.show(
      context,
      propertyId: widget.property.id,
      pricePerNight: widget.property.pricePerNight,
      maxGuests: widget.property.maxGuests,
      initialCheckIn: _checkIn,
      initialCheckOut: _checkOut,
      initialGuests: _numberOfGuests,
    );

    if (result != null) {
      setState(() {
        _checkIn = result['checkIn'];
        _checkOut = result['checkOut'];
        _numberOfGuests = result['numberOfGuests'] as int;
      });
    }
  }

  void _goToReserve() async {
    if (!_hasSelectedDates) return;

    final profile = await getIt<ProfileRepository>().getProfile();
    if (!(profile.identityPhoto != null &&
        profile.familyBookDocument != null)) {
      if (!mounted) return;
      showMissingVerificationDialog(context); // ← مشتركة، تحت
      return;
    }

    context.router.push(
      ReserveRoute(
        property: widget.property,
        checkIn: _checkIn!,
        checkOut: _checkOut!,
        numberOfGuests: _numberOfGuests,
      ),
    );
  }

  String _formatDate(DateTime date) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return '${date.day} ${months[date.month - 1]}';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Palette.backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Palette.primary.withValues(alpha: 0.08),
              blurRadius: 8,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: _hasSelectedDates
                              ? '${(widget.property.pricePerNight * _numberOfNights).toStringAsFixed(2)} '
                              : '${widget.property.pricePerNight.toStringAsFixed(2)} ',
                          style: const TextStyle(
                            color: Palette.fontColor,
                            fontWeight: FontWeight.w700,
                            fontFamily: FontFamily.alexandria,
                            fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text: _hasSelectedDates
                              ? LocaleKeys.total.tr()
                              : LocaleKeys.sypForTheNight.tr(),
                          style: const TextStyle(
                            color: Palette.fontColor,
                            fontWeight: FontWeight.w400,
                            fontFamily: FontFamily.alexandria,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  InkWell(
                    onTap: _openSelectDates,
                    child: Text(
                      _hasSelectedDates
                          ? '${_formatDate(_checkIn!)} - ${_formatDate(_checkOut!)}'
                          : LocaleKeys.planYourStay.tr(),
                      style: const TextStyle(
                        color: Palette.fontColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: FontFamily.alexandria,
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            ElevatedButton(
              onPressed: _hasSelectedDates ? _goToReserve : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Palette.primary,
                disabledBackgroundColor: Palette.semiGray,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                LocaleKeys.reserve.tr(),
                style: TextStyle(
                  color: Palette.white,
                  fontSize: 14,
                  fontFamily: FontFamily.alexandria,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
