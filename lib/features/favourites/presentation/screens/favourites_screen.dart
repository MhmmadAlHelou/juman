//   import 'package:flutter/material.dart';
// import 'package:tallebplus_app/features/Favourites/data/models/Favourites_model.dart';
// import 'package:tallebplus_app/features/favourites/bloc/favourites_bloc.dart';
// import 'package:tallebplus_app/features/home/presentation/widgets/order_item_widget.dart';
// import 'package:tallebplus_app/features/home/presentation/widgets/shimmer_home_widgets.dart';
// import 'package:tallebplus_app/features/orders/data/models/orders_model.dart';
// import '../../../../core/common/widget/guest_widget.dart';
// import '../../../../core/core.dart';

// @RoutePage()
// class FavouritesScreen extends StatelessWidget {
//   const FavouritesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<FavouritesBloc>(
//       create:
//           (BuildContext context) =>
//               getIt<FavouritesBloc>()
//                 ..add(const FavouritesEvent.getAllFavourites(page: 1)),
//       child: const FavouritesScreenView(),
//     );
//   }
// }

// class FavouritesScreenView extends StatefulWidget {
//   const FavouritesScreenView({super.key});

//   @override
//   State<FavouritesScreenView> createState() => _FavouritesScreenViewState();
// }

// class _FavouritesScreenViewState extends State<FavouritesScreenView> {
//   late final FavouritesBloc _favouritesBloc;
//   // late final ScrollController _scrollController;

//   void callFavouritesApi() {
//     _favouritesBloc.isSigned = PrefData.isSignedIn;
//     _favouritesBloc.add(const FavouritesEvent.getAllFavourites(page: 1));
//   }

//   @override
//   void initState() {
//     super.initState();
//     _favouritesBloc = context.read<FavouritesBloc>();
//     // _scrollController = ScrollController();
//     GlobalNotifiers.profileNotifier.addListener(callFavouritesApi);
//     GlobalNotifiers.favouriteNotifier.addListener(callFavouritesApi);
//   }

//   @override
//   void dispose() {
//     GlobalNotifiers.profileNotifier.removeListener(callFavouritesApi);
//     GlobalNotifiers.favouriteNotifier.removeListener(callFavouritesApi);
//     // _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: GlobalAppBar(
//         title: (LocaleKeys.savedItems.tr()),
//         backButton: true,
//       ),
//       body: BlocBuilder<FavouritesBloc, FavouritesState>(
//         builder: (BuildContext context, FavouritesState state) {
//           return state.maybeWhen(
//             guest: () {
//               return GuestWidget(
//                 onPressed: () {
//                   context.router
//                       .push<bool>(
//                         LoginRoute(
//                           onLoginSuccess: () {
//                             context.maybePop(true);
//                           },
//                         ),
//                       )
//                       .then((bool? value) {
//                         _favouritesBloc.isSigned = PrefData.isSignedIn;
//                         _favouritesBloc.add(
//                           const FavouritesEvent.getAllFavourites(page: 1),
//                         );
//                       });
//                 },
//               );
//             },
//             loadingAllFavourites:
//                 () => const RecentProjectsShimmer(itemCount: 4),
//             successAllFavourites: (
//               List<FavouriteResult> favourites,
//               bool hasNext,
//               int page,
//             ) {
//               if (favourites.isEmpty) {
//                 return const GlobalEmptyList();
//               }
//               return RefreshIndicator(
//                 onRefresh: () async {
//                   _favouritesBloc.add(
//                     const FavouritesEvent.getAllFavourites(page: 1),
//                   );
//                 },
//                 child: InfiniteListView.separated(
//                   // controller: _scrollController,
//                   // physics: const AlwaysScrollableScrollPhysics(),
//                   hasNext: hasNext,
//                   shrinkWrap: true,
//                   padding: const EdgeInsetsDirectional.symmetric(
//                     horizontal: 24,
//                   ),
//                   itemBuilder: (BuildContext context, int index) {
//                     OrderResult? favouriteResult = favourites[index].order;
//                     return OrderItemWidget(orderResult: favouriteResult!);
//                   },
//                   itemCount: favourites.length,
//                   nextData: () {
//                     _favouritesBloc.add(
//                       FavouritesEvent.getAllFavourites(page: page + 1),
//                     );
//                   },
//                   separatorBuilder: (BuildContext p0, int p1) {
//                     return const SizedBox(height: 15);
//                   },
//                 ),
//               );
//             },
//             orElse: () => const Center(child: SizedBox.shrink()),
//           );
//         },
//       ),
//     );
//   }
// }
