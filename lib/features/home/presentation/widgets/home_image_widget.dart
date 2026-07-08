// import 'package:flutter/material.dart';

// import '../../../../core/core.dart';
// import '../../home.dart';
// import 'shimmer_home_widgets.dart';

// class HomeImageWidget extends StatelessWidget with HomeHelper {
//   const HomeImageWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HomeBloc, HomeState>(
//       buildWhen: (HomeState previous, HomeState current) =>
//           current.runtimeType == const HomeState.loadingHomeAd().runtimeType ||
//           current.runtimeType == const HomeState.failureHomeAd().runtimeType ||
//           current.runtimeType == const HomeState.successHomeAd().runtimeType,
//       builder: (BuildContext context, HomeState state) {
//         return state.maybeWhen(
//           loadingHomeAd: () => const HomeImageShimmer(),
//           failureHomeAd: (GeneralException? generalException) {
//             return GlobalErrorWidget(
//               generalException: generalException,
//               onPressed: () {
//                 context.read<HomeBloc>().add(const HomeEvent.getHomeAd());
//               },
//             );
//           },
//           successHomeAd: (ItemResult? result) {
//             if (result == null) {
//               return const SizedBox();
//             }
//             return GestureDetector(
//               onTap: () async {
//                 clickOnAds(
//                   homeBloc: context.read<HomeBloc>(),
//                   context: context,
//                   itemResult: result,
//                 );
//               },
//               child: NetworkImageWidget(
//                 url: result.image ?? "",
//                 width: double.infinity,
//                 height: 179,
//                 radius: 32,
//                 fit: BoxFit.cover,
//               ),
//             );
//           },
//           orElse: () => const SizedBox.shrink(),
//         );
//       },
//     );
//   }
// }
