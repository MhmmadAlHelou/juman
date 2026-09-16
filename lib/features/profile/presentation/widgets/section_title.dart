import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(this.title, {super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: FontFamily.alexandria,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Palette.fontColor,
        ),
      ),
    );
  }
}
