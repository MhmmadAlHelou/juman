import 'package:flutter/material.dart';

import 'package:ewan/core/core.dart';

class LabelAuthTextWidget extends StatelessWidget {
  final String text;
  const LabelAuthTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          context.tr(text),
          style: context.labelLarge?.copyWith(
            fontSize: FontSize.smallBody,
            letterSpacing: 0.6,
            color: Palette.primary,
            fontWeight: FontWeight.w700,
            fontFamily: FontFamily.alexandria,
          ),
        ),
        const SizedBox(height: 6),
      ],
    );
  }
}
