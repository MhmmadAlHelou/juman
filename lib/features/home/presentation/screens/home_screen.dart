// import 'package:addstream_flutter/addstream_flutter.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:ewan/features/home/presentation/widgets/card_item.dart';
import 'package:ewan/features/home/presentation/widgets/map.dart';
import 'package:ewan/features/home/presentation/widgets/property_detail.dart';
import 'package:flutter/material.dart';
import 'package:ewan/core/core.dart';
// import 'package:ewan/features/orders/bloc/orders_bloc.dart';

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
        // BlocProvider<OrdersBloc>(
        //   create: (BuildContext context) => getIt<OrdersBloc>(),
        // ),
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

class _HomeViewState extends State<HomeView> with HomeHelper {
  late HomeBloc _homeBloc;

  final Properties dummyProperty = Properties(
    id: 'dummy_001',
    propertyCategory: PropertyCategory.apartments,
    placeType: PlaceType.entirePlace,
    title: "Casanova Elegance, with balcony and 4 bedrooms",
    description:
        "A spacious and bright apartment located in the heart of Barcelona, ​​with space for up to 9 people. "
        "It contains 4 fully equipped bedrooms, a spacious living room, and a modern kitchen. "
        "Close to transportation, restaurants and major tourist attractions.",
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
      child: RefreshIndicator(
        onRefresh: () async {
          // _homeBloc.add(const HomeEvent.getAds());
          // _homeBloc.add(const HomeEvent.getHomeAd());
          _homeBloc.add(
            const HomeEvent.filterServices(hasActiveOrderOnly: true),
          );
          // context.read<OrdersBloc>().add(
          //   const OrdersEvent.getAllOrder(page: 1, serviceId: null),
          // );
          await Future<void>.delayed(const Duration(milliseconds: 300));
        },
        // child: SingleChildScrollView(
        //   physics: const AlwaysScrollableScrollPhysics(),
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // const HomeHeaderWidget(),
            // const SizedBox(height: 16),
            Positioned.fill(child: const MyMap()),
            DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.09,
              maxChildSize: 1.0,
              snap: true,
              snapSizes: const [0.09, 0.5, 1.0],
              builder: (context, scrollController) {
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
                            color: Colors.grey[300],
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
                              child: ListingCard(
                                property: dummyProperty,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => PropertyDetailPage(
                                        property: dummyProperty,
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
          ],
        ),
        // ),
      ),
    );
  }
}
