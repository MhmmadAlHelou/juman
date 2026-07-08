// import 'package:flutter/material.dart';
// import 'package:ewan/core/core.dart';

// class SectionCardWidget extends StatelessWidget {
//   final bool isSavedItems;
//   const SectionCardWidget({super.key, required this.isSavedItems});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: GestureDetector(
//         onTap: () {
//           if (isSavedItems) {
//             AutoTabsRouter.of(context).setActiveIndex(1);
//           } else {
//             AutoTabsRouter.of(context).setActiveIndex(2);
//           }
//         },
//         child: Container(
//           decoration: AppDecorations.card,
//           padding: const EdgeInsets.symmetric(vertical: 16),
//           child: Column(
//             spacing: 8,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 width: 48,
//                 height: 48,
//                 decoration: BoxDecoration(
//                   color: isSavedItems
//                       ? Palette.lightPrimary.withValues(alpha: 0.1)
//                       : Palette.lightSecondary.withValues(alpha: 0.1),
//                   shape: BoxShape.circle,
//                 ),
//                 child: Icon(
//                   isSavedItems ? Icons.bookmarks_outlined : Icons.upload_file,
//                   color: isSavedItems
//                       ? context.colorScheme.primary
//                       : context.colorScheme.secondary,
//                 ),
//               ),
//               Text(
//                 isSavedItems
//                     ? (LocaleKeys.savedItems).tr()
//                     : (LocaleKeys.mySubmissions).tr(),
//                 style: context.bodySmall?.copyWith(fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
