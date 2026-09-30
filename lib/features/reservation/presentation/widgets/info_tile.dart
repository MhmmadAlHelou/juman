import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onEdit,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onEdit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Palette.primary),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: FontFamily.alexandria,
                    fontWeight: FontWeight.w600,
                    color: Palette.fontColor,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontFamily: FontFamily.alexandria,
                    color: Palette.fontColor.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),
          if (onEdit != null)
            TextButton(
              onPressed: onEdit,
              child: Text(
                LocaleKeys.edit.tr(),
                style: TextStyle(
                  color: Palette.primary,
                  decoration: TextDecoration.underline,
                  fontFamily: FontFamily.alexandria,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
