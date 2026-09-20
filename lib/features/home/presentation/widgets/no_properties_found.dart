import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';

class NoPropertiesFound extends StatelessWidget {
  const NoPropertiesFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.search_off, size: 48, color: Palette.darkGray),
            const SizedBox(height: 16),
            Text(
              LocaleKeys.noPropertiesFound.tr(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              LocaleKeys.tryDifferentFilters.tr(),
              style: const TextStyle(color: Palette.darkGray),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
