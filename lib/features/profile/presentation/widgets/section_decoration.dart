// import 'package:flutter/material.dart';

// import '../../../../core/core.dart';

// class SectionDecoration extends StatelessWidget {
//   const SectionDecoration({
//     super.key,
//     required this.title,
//     required this.items,
//   });
//   final String title;
//   final List<Widget> items;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           context.tr(title).toUpperCase(),
//           style: context.labelLarge?.copyWith(
//             color: Palette.hint,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: Dimensions.space15),
//         DecoratedBox(
//           decoration: AppDecorations.card,
//           child: Column(children: items),
//         ),
//       ],
//     );
//   }
// }
