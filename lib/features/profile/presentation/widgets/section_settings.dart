// import 'package:flutter/material.dart';
// import 'package:ewan/features/profile/data/models/languages_model.dart';

// import '../../../../core/core.dart';
// import '../../../../core/managers/update_manager.dart';
// import '../../bloc/profile_bloc.dart';
// import 'section_decoration.dart';
// import 'section_option.dart';

// class SectionSettings extends StatelessWidget {
//   const SectionSettings({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SectionDecoration(
//       title: LocaleKeys.settings,
//       items: <Widget>[
//         SectionOption(
//           onTap: () {
//             _showLanguageDialog(context);
//           },
//           iconBackgroundColor: const Color.fromRGBO(19, 91, 236, 0.1),
//           icon: AssetsManager.svg.languageSquare.svg(
//             colorFilter: const ColorFilter.mode(
//               Color.fromRGBO(19, 91, 236, 1),
//               BlendMode.srcIn,
//             ),
//           ),
//           secondOption: Text(
//             "${_getLanguageLabel(context.watch<ProfileBloc>().activeLanguage)}  (${context.watch<ProfileBloc>().activeLanguage.toUpperCase()})",
//             style: context.labelLarge?.copyWith(color: Palette.hint),
//           ),
//           optionText: LocaleKeys.language,
//         ),
//         SectionOption(
//           onTap: () => _checkForUpdate(context),
//           iconBackgroundColor: const Color.fromRGBO(94, 189, 114, 0.12),
//           icon: AssetsManager.svg.clipboardText.svg(
//             colorFilter: const ColorFilter.mode(
//               Palette.primary,
//               BlendMode.srcIn,
//             ),
//           ),
//           secondOption: Text(
//             "${LocaleKeys.current.tr()}: ${context.watch<ProfileBloc>().versionNumber}",
//             style: context.labelLarge?.copyWith(color: Palette.hint),
//           ),
//           optionText: LocaleKeys.checkForUpdate,
//         ),
//         if (PrefData.isSignedIn) ...<Widget>[
//           const Divider(),
//           SectionOption(
//             onTap: () {
//               context.pushRoute(const NotificationRoute());
//             },
//             icon: AssetsManager.svg.notificationBing.svg(
//               colorFilter: const ColorFilter.mode(
//                 Palette.primary,
//                 BlendMode.srcIn,
//               ),
//             ),
//             iconBackgroundColor: Palette.lightPrimary.withValues(alpha: 0.1),
//             optionText: LocaleKeys.notification,
//           ),
//         ],
//       ],
//     );
//   }

//   Future<void> _checkForUpdate(BuildContext context) async {
//     try {
//       final AppUpdateInfo updateInfo = await UpdateManager().getAppUpdateInfo();

//       if (updateInfo.isUpdateAvailable) {
//         await showDialog<void>(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: Text(LocaleKeys.updateAvailable.tr()),
//               content: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     '${(LocaleKeys.currentVersion).tr()}: ${updateInfo.currentVersion}',
//                   ),
//                   Text(
//                     '${(LocaleKeys.latestVersion).tr()}: ${updateInfo.latestVersion}',
//                   ),
//                   if (updateInfo.releaseNotes != null) ...<Widget>[
//                     const SizedBox(height: 8),
//                     Text(updateInfo.releaseNotes!),
//                   ],
//                 ],
//               ),
//               actions: <Widget>[
//                 TextButton(
//                   onPressed: () => Navigator.of(context).pop(),
//                   child: Text(LocaleKeys.cancel.tr()),
//                 ),
//                 TextButton(
//                   onPressed: () async {
//                     Navigator.of(context).pop();
//                     await UpdateManager().launchUpdateUrl(updateInfo.storeUrl);
//                   },
//                   child: Text(LocaleKeys.getLatestFromStore.tr()),
//                 ),
//               ],
//             );
//           },
//         );
//       } else {
//         ScaffoldMessenger.of(
//           context,
//         ).showSnackBar(SnackBar(content: Text(LocaleKeys.upToDate.tr())));
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text(LocaleKeys.checkUpdateFailed.tr())),
//       );
//     }
//   }

//   void _showLanguageDialog(BuildContext context) {
//     final String currentLang = LocalizationConfig.currentLanguage;
//     ProfileBloc profileBloc = context.read<ProfileBloc>();
//     showDialog(
//       context: context,
//       barrierDismissible: true,
//       builder: (BuildContext context) {
//         return BlocProvider<ProfileBloc>.value(
//           value: profileBloc,
//           child: Dialog(
//             backgroundColor: Colors.transparent,
//             child: Container(
//               padding: const EdgeInsets.symmetric(vertical: 16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: LocalizationConfig.supportedLanguages.map((
//                   String langCode,
//                 ) {
//                   final bool isSelected = currentLang == langCode;

//                   return Column(
//                     children: <Widget>[
//                       ListTile(
//                         title: Text(
//                           _getLanguageLabel(langCode),
//                           style: context.titleSmall?.copyWith(
//                             color: context.colorScheme.secondary,
//                           ),
//                         ),
//                         trailing: Icon(
//                           Icons.check_circle,
//                           color: isSelected
//                               ? context
//                                     .colorScheme
//                                     .primary // Yellow
//                               : const Color(0xFFE5E5E5), // Grey
//                         ),
//                         onTap: () async {
//                           Navigator.of(context).pop();
//                           profileBloc.activeLanguage = langCode;
//                           profileBloc.add(
//                             ProfileEvent.setLanguage(
//                               language: LanguageData(code: langCode, name: ''),
//                             ),
//                           );

//                           await LocalizationConfig.setAppLocale(
//                             Locale(langCode),
//                           );
//                         },
//                       ),
//                       if (langCode !=
//                           LocalizationConfig.supportedLanguages.last)
//                         const Divider(
//                           thickness: 1,
//                           indent: 16,
//                           endIndent: 16,
//                           color: Color(0xFFEEEEEE),
//                         ),
//                     ],
//                   );
//                 }).toList(),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   String _getLanguageLabel(String langCode) {
//     switch (langCode) {
//       case 'en':
//         return 'English';
//       case 'ar':
//         return 'العربية';
//       default:
//         return langCode;
//     }
//   }
// }
