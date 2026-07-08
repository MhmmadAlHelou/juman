// import 'package:flutter/material.dart';
// import 'package:ewan/core/core.dart';
// import '../../home.dart';

// @RoutePage()
// class ServicesScreen extends StatelessWidget {
//   const ServicesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<HomeBloc>(
//       create: (BuildContext context) => getIt<HomeBloc>(),
//       child: const ServicesScreenView(),
//     );
//   }
// }

// class ServicesScreenView extends StatefulWidget {
//   const ServicesScreenView({super.key});

//   @override
//   State<ServicesScreenView> createState() => _ServicesScreenViewState();
// }

// class _ServicesScreenViewState extends State<ServicesScreenView> {
//   late HomeBloc _homeBloc;

//   @override
//   void initState() {
//     _homeBloc = context.read<HomeBloc>();
//     _homeBloc.add(const HomeEvent.filterServices(hasActiveOrderOnly: true));

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: GlobalAppBar(
//         title: (LocaleKeys.allServices).tr(),
//         backButton: true,
//       ),
//       body: RefreshIndicator(
//         onRefresh: () async {
//           _homeBloc.add(
//             const HomeEvent.filterServices(hasActiveOrderOnly: true),
//           );
//         },
//         child: BlocBuilder<HomeBloc, HomeState>(
//           buildWhen: (HomeState previous, HomeState current) =>
//               current.runtimeType ==
//                   const HomeState.failureFilteringServices().runtimeType ||
//               current.runtimeType ==
//                   const HomeState.loadingFilteringServices().runtimeType ||
//               current.runtimeType ==
//                   const HomeState.successFilteringServices().runtimeType,
//           builder: (BuildContext context, HomeState state) {
//             return state.maybeWhen(
//               failureFilteringServices: (GeneralException? generalException) =>
//                   GlobalErrorWidget(
//                     generalException: generalException,
//                     onPressed: () {
//                       context.read<HomeBloc>().add(
//                         const HomeEvent.filterServices(
//                           hasActiveOrderOnly: true,
//                         ),
//                       );
//                     },
//                   ),
//               loadingFilteringServices: () => const GridListShimmer(),
//               successFilteringServices:
//                   (List<ServiceResult> results, bool hasNext, int page) =>
//                       GridServicesWidget(servicesList: results),

//               orElse: () => const SizedBox.shrink(),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
