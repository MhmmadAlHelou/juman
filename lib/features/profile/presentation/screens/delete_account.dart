// import 'package:flutter/material.dart';
// import 'package:ewan/core/core.dart';
// import 'package:ewan/features/profile/profile.dart';

// @RoutePage()
// class DeleteAccountScreen extends StatelessWidget {
//   const DeleteAccountScreen({super.key, required this.profileBloc});

//   final ProfileBloc profileBloc;

//   @override
//   Widget build(BuildContext context) {
//     return DeleteAccountView(profileBloc: profileBloc);
//   }
// }

// class DeleteAccountView extends StatelessWidget {
//   const DeleteAccountView({super.key, required this.profileBloc});

//   final ProfileBloc profileBloc;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: GlobalAppBar(
//         title: LocaleKeys.deleteAccount.tr(),
//         backButton: true,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           const SizedBox(height: Dimensions.space24),
//           // Center(child: AssetsManager.svg.warning.svg()),
//           const SizedBox(height: Dimensions.space40),
//           Text(LocaleKeys.deleteAccount.tr(), style: context.titleSmall),
//           const SizedBox(height: Dimensions.space8),
//           // Text(
//           //   LocaleKeys.deleteAccountWarning.tr(),
//           //   style: context.bodySmall?.copyWith(
//           //     color: context.colorScheme.tertiary,
//           //   ),
//           // ),
//           const SizedBox(height: Dimensions.space50),
//           GlobalButton(
//             backgroundColor: context.colorScheme.error,
//             borderRadius: 8,
//             onPressed: () {
//               // showDeleteAccountDialog(context, profileBloc);
//             },
//             elevation: 0,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Icon(
//                   Icons.warning_amber_rounded,
//                   color: context.colorScheme.surface,
//                 ),
//                 const SizedBox(width: Dimensions.space8),
//                 // Text(
//                 //   'LocaleKeys.deactivateAccount.tr()',
//                 //   style: context.bodySmall?.copyWith(
//                 //     color: context.colorScheme.surface,
//                 //   ),
//                 // ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
