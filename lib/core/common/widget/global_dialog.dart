// import 'package:flutter/material.dart';

// import '../../core.dart';

// class GlobalDialog extends StatefulWidget {
//   const GlobalDialog({
//     super.key,
//     required this.title,
//     this.secondaryButtonTitle = LocaleKeys.cancel,
//     this.titleArgs = '',
//     this.primaryButtonController,
//     this.secondaryBorderColor,
//     this.secondaryTitleButtonColor,
//     required this.primaryButtonTitle,
//     required this.onPressedPrimaryButton,
//     this.isWarning = false,
//     this.onSecondaryPrimaryButton,
//     this.secondaryBackgroundColor,
//     this.primaryBackgroundColor,
//   });

//   final String title;
//   final String secondaryButtonTitle;
//   final Color? secondaryBorderColor;
//   final Color? secondaryTitleButtonColor;
//   final Color? secondaryBackgroundColor;
//   final Color? primaryBackgroundColor;
//   final String titleArgs;
//   final GlobalButtonController? primaryButtonController;
//   final String primaryButtonTitle;
//   final Function() onPressedPrimaryButton;
//   final Function()? onSecondaryPrimaryButton;
//   final bool isWarning;

//   @override
//   State<GlobalDialog> createState() => _GlobalDialogState();
// }

// class _GlobalDialogState extends State<GlobalDialog> {
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       titlePadding: const EdgeInsetsDirectional.fromSTEB(
//         Dimensions.space16,
//         Dimensions.space40,
//         Dimensions.space16,
//         Dimensions.space16,
//       ),
//       title: Text.rich(
//         TextSpan(
//           children: <InlineSpan>[
//             TextSpan(text: context.tr(widget.title), style: context.titleSmall),
//             if (widget.titleArgs.isNotEmpty) ...<InlineSpan>[
//               TextSpan(
//                 text: widget.titleArgs,
//                 style: context.titleSmall?.copyWith(
//                   color: context.theme.primaryColor,
//                 ),
//               ),
//               TextSpan(text: ' ?', style: context.titleSmall),
//             ],
//           ],
//         ),
//         textAlign: TextAlign.center,
//       ),
//       insetPadding: const EdgeInsets.all(Dimensions.space16),
//       content: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           GlobalButton(
//             backgroundColor:
//                 widget.secondaryBackgroundColor ??
//                 context.theme.colorScheme.surface,
//             borderColor:
//                 widget.secondaryBorderColor ??
//                 context.theme.colorScheme.onSurface,
//             elevation: 0,
//             height: 40,
//             // borderRadius: 4,
//             width: 144,
//             onPressed: widget.onSecondaryPrimaryButton ?? context.maybePop,
//             child: Text(
//               context.tr(widget.secondaryButtonTitle),
//               style: context.bodySmall?.copyWith(
//                 fontWeight: FontWeight.w500,
//                 color:
//                     widget.secondaryTitleButtonColor ??
//                     widget.secondaryBorderColor ??
//                     context.theme.colorScheme.onSurface,
//               ),
//             ),
//           ),
//           const SizedBox(width: Dimensions.space24),
//           GlobalButton(
//             backgroundColor:
//                 widget.primaryBackgroundColor ??
//                 context.theme.colorScheme.secondary,
//             controller: widget.primaryButtonController,
//             width: 144,
//             height: 40,
//             // borderRadius: 4,
//             onPressed: widget.onPressedPrimaryButton,
//             child: Text(
//               context.tr(widget.primaryButtonTitle),
//               style: context.bodySmall?.copyWith(
//                 color: context.theme.colorScheme.surface,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
