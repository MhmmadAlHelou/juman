// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:dots_indicator/dots_indicator.dart';
// import 'package:flutter/material.dart';
// import '../../../../core/core.dart';
// import '../../home.dart';

// class AdsWidget extends StatefulWidget {
//   const AdsWidget({super.key});

//   @override
//   State<AdsWidget> createState() => _AdsWidgetState();
// }

// class _AdsWidgetState extends State<AdsWidget> with HomeHelper {
//   late HomeBloc _homeBloc;
//   double _currentIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     _homeBloc = context.read<HomeBloc>();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HomeBloc, HomeState>(
//       buildWhen: (HomeState previous, HomeState current) =>
//           current.runtimeType == const HomeState.loadingAds().runtimeType ||
//           current.runtimeType == const HomeState.failureAds().runtimeType ||
//           current.runtimeType == const HomeState.successAds().runtimeType,
//       builder: (BuildContext context, HomeState state) {
//         return state.maybeWhen(
//           orElse: () => const SizedBox.shrink(),
//           loadingAds: () => const AdsShimmer(),
//           failureAds: (GeneralException? generalException) => GlobalErrorWidget(
//             generalException: generalException,
//             onPressed: () {
//               _homeBloc.add(const HomeEvent.getAds());
//             },
//           ),
//           successAds: (List<ItemResult> results) => Builder(
//             builder: (BuildContext context) {
//               if (results.isEmpty) {
//                 return const SizedBox.shrink();
//               }
//               return SizedBox(
//                 height: 256,
//                 child: Stack(
//                   children: <Widget>[
//                     CarouselSlider(
//                       items: results.map((ItemResult e) {
//                         return GestureDetector(
//                           onTap: () async {
//                             clickOnAds(
//                               homeBloc: _homeBloc,
//                               context: context,
//                               itemResult: e,
//                             );
//                           },
//                           child: NetworkImageWidget(
//                             url: e.image!,
//                             height: 256,
//                             width: double.infinity,
//                             fit: BoxFit.cover,
//                           ),
//                         );
//                       }).toList(),
//                       options: CarouselOptions(
//                         //aspectRatio: 16 / 9,
//                         viewportFraction: 1,
//                         initialPage: 0,
//                         height: 256,
//                         enableInfiniteScroll: true,
//                         reverse: false,
//                         autoPlay: true,
//                         autoPlayInterval: const Duration(seconds: 3),
//                         autoPlayAnimationDuration: const Duration(
//                           milliseconds: 800,
//                         ),
//                         autoPlayCurve: Curves.fastOutSlowIn,
//                         enlargeCenterPage: true,
//                         scrollDirection: Axis.horizontal,
//                         onPageChanged:
//                             (int index, CarouselPageChangedReason reason) {
//                               setState(() {
//                                 _currentIndex = index.toDouble();
//                               });
//                             },
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 16,
//                       left: 0,
//                       right: 0,
//                       child: DotsIndicator(
//                         dotsCount: results.length,
//                         position: _currentIndex,
//                         decorator: DotsDecorator(
//                           activeColor: Palette.white,
//                           activeShape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           activeSize: const Size(24, 6),
//                           size: const Size(6, 6),
//                           color: Palette.white.withValues(alpha: 0.3),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         );
//       },
//     );
//   }
// }
