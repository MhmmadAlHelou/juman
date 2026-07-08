// import 'package:flutter/material.dart';
// import '../../../../core/core.dart';
// import '../../bloc/profile_bloc.dart';
// import 'section_decoration.dart';
// import 'section_option.dart';
// import '../../profile.dart' show showDeleteAccountDialog;

// class SectionAccount extends StatelessWidget {
//   const SectionAccount({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SectionDecoration(      
//       title: LocaleKeys.accountManagement,
//       items: <Widget>[
//         SectionOption(
//           onTap: () {
//             context.pushRoute(EditProfileRoute(profileBloc: context.read()));
//           },
//           icon: AssetsManager.svg.edit.svg(),          
//           optionText: LocaleKeys.personalInformation,
//         ),
//         const Divider(),
//         SectionOption(
//           onTap: () {
//             context.pushRoute(const ChangePasswordRoute());
//           },
//           icon: AssetsManager.svg.key.svg(),
//           optionText: LocaleKeys.changePassword,
//         ),
//         const Divider(),
//         SectionOption(
//           onTap: () {
//             showDeleteAccountDialog(context, context.read<ProfileBloc>());
//           },          
//           icon: AssetsManager.svg.deleteAccount.svg(
//             colorFilter: const ColorFilter.mode(Palette.error, BlendMode.srcIn),
//           ),
//           iconBackgroundColor: const Color.fromRGBO(255, 144, 145, 0.1),
//           optionText: LocaleKeys.deleteAccount,
//         ),
//       ],
//     );
//   }
// }
