import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/bloc/locations_cubit.dart';
import 'package:ewan/features/home/data/models/property_search_filter_model.dart';
import 'package:flutter/material.dart';

class PropertyFilterBottomSheet extends StatefulWidget {
  const PropertyFilterBottomSheet({
    super.key,
    required this.initialFilters,
    required this.onApply,
    required this.onReset,
  });

  final PropertySearchFilterModel initialFilters;
  final ValueChanged<PropertySearchFilterModel> onApply;
  final VoidCallback onReset;

  static Future<void> show(
    BuildContext context, {
    required PropertySearchFilterModel initialFilters,
    required ValueChanged<PropertySearchFilterModel> onApply,
    required VoidCallback onReset,
  }) {
    final LocationsCubit locationsCubit = context.read<LocationsCubit>();

    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Palette.backgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => BlocProvider<LocationsCubit>.value(
        value: locationsCubit,
        child: PropertyFilterBottomSheet(
          initialFilters: initialFilters,
          onApply: onApply,
          onReset: onReset,
        ),
      ),
    );
  }

  @override
  State<PropertyFilterBottomSheet> createState() =>
      _PropertyFilterBottomSheetState();
}

class _PropertyFilterBottomSheetState extends State<PropertyFilterBottomSheet> {
  late PropertySearchFilterModel _filters;

  static const double _priceMinBound = 0;
  static const double _priceMaxBound = 200000000;

  @override
  void initState() {
    super.initState();
    _filters = widget.initialFilters;
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.85,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      expand: false,
      builder: (context, scrollController) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            controller: scrollController,
            children: [
              Text(
                LocaleKeys.filters.tr(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              Text(
                LocaleKeys.priceRange.tr(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              RangeSlider(
                min: _priceMinBound,
                max: _priceMaxBound,
                divisions: 40,
                labels: RangeLabels(
                  (_filters.priceMin ?? _priceMinBound).toStringAsFixed(0),
                  (_filters.priceMax ?? _priceMaxBound).toStringAsFixed(0),
                ),
                values: RangeValues(
                  _filters.priceMin ?? _priceMinBound,
                  _filters.priceMax ?? _priceMaxBound,
                ),
                onChanged: (values) => setState(() {
                  _filters = _filters.copyWith(
                    priceMin: () => values.start,
                    priceMax: () => values.end,
                  );
                }),
              ),
              const SizedBox(height: 16),

              Text(
                LocaleKeys.propertyCategory.tr(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              BlocBuilder<LocationsCubit, LocationsState>(
                builder: (context, state) => Wrap(
                  spacing: 8,
                  children: state.categories.map((category) {
                    final bool selected = _filters.category == category.id;
                    return ChoiceChip(
                      label: Text(category.name),
                      selected: selected,
                      onSelected: (_) => setState(() {
                        _filters = _filters.copyWith(
                          category: () => selected ? null : category.id,
                        );
                      }),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 16),

              Text(
                LocaleKeys.bedrooms.tr(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              _MinCountSelector(
                value: _filters.bedroomsGte,
                onChanged: (v) => setState(
                  () => _filters = _filters.copyWith(bedroomsGte: () => v),
                ),
              ),
              const SizedBox(height: 16),

              Text(
                LocaleKeys.bathrooms.tr(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              _MinCountSelector(
                value: _filters.bathroomsGte,
                onChanged: (v) => setState(
                  () => _filters = _filters.copyWith(bathroomsGte: () => v),
                ),
              ),
              const SizedBox(height: 16),

              Text(
                LocaleKeys.guests.tr(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              _MinCountSelector(
                value: _filters.maxGuestsGte,
                onChanged: (v) => setState(
                  () => _filters = _filters.copyWith(maxGuestsGte: () => v),
                ),
              ),
              const SizedBox(height: 16),

              Text(
                LocaleKeys.city.tr(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              BlocBuilder<LocationsCubit, LocationsState>(
                builder: (context, state) => DropdownButtonFormField<String>(
                  initialValue: _filters.city,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  items: [
                    DropdownMenuItem(
                      value: null,
                      child: Text(LocaleKeys.any.tr()),
                    ),
                    ...state.cities.map(
                      (city) => DropdownMenuItem(
                        value: city.id,
                        child: Text(city.name),
                      ),
                    ),
                  ],
                  onChanged: (value) => setState(
                    () => _filters = _filters.copyWith(city: () => value),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              Text(
                LocaleKeys.placeType.tr(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              BlocBuilder<LocationsCubit, LocationsState>(
                builder: (context, state) => DropdownButtonFormField<String>(
                  initialValue: _filters.placeType,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  items: [
                    DropdownMenuItem(
                      value: null,
                      child: Text(LocaleKeys.any.tr()),
                    ),
                    ...state.placeTypes.map(
                      (type) => DropdownMenuItem(
                        value: type.id,
                        child: Text(type.name),
                      ),
                    ),
                  ],
                  onChanged: (value) => setState(
                    () => _filters = _filters.copyWith(placeType: () => value),
                  ),
                ),
              ),
              const SizedBox(height: 32),

              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        widget.onReset();
                        Navigator.pop(context);
                      },
                      child: Text(LocaleKeys.resetFilters.tr()),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        widget.onApply(_filters);
                        Navigator.pop(context);
                      },
                      child: Text(LocaleKeys.showResults.tr()),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _MinCountSelector extends StatelessWidget {
  const _MinCountSelector({required this.value, required this.onChanged});

  final int? value;
  final ValueChanged<int?> onChanged;

  static const List<int?> _options = [null, 1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: _options.map((option) {
        final bool selected = value == option;
        return ChoiceChip(
          label: Text(option == null ? LocaleKeys.any.tr() : '$option+'),
          selected: selected,
          onSelected: (_) => onChanged(option),
        );
      }).toList(),
    );
  }
}
