import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    super.key,
    required this.children,
    this.highlighted = false,
  });

  final List<Widget> children;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: highlighted
            ? Palette.primary.withValues(alpha: 0.06)
            : Palette.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Palette.fontColor.withValues(alpha: 0.08)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Material(
        type: MaterialType.transparency,
        child: Column(
          children: <Widget>[
            for (int i = 0; i < children.length; i++) ...<Widget>[
              children[i],
              if (i != children.length - 1)
                Divider(
                  height: 1,
                  color: Palette.fontColor.withValues(alpha: 0.06),
                ),
            ],
          ],
        ),
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.trailingText,
    this.titleColor,
    this.iconColor,
    this.showChevron = true,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final String? trailingText;
  final Color? titleColor;
  final Color? iconColor;
  final bool showChevron;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: iconColor ?? Palette.fontColor),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: FontFamily.alexandria,
          fontSize: 15,
          color: titleColor ?? Palette.fontColor,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          if (trailingText != null)
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                trailingText!,
                style: TextStyle(
                  fontFamily: FontFamily.alexandria,
                  fontSize: 14,
                  color: Palette.fontColor.withValues(alpha: 0.6),
                ),
              ),
            ),
          if (showChevron) const Icon(Icons.chevron_right, size: 20),
        ],
      ),
      onTap: onTap,
    );
  }
}
