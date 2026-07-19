// import 'package:flutter/material.dart';
// import '../../../../core/core.dart';
// import '../../../auth/auth.dart';
// import '../../profile.dart';

// class SectionUserInfo extends StatefulWidget {
//   const SectionUserInfo({super.key});

//   @override
//   State<SectionUserInfo> createState() => _SectionUserInfoState();
// }

// class _SectionUserInfoState extends State<SectionUserInfo> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ProfileBloc, ProfileState>(
//       buildWhen:
//           (ProfileState previous, ProfileState current) =>
//               current.runtimeType ==
//                   const ProfileState.getProfileSucceed().runtimeType ||
//               current.runtimeType == const ProfileState.loading().runtimeType ||
//               current.runtimeType ==
//                   const ProfileState.guestUser().runtimeType ||
//               current.runtimeType == const ProfileState.failed().runtimeType,
//       builder: (BuildContext context, ProfileState state) {
//         return state.maybeWhen(
//           loading: () => const Center(child: CircularProgressIndicator()),
//           failed:
//               (GeneralException? generalException) => GlobalErrorWidget(
//                 generalException: generalException,
//                 isHorizontal: true,
//                 onPressed: () {
//                   context.read<ProfileBloc>().add(
//                     const ProfileEvent.getProfile(),
//                   );
//                 },
//               ),
//           guestUser:
//               () => Container(
//                 decoration: AppDecorations.card,
//                 width: double.infinity,
//                 padding: const EdgeInsets.all(32),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   mainAxisSize: MainAxisSize.min,
//                   spacing: 12,
//                   children: <Widget>[
//                     Container(
//                       width: 90,
//                       height: 90,
//                       decoration: const BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Palette.gray,
//                       ),
//                       padding: const EdgeInsets.all(2),
//                       child: const Icon(
//                         Icons.account_circle_outlined,
//                         color: Palette.semiGray,
//                         size: 45,
//                       ),
//                     ),
//                     Text(                      
//                       LocaleKeys.welcomeGuest.tr(),
//                       style: context.titleSmall?.copyWith(
//                         fontFamily: FontFamily.fredokaOne,                 
//                       ),
//                     ),
//                     Text(                      
//                       LocaleKeys.loginToSync.tr(),
//                       maxLines: 2,
//                       textAlign: TextAlign.center,
//                       style: context.titleSmall?.copyWith(
//                         fontWeight: FontWeight.w300,
//                         color: Palette.hint,
//                       ),
//                     ),
//                     GlobalButton(
//                       onPressed: () {
//                         context.router
//                             .push<bool>(
//                               LoginRoute(
//                                 onLoginSuccess: () {
//                                   context.maybePop(true);
//                                 },
//                               ),
//                             )
//                             .then(
//                               mounted
//                                   ? (bool? value) {
//                                     context.read<ProfileBloc>().add(
//                                       const ProfileEvent.getProfile(),
//                                     );
//                                   }
//                                   : (_) {},
//                             );
//                       },
//                       backgroundColor: Palette.lightSecondary.withValues(alpha: 0.1),
//                       borderColor:  Palette.lightSecondary.withValues(alpha: 0.15),
//                       child: Row(
//                         spacing: 10,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[                          
//                           AssetsManager.svg.login.svg(
//                             colorFilter: const ColorFilter.mode(
//                               Palette.lightSecondary,
//                               BlendMode.srcIn,
//                             ),
//                           ),
//                           Text(
//                             LocaleKeys.login.tr(),
//                             style: context.bodySmall?.copyWith(
//                               fontWeight: FontWeight.bold,
//                               color: Palette.lightSecondary,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//           getProfileSucceed:
//               (UserData? userData) => Container(
//                 decoration: AppDecorations.card,
//                 width: double.infinity,
//                 padding: const EdgeInsets.symmetric(vertical: 30),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     Builder(
//                       builder: (BuildContext context) {
//                         if ((userData?.image?.isNotEmpty ?? false) &&
//                             userData?.image != null) {
//                           return Container(
//                             width: 94,
//                             height: 94,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               border: Border.all(
//                                 width: 10,
//                                 color: Palette.lightSecondary.withValues(
//                                   alpha: 0.1,
//                                 ),
//                               ),
//                             ),
//                             padding: const EdgeInsets.all(2),
//                             child: ClipOval(
//                               clipBehavior: Clip.hardEdge,
//                               child: NetworkImageWidget(
//                                 width: 20,
//                                 height: 20,
//                                 // fit: BoxFit.contain,
//                                 url: userData?.image ?? "",
//                               ),
//                             ),
//                           );
//                         } else {
//                           return Container(
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               border: Border.all(
//                                 width: 10,
//                                 color: Palette.lightSecondary.withValues(
//                                   alpha: 0.1,
//                                 ),
//                               ),
//                             ),
//                             padding: const EdgeInsets.all(2),
//                             child: Icon(
//                               Icons.account_circle_rounded,
//                               color: context.theme.primaryColor,
//                               size: 94,
//                             ),
//                           );
//                         }
//                       },
//                     ),
//                     const SizedBox(height: 16),
//                     Text(
//                       '${userData?.firstName} ${userData?.lastName}',
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style: context.titleSmall?.copyWith(
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     Text(
//                       userData?.email ?? "-",
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style: context.bodySmall?.copyWith(
//                         fontWeight: FontWeight.w300,
//                         color: Palette.hint,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//           orElse: () => const SizedBox.shrink(),
//         );
//       },
//     );
//   }
// }
