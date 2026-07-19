// import 'package:flutter/material.dart';

// import '../../../../core/core.dart';

// class SectionOption extends StatelessWidget {
//   const SectionOption({
//     super.key,
//     required this.onTap,
//     required this.optionText,
//     this.secondOption,
//     required this.icon,
//     this.iconBackgroundColor,
//   });
//   final SvgPicture icon;
//   final Color? iconBackgroundColor;
//   final String optionText;
//   final Widget? secondOption;
//   final void Function() onTap;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsetsDirectional.symmetric(
//         vertical: 16,
//         horizontal: 16,
//       ),
//       child: GestureDetector(
//         behavior: HitTestBehavior.opaque,
//         onTap: onTap,
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           children: <Widget>[
//             Container(
//               width: 40,
//               height: 40,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color:
//                     iconBackgroundColor ??
//                     Palette.gray,
//               ),
//               padding: const EdgeInsets.all(10),
//               child: icon,
//             ),
//             const SizedBox(width: 8),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   context.tr(optionText),
//                   style: context.titleSmall?.copyWith(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 secondOption ?? const SizedBox.shrink(),
//               ],
//             ),
//             const Spacer(),
//             const Icon(
//               Icons.arrow_forward_ios,
//               color: Color.fromRGBO(148, 163, 184, 1),
//               size: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
