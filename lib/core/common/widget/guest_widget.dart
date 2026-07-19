import 'package:ewan/core/core.dart';
import 'package:ewan/core/managers/theme/dimensions.dart';
import 'package:flutter/material.dart';

class GuestWidget extends StatelessWidget {
  const GuestWidget({super.key, required this.onPressed});

  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AssetsManager.images.guestImg.image(),
          Text(
            LocaleKeys.exclusiveContent.tr(),
            textAlign: TextAlign.center,
            style: context.headlineSmall?.copyWith(color: Palette.lightPrimary),
          ),
          const SizedBox(height: Dimensions.space8),
          Text(
            LocaleKeys.exclusiveContentMessage.tr(),
            textAlign: TextAlign.center,
            style: context.bodySmall?.copyWith(color: Palette.hint),
          ),
          const SizedBox(height: Dimensions.space40),
          GlobalButton(
            onPressed: onPressed,
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AssetsManager.svg.login.svg(
                  colorFilter: const ColorFilter.mode(
                    Palette.white,
                    BlendMode.srcIn,
                  ),
                ),
                Text(
                  LocaleKeys.login.tr(),
                  style: context.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Palette.white,
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
