// import 'package:addstream_flutter/addstream_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:ewan/core/core.dart';
// import 'package:ewan/features/orders/bloc/orders_bloc.dart';

// import '../../home.dart';

// @RoutePage()
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider<HomeBloc>(
//           create: (BuildContext context) => getIt<HomeBloc>(),
//         ),
//         BlocProvider<OrdersBloc>(
//           create: (BuildContext context) => getIt<OrdersBloc>(),
//         ),
//       ],
//       child: const HomeView(),
//     );
//   }
// }

// class HomeView extends StatefulWidget {
//   const HomeView({super.key});

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> with HomeHelper {
//   late HomeBloc _homeBloc;

//   @override
//   void initState() {
//     _homeBloc = context.read<HomeBloc>();
//     _homeBloc.add(const HomeEvent.getAds());
//     _homeBloc.add(const HomeEvent.getHomeAd());
//     _homeBloc.add(const HomeEvent.filterServices(hasActiveOrderOnly: true));
//     context.read<OrdersBloc>().add(
//       const OrdersEvent.getAllOrder(page: 1, serviceId: null),
//     );

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.sizeOf(context).height,
//       margin: EdgeInsets.fromLTRB(
//         0,
//         (MediaQuery.of(context).padding).top,
//         0,
//         (MediaQuery.of(context).padding).bottom,
//       ),
//       child: RefreshIndicator(
//         onRefresh: () async {
//           _homeBloc.add(const HomeEvent.getAds());
//           _homeBloc.add(const HomeEvent.getHomeAd());
//           _homeBloc.add(
//             const HomeEvent.filterServices(hasActiveOrderOnly: true),
//           );
//           context.read<OrdersBloc>().add(
//             const OrdersEvent.getAllOrder(page: 1, serviceId: null),
//           );
//           await Future<void>.delayed(const Duration(milliseconds: 300));
//         },
//         child: SingleChildScrollView(
//           physics: const AlwaysScrollableScrollPhysics(),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               const HomeHeaderWidget(),
//               const SizedBox(height: 16),
//               AddStreamWidget(
//                 zoneId: '137',
//                 height: 200,
//                 margin: const EdgeInsets.symmetric(horizontal: 10),
//                 onAdLoaded: () => debugPrint('Ad loaded'),
//                 onAdFailed: (Object error) => debugPrint('Ad failed: $error'),
//                 errorWidget: const AdsWidget(),
//               ),
//               const SizedBox(height: 32),
//               Padding(
//                 padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     GestureDetector(
//                       onTap: () {
//                         context.pushRoute(const ServicesRoute());
//                       },
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Text(
//                             (LocaleKeys.quickExplorer).tr(),
//                             style: context.bodyMedium?.copyWith(
//                               fontFamily: FontFamily.fredokaOne,
//                             ),
//                           ),
//                           Text(
//                             (LocaleKeys.seeAll).tr(),
//                             style: context.labelLarge?.copyWith(
//                               color: Palette.secondary,
//                               fontFamily: FontFamily.fredokaOne,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     const CategoriesWidget(),
//                     const SizedBox(height: 32),
//                     AddStreamWidget(
//                       zoneId: '136',
//                       height: 100,
//                       onAdLoaded: () => debugPrint('Ad loaded'),
//                       onAdFailed: (Object error) =>
//                           debugPrint('Ad failed: $error'),
//                       errorWidget: const HomeImageWidget(),
//                     ),
//                     const SizedBox(height: 32),
//                     Text(
//                       (LocaleKeys.recentProject).tr(),
//                       style: context.bodyMedium?.copyWith(
//                         fontFamily: FontFamily.fredokaOne,
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     const RecentProjectsWidget(),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
