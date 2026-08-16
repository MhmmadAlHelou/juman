// import 'package:addstream_flutter/addstream_flutter.dart';
import 'package:ewan/features/add_property/bloc/add_property_cubit.dart';
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
        BlocProvider<HomeBloc>(
          create: (BuildContext context) => getIt<HomeBloc>(),
        ),
        BlocProvider<PropertyCubit>(
          create: (BuildContext context) => getIt<PropertyCubit>(),
        ),
        BlocProvider<AddPropertyCubit>(
          create: (BuildContext context) => getIt<AddPropertyCubit>(),
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
class _HomeViewState extends State<HomeView>
    with MapSheetController<HomeView>, HomeHelper {
  late HomeBloc _homeBloc;
  late PropertyCubit propertyCubit;
  late AddPropertyCubit addPropertyCubit;
  // late PropertiesRepository repository;
  // late List<PropertiesModel> repoModel;

  final PropertiesModel dummyProperty = PropertiesModel(
    id: 'dummy_001',
    propertyCategory: PropertyCategory.furnishedApartments,
    placeType: PlaceType.entirePlace,
    title: "Casanova Elegance, with balcony and 4 bedrooms",
    description:
        "A spacious and bright apartment located in the heart of Barcelona, ​​with space for up to 9 people. "
        "It contains 4 fully equipped bedrooms, a spacious living room, and a modern kitchen. "
        "Close to transportation, restaurants and major tourist attractions.",
    city: City.ruralDamascus,
    area: 'Barcelona, ​​Spain',
    streetAddress: 'Carrer de Casanova, 12',
    mapLocation: const {'lat': 41.3874, 'lng': 2.1686},
    propertySize: 120,
    maximumGuests: 9,
    bedrooms: 4,
    bathrooms: 2,
    amenities: const [
      Amenity.wifi,
      Amenity.kitchen,
      Amenity.tv,
      Amenity.elevator,
      Amenity.washingMachine,
      Amenity.airConditioning,
      Amenity.freeParking,
    ],
    images: const [
      'https://images.unsplash.com/photo-1631049307264-da0ec9d70304?w=800&q=80',
      'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?w=800&q=80',
      'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?w=800&q=80',
      'https://images.unsplash.com/photo-1595576508898-0ad5c879a061?w=800&q=80',
      'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?w=800&q=80',
    ],
    minimumStay: 2,
    maximumStay: 30,
    price: 251,
    document: const [],
  );

  @override
  void initState() {
    _homeBloc = context.read<HomeBloc>();
    // _homeBloc.add(const HomeEvent.getAds());
    // _homeBloc.add(const HomeEvent.getHomeAd());
    _homeBloc.add(const HomeEvent.filterServices(hasActiveOrderOnly: true));
    // context.read<OrdersBloc>().add(
    //   const OrdersEvent.getAllOrder(page: 1, serviceId: null),
    // );

    addPropertyCubit = context.read<AddPropertyCubit>();

    propertyCubit = context.read<PropertyCubit>();
    getIt<PropertyCubit>().loadProperties();

    // repoModel = await repository.getListings();

    // _sheetController.addListener(_onSheetChanged);
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
              _homeBloc.add(
                const HomeEvent.filterServices(hasActiveOrderOnly: true),
              );
              // context.read<OrdersBloc>().add(
              //   const OrdersEvent.getAllOrder(page: 1, serviceId: null),
              // );
              getIt<PropertyCubit>().loadProperties();

              // repoModel = await repository.getListings();

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
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
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
                                controller: scrollController,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      children: [
                                        PropertyCard(
                                          property: dummyProperty,
                                          // property: repoModel[index],
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) =>
                                                    PropertyDetailPage(
                                                      property: dummyProperty,
                                                    ),
                                              ),
                                            );
                                          },
                                        ),
                                        const SizedBox(height: 16),
                                        PropertyCard(
                                          property: dummyProperty,
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) =>
                                                    PropertyDetailPage(
                                                      property: dummyProperty,
                                                    ),
                                              ),
                                            );
                                          },
                                        ),
                                      ],
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
                        label: const Text(LocaleKeys.map).tr(),
                        // label: const Text('map').tr(),
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
