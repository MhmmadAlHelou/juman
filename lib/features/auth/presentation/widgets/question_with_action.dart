import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class QuestionWithActionWidget extends StatelessWidget {
  const QuestionWithActionWidget({
    super.key,
    required this.question,
    required this.action,
    this.actionArgs = const <String>[],
    required this.onPressed,
  });
  final void Function() onPressed;
  final String question;
  final String action;
  final List<String> actionArgs;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text.rich(
        TextSpan(
          children: <InlineSpan>[
            TextSpan(
              text: question.tr(),
              style: context.titleSmall?.copyWith(
                color: Palette.fontColor,
                fontFamily: FontFamily.alexandria,
                fontSize: FontSize.smallBody,
                fontWeight: FontWeight.w400,
              ),
            ),
            const WidgetSpan(child: SizedBox(width: Dimensions.space4)),
            TextSpan(
              text: action.tr(args: actionArgs),
              style: context.bodySmall?.copyWith(
                decorationColor: context.theme.colorScheme.primary,
                fontSize: FontSize.smallBody,
                fontWeight: FontWeight.w700,
                color: context.theme.colorScheme.primary,
                fontFamily: FontFamily.alexandria,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
