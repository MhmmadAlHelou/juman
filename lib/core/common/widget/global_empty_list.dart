// import 'package:ewan/core/managers/theme/text_theme/font_family.dart';
// import 'package:flutter/material.dart';
// import '/core/core.dart';

// class GlobalEmptyList extends StatelessWidget {
//   final String? message, description;
//   const GlobalEmptyList({super.key, this.message, this.description});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         AssetsManager.images.emptyFavourite.image(),
//         const SizedBox(height: 25),
//         Text(          
//           message ?? (LocaleKeys.noResultsFound).tr(),
//           style: context.bodyMedium?.copyWith(
//             fontFamily: FontFamily.fredokaOne,
//           ),
//         ),
//         const SizedBox(height: 16),
//         Container(
//           margin: const EdgeInsets.symmetric(horizontal: 20),
//           child: Text(            
//             description ?? (LocaleKeys.emptyListDescription).tr(),
//             textAlign: TextAlign.center,
//             style: context.bodyMedium?.copyWith(color: Palette.hint),
//           ),
//         ),
//       ],
//     );
//   }
// }
