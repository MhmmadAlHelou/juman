import 'package:ewan/features/home/bloc/property/property_cubit.dart';
import 'package:ewan/features/home/presentation/helper/map_sheet_controller.dart';
import 'package:ewan/features/home/presentation/widgets/card_item.dart';
import 'package:ewan/features/home/presentation/widgets/map.dart';
import 'package:ewan/features/home/presentation/widgets/property_detail.dart';
import 'package:flutter/material.dart';
import 'package:ewan/core/core.dart';

import '../../home.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider<HomeBloc>(
        //   create: (BuildContext context) => getIt<HomeBloc>(),
        // ),
        BlocProvider<PropertyCubit>(
          create: (BuildContext context) => getIt<PropertyCubit>(),
        ),
      ],
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

// class _HomeViewState extends State<HomeView> with HomeHelper {
class _HomeViewState extends State<HomeView> with MapSheetController<HomeView> {
  // with MapSheetController<HomeView>, HomeHelper {
  // late HomeBloc _homeBloc;
  late PropertyCubit propertyCubit;

  @override
  void initState() {
    // _homeBloc = context.read<HomeBloc>();
    // _homeBloc.add(const HomeEvent.getAds());
    // _homeBloc.add(const HomeEvent.getHomeAd());
    // _homeBloc.add(const HomeEvent.filterServices(hasActiveOrderOnly: true));
    // context.read<OrdersBloc>().add(
    //   const OrdersEvent.getAllOrder(page: 1, serviceId: null),
    // );

    propertyCubit = context.read<PropertyCubit>();
    getIt<PropertyCubit>().loadProperties();

    sheetController.addListener(onSheetChanged);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      margin: EdgeInsets.fromLTRB(
        0,
        (MediaQuery.of(context).padding).top,
        0,
        (MediaQuery.of(context).padding).bottom,
      ),
      child: BlocBuilder<PropertyCubit, PropertyState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              // _homeBloc.add(
              //   const HomeEvent.filterServices(hasActiveOrderOnly: true),
              // );
              // context.read<OrdersBloc>().add(
              //   const OrdersEvent.getAllOrder(page: 1, serviceId: null),
              // );
              getIt<PropertyCubit>().loadProperties();

              await Future<void>.delayed(const Duration(milliseconds: 300));
            },
            child: Stack(
              children: <Widget>[
                // const HomeHeaderWidget(),
                // const SizedBox(height: 16),
                Positioned.fill(child: const MyMap()),

                if (state.selectedpropertyId == null)
                  DraggableScrollableSheet(
                    controller: sheetController,
                    initialChildSize: 0.5,
                    minChildSize: 0.09,
                    maxChildSize: 1.0,
                    snap: true,
                    snapSizes: const [0.09, 0.5, 1.0],
                    builder: (context, scrollController) {
                      innerScrollController = scrollController;
                      innerScrollController!.addListener(() {
                        if (innerScrollController!.position.pixels >=
                            innerScrollController!.position.maxScrollExtent -
                                200) {
                          context.read<PropertyCubit>().loadMoreSheetItems();
                        }
                      });
                      return Container(
                        decoration: BoxDecoration(
                          color: Palette.backgroundColor,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                width: 40,
                                height: 5,
                                decoration: BoxDecoration(
                                  color: Palette.semiGray,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                controller: innerScrollController!,
                                itemCount:
                                    state.sheetProperties.length +
                                    (state.hasMoreSheetItems ? 1 : 0),
                                itemBuilder: (context, index) {
                                  if (index >= state.sheetProperties.length) {
                                    return const Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(16),
                                        child: CircularProgressIndicator(),
                                      ),
                                    );
                                  }
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 24,
                                      horizontal: 16,
                                    ),
                                    child: PropertyCard(
                                      property: state.sheetProperties[index],
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => PropertyDetailPage(
                                              property:
                                                  state.sheetProperties[index],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                if (showMapButton)
                  Positioned(
                    bottom: 24,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: FloatingActionButton.extended(
                        onPressed: () => collapseSheetToMap(),
                        icon: const Icon(Icons.map),
                        label: Text(LocaleKeys.map.tr()),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
