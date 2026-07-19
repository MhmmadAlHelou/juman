// import 'package:flutter/material.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

// import '../../../../core/core.dart';
// import '../../profile.dart';

// @RoutePage()
// class StaticScreen extends StatelessWidget {
//   const StaticScreen({super.key, required this.systemInfo});

//   final SystemInfo systemInfo;

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<ProfileBloc>(
//       create:
//           (BuildContext context) =>
//               getIt<ProfileBloc>()..add(const ProfileEvent.getSystemInfo()),
//       child: StaticView(systemInfo: systemInfo),
//     );
//   }
// }

// class StaticView extends StatelessWidget {
//   const StaticView({super.key, required this.systemInfo});

//   final SystemInfo systemInfo;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       appBar: GlobalAppBar(backButton: true, title: systemInfo.name.tr()),
//       body: BlocBuilder<ProfileBloc, ProfileState>(
//         builder: (BuildContext context, ProfileState state) {
//           return state.maybeWhen(
//             loadingSystemInfo: () => const GlobalLoading(),
//             failedSystemInfo:
//                 (GeneralException? generalException) => GlobalErrorWidget(
//                   generalException: generalException,
//                   onPressed: () {
//                     context.read<ProfileBloc>().add(
//                       const ProfileEvent.getSystemInfo(),
//                     );
//                   },
//                 ),
//             succeedSystemInfo:
//                 (SystemInfoModel? data) => Center(
//                   child: SingleChildScrollView(
//                     padding: const EdgeInsets.all(8),
//                     child: HtmlWidget(getEndPointOfSystemInfo(data!)),
//                   ),
//                 ),
//             orElse: () => const SizedBox.shrink(),
//           );
//         },
//       ),
//     );
//   }

//   String getEndPointOfSystemInfo(SystemInfoModel systemInfoData) {
//     switch (systemInfo) {
//       case SystemInfo.cancellationPolicy:
//       case SystemInfo.reviewPolicy:
//       case SystemInfo.privacyPolicy:
//       case SystemInfo.aboutUs:
//         return systemInfoData.data.privacyPolicy;
//       //   return systemInfoData.data.aboutUs;
//       case SystemInfo.termsOfUse:
//         return systemInfoData.data.termOfUs;
//     }
//   }
// }
