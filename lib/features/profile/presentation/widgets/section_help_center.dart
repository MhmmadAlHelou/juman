// import 'package:flutter/material.dart';

// import '../../../../core/core.dart';
// import '../../profile.dart';
// import 'section_decoration.dart';

// class SectionHelpCenter extends StatelessWidget {
//   const SectionHelpCenter({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SectionDecoration(
//       title: LocaleKeys.supportAndPrivacy,
//       items: <Widget>[
//         SectionOption(
//           onTap: () {
//             context.pushRoute(StaticRoute(systemInfo: SystemInfo.termsOfUse));
//           },
//           icon: AssetsManager.svg.clipboardText.svg(),
//           optionText: LocaleKeys.termsOfUse,
//         ),
//         const Divider(),
//         SectionOption(
//           onTap: () {
//             context.pushRoute(
//               StaticRoute(systemInfo: SystemInfo.privacyPolicy),
//             );
//           },
//           icon: AssetsManager.svg.securityUser.svg(),
//           optionText: LocaleKeys.privacyPolicy,
//         ),
//         const Divider(),
//         // SectionOption(
//         //   onTap: () {},
//         //   icon: AssetsManager.svg.infoCircle.svg(),
//         //   optionText: LocaleKeys.aboutUs,
//         // ),
//         // const Divider(),
//         SectionOption(
//           onTap: () {
//             context.pushRoute(const ContactUsRoute());
//           },
//           icon: AssetsManager.svg.messageText.svg(),
//           optionText: LocaleKeys.contactUs,
//         ),
//       ],
//     );
//   }
// }
