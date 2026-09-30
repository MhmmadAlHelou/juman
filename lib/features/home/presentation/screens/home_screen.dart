import 'package:ewan/features/home/bloc/locations_cubit.dart';
import 'package:ewan/features/home/bloc/property_cubit.dart';
import 'package:ewan/features/home/presentation/helper/map_sheet_controller.dart';
import 'package:ewan/features/home/presentation/widgets/card_item.dart';
import 'package:ewan/features/home/presentation/widgets/map.dart';
import 'package:ewan/features/home/presentation/widgets/no_properties_found.dart';
import 'package:ewan/features/home/presentation/screens/property_detail.dart';
import 'package:ewan/features/home/presentation/widgets/property_filter_bottom_sheet.dart';
import 'package:ewan/features/home/presentation/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:ewan/core/core.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PropertyCubit>(
          create: (BuildContext context) => getIt<PropertyCubit>(),
        ),
        BlocProvider<LocationsCubit>(
          create: (BuildContext context) =>
              getIt<LocationsCubit>()..loadReferenceData(),
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

class _HomeViewState extends State<HomeView> with MapSheetController<HomeView> {
  late PropertyCubit propertyCubit;

  void _onSearchTextChanged(String value) {
    final filters = propertyCubit.state.activeFilters.copyWith(
      search: () => value.isEmpty ? null : value,
    );
    filters.isEmpty
        ? propertyCubit.resetSearch()
        : propertyCubit.searchProperties(filters);
    _expandSheet();
  }

  void _onCategoryQuickSelect(String? categoryId) {
    final filters = propertyCubit.state.activeFilters.copyWith(
      category: () => categoryId,
    );
    filters.isEmpty
        ? propertyCubit.resetSearch()
        : propertyCubit.searchProperties(filters);
    _expandSheet();
  }

  void _openFilterSheet() {
    PropertyFilterBottomSheet.show(
      context,
      initialFilters: propertyCubit.state.activeFilters,
      onApply: (filters) {
        filters.isEmpty
            ? propertyCubit.resetSearch()
            : propertyCubit.searchProperties(filters);
        _expandSheet();
      },
      onReset: () => propertyCubit.resetSearch(),
    );
  }

  void _expandSheet() {
    if (!sheetController.isAttached) return;
    sheetController.animateTo(
      1.0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    propertyCubit = context.read<PropertyCubit>();
    propertyCubit.loadProperties();

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
              propertyCubit.loadProperties();
              await Future<void>.delayed(const Duration(milliseconds: 300));
            },
            child: Stack(
              children: <Widget>[
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
                              child: state.noResultsFound
                                  ? const NoPropertiesFound()
                                  : ListView.builder(
                                      controller: innerScrollController!,
                                      itemCount:
                                          state.sheetProperties.length +
                                          (state.hasMoreSheetItems ? 1 : 0),
                                      itemBuilder: (context, index) {
                                        if (index >=
                                            state.sheetProperties.length) {
                                          return const Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(16),
                                              child:
                                                  CircularProgressIndicator(),
                                            ),
                                          );
                                        }
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 24,
                                            horizontal: 16,
                                          ),
                                          child: PropertyCard(
                                            property:
                                                state.sheetProperties[index],
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (_) =>
                                                      PropertyDetailPage(
                                                        property: state
                                                            .sheetProperties[index],
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

                Positioned(
                  top: 6,
                  left: 16,
                  right: 16,
                  child: HomePropertySearchBar(
                    onSearchChanged: _onSearchTextChanged,
                    onFilterTap: _openFilterSheet,
                    onCategorySelected: _onCategoryQuickSelect,
                    selectedCategoryId: state.activeFilters.category,
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
