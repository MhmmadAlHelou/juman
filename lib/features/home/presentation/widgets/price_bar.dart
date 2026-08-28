import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/data/data.dart';
import 'package:flutter/material.dart';

class PriceBar extends StatelessWidget {
  const PriceBar({super.key, required this.property});
  final PropertiesModel property;

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
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${property.pricePerNight.toStringAsFixed(2)} ',
                      style: const TextStyle(
                        color: Palette.fontColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: FontFamily.alexandria,
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: LocaleKeys.sypForTheNight.tr(),
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
            ),
            const SizedBox(width: 16),
            ElevatedButton(
              onPressed: () {
                // TODO: The logic of booking or contacting the owner
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Palette.primary,
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
