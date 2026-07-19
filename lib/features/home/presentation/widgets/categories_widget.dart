// import 'package:flutter/material.dart';

// import '../../../../core/core.dart';
// import '../../home.dart';

// class CategoriesWidget extends StatelessWidget {
//   const CategoriesWidget({super.key, this.isView = true});

//   final bool isView;

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HomeBloc, HomeState>(
//       buildWhen: (HomeState previous, HomeState current) =>
//           current.runtimeType ==
//               const HomeState.failureFilteringServices().runtimeType ||
//           current.runtimeType ==
//               const HomeState.loadingFilteringServices().runtimeType ||
//           current.runtimeType ==
//               const HomeState.successFilteringServices().runtimeType,
//       builder: (BuildContext context, HomeState state) {
//         return state.maybeWhen(
//           failureFilteringServices: (GeneralException? generalException) =>
//               GlobalErrorWidget(
//                 generalException: generalException,
//                 onPressed: () {
//                   if (isView) {
//                     context.read<HomeBloc>().add(
//                       HomeEvent.filterServices(hasActiveOrderOnly: isView),
//                     );
//                   } else {
//                     context.read<HomeBloc>().add(
//                       const HomeEvent.filterServices(),
//                     );
//                   }
//                 },
//               ),
//           loadingFilteringServices: () => const CategoriesShimmer(),
//           successFilteringServices:
//               (List<ServiceResult> results, bool hasNext, int page) => SizedBox(
//                 height: 140,
//                 child: ListView.separated(
//                   padding: EdgeInsets.zero,
//                   shrinkWrap: true,
//                   scrollDirection: Axis.horizontal,
//                   itemCount: results.length,
//                   separatorBuilder: (_, __) {
//                     return const SizedBox(width: 16);
//                   },
//                   itemBuilder: (BuildContext context, int index) {
//                     final ServiceResult result = results[index];
//                     return GestureDetector(
//                       behavior: HitTestBehavior.opaque,
//                       onTap: () {
//                         context.pushRoute(
//                           ServiceRoute(serviceData: result, isView: isView),
//                         );
//                       },
//                       child: SizedBox(
//                         width: 140,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(24),
//                             border: Border.all(
//                               color: Palette.gray.withValues(alpha: 0.1),
//                               width: 1,
//                             ),
//                             boxShadow: <BoxShadow>[
//                               BoxShadow(
//                                 color: Palette.black.withValues(alpha: 0.1),
//                                 blurRadius: 4,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(24),
//                             child: Stack(
//                               children: [
//                                 Positioned.fill(
//                                   child: NetworkImageWidget(
//                                     url: result.image ?? "",
//                                     fit: BoxFit.contain,
//                                     radius: 24,
//                                   ),
//                                 ),
//                                 // Positioned.fill(
//                                 //   child: Container(
//                                 //     decoration: BoxDecoration(
//                                 //       gradient: LinearGradient(
//                                 //         begin: Alignment.bottomCenter,
//                                 //         end: Alignment.topCenter,
//                                 //         colors: <Color>[
//                                 //           context.colorScheme.secondary
//                                 //               .withValues(alpha: 0.9),
//                                 //           context.colorScheme.secondary
//                                 //               .withValues(alpha: 0.2),
//                                 //           Colors.transparent,
//                                 //         ],
//                                 //         stops: const <double>[0.0, 0.5, 1.0],
//                                 //       ),
//                                 //     ),
//                                 //   ),
//                                 // ),
//                                 // Positioned(
//                                 //   bottom: 12,
//                                 //   left: 12,
//                                 //   right: 12,
//                                 //   child: Column(
//                                 //     crossAxisAlignment:
//                                 //         CrossAxisAlignment.start,
//                                 //     children: <Widget>[
//                                 //       Text(
//                                 //         result.name,
//                                 //         maxLines: 1,
//                                 //         overflow: TextOverflow.visible,
//                                 //         style: context.bodySmall?.copyWith(
//                                 //           color: Palette.white,
//                                 //           fontFamily: FontFamily.fredokaOne,
//                                 //         ),
//                                 //       ),
//                                 //       Text(
//                                 //         result.numberOfOrders == null
//                                 //             ? '${result.numberOfOrders ?? ""} ${result.name}'
//                                 //             : result.descriptionToView,
//                                 //         maxLines: 1,
//                                 //         overflow: TextOverflow.ellipsis,
//                                 //         style: context.labelSmall?.copyWith(
//                                 //           fontFamily: FontFamily.fredokaOne,
//                                 //           color: Palette.white.withValues(
//                                 //             alpha: 0.5,
//                                 //           ),
//                                 //         ),
//                                 //       ),
//                                 //     ],
//                                 //   ),
//                                 // ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),

//           orElse: () => const SizedBox.shrink(),
//         );
//       },
//     );
//   }
// }
