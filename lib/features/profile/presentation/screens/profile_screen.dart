// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import '../../../../core/core.dart';
// import '../../profile.dart';

// @RoutePage()
// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<ProfileBloc>(
//       create:
//           (BuildContext context) =>
//               getIt<ProfileBloc>()..add(const ProfileEvent.getProfile()),
//       child: const ProfileView(),
//     );
//   }
// }

// class ProfileView extends StatefulWidget {
//   const ProfileView({super.key});

//   @override
//   State<ProfileView> createState() => _ProfileViewState();
// }

// class _ProfileViewState extends State<ProfileView> {
//   void callProfileApi() {
//     context.read<ProfileBloc>().isSigned = PrefData.isSignedIn;

//     context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
//   }

//   @override
//   void initState() {
//     // Add a listener to refresh the profile API when profileNotifier changes
//     GlobalNotifiers.profileNotifier.addListener(callProfileApi);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: GlobalAppBar(title: LocaleKeys.profile.tr(), backButton: true),
//       body: SingleChildScrollView(
//         padding: const EdgeInsetsDirectional.symmetric(
//           vertical: 24,
//           horizontal: 16,
//         ),
//         child: Column(
//           spacing: 24,
//           children: <Widget>[
//             const SectionUserInfo(),
//             const Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               mainAxisSize: MainAxisSize.max,
//               spacing: 16,
//               children: <Widget>[
//                 SectionCardWidget(isSavedItems: false),
//                 SectionCardWidget(isSavedItems: true),
//               ],
//             ),
//             const SectionSettings(),
//             const SectionHelpCenter(),
//             if (context.watch<ProfileBloc>().isSigned) const SectionAccount(),
//             if (context.watch<ProfileBloc>().isSigned)
//               GlobalButton(
//                 onPressed: () {
//                   showDialog(
//                     context: context,
//                     builder:
//                         (BuildContext ctx) => GlobalDialog(
//                           title: LocaleKeys.logoutMessage,
//                           primaryButtonTitle: LocaleKeys.cancel,
//                           onPressedPrimaryButton: context.maybePop,
//                           secondaryButtonTitle: LocaleKeys.logout,
//                           secondaryBorderColor: context.colorScheme.secondary,
//                           onSecondaryPrimaryButton: () {
//                             context.maybePop(true);
//                             getIt<AppManagerCubit>().logOut();
//                             GlobalNotifiers.profileNotifier.value =
//                                 !GlobalNotifiers.profileNotifier.value;
//                           },
//                         ),
//                   );
//                 },
//                 backgroundColor: const Color.fromRGBO(255, 144, 145, 0.1),
//                 borderColor: Palette.error.withValues(alpha: 0.1),
//                 child: Row(
//                   spacing: 10,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     AssetsManager.svg.logout.svg(
//                       colorFilter: const ColorFilter.mode(
//                         Palette.error,
//                         BlendMode.srcIn,
//                       ),
//                     ),
//                     Text(
//                       LocaleKeys.logout.tr(),
//                       style: context.bodySmall?.copyWith(
//                         fontWeight: FontWeight.w600,
//                         color: Palette.error,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             Text(
//               "Version ${context.watch<ProfileBloc>().versionNumber}"
//                   .toUpperCase(),
//               style: context.labelMedium?.copyWith(
//                 fontWeight: FontWeight.normal,
//                 color: Palette.hint,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     GlobalNotifiers.profileNotifier.removeListener(callProfileApi);

//     super.dispose();
//   }
// }
