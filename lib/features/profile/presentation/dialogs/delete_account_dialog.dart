// import 'package:flutter/material.dart';

// import '../../../../core/core.dart';
// import '../../bloc/profile_bloc.dart';
// import 'confirmation_delete_account_dialog.dart';

// Future<void> showDeleteAccountDialog(
//   BuildContext context,
//   ProfileBloc profileBloc,
// ) => showDialog(
//   context: context,
//   builder:
//       (BuildContext ctx) => AlertDialog(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//         titlePadding: const EdgeInsetsDirectional.fromSTEB(
//           Dimensions.space16,
//           Dimensions.space40,
//           Dimensions.space16,
//           Dimensions.space16,
//         ),
//         insetPadding: const EdgeInsets.all(Dimensions.space16),
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               LocaleKeys.deleteAccountMessage.tr(),
//               style: context.titleSmall,
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//         content: Row(
//           spacing: Dimensions.space24,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             GlobalButton(
//               backgroundColor: context.colorScheme.surface,
//               borderColor: context.colorScheme.error,
//               width: 144,
//               height: 40,
            
//               onPressed: () {
//                 ctx
//                     .maybePop(true)
//                     .then(
//                       ctx.mounted
//                           ? (bool value) {
//                             showConfirmationDeleteAccountDialog(
//                               context,
//                               profileBloc,
//                             );
//                           }
//                           : (bool value) {},
//                     );
//               },
//               child: Text(
//                 LocaleKeys.deactivate.tr(),
//                 style: context.bodySmall?.copyWith(
//                   color: context.colorScheme.error,
//                 ),
//               ),
//             ),
//             GlobalButton(
//               elevation: 0,
//               height: 40,
//               width: 144,              
//               onPressed: context.maybePop,
//               child: Text(
//                 LocaleKeys.cancel.tr(),
//                 style: context.bodySmall?.copyWith(
//                   color: context.theme.colorScheme.surface,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
// );
