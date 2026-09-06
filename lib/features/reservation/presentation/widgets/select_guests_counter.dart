import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({super.key, required this.icon, this.onTap});
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isEnabled = onTap != null;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isEnabled ? Palette.primary : Palette.semiGray,
          ),
        ),
        child: Icon(
          icon,
          size: 16,
          color: isEnabled ? Palette.primary : Palette.semiGray,
        ),
      ),
    );
  }
}
