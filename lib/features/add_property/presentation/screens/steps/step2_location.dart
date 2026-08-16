import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/bloc/add_property_cubit.dart';
import 'package:ewan/features/add_property/data/constants/city_areas.dart';
import 'package:ewan/features/add_property/presentation/widgets/property_location_picker_page.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:flutter/material.dart';

class AddPropertyStep2 extends StatelessWidget {
  const AddPropertyStep2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.whereIsYourPlaceLocated.tr(),
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 24),

          Text(
            LocaleKeys.city.tr(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 8),
          const _CityDropdown(),
          const SizedBox(height: 24),

          Text(
            LocaleKeys.area.tr(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 8),
          const _AreaDropdown(),
          const SizedBox(height: 24),

          Text(
            LocaleKeys.streetAddress.tr(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 8),
          const _StreetAddressField(),
          const SizedBox(height: 24),

          Text(
            LocaleKeys.mapLocation.tr(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 8),
          const _MapLocationPicker(),
        ],
      ),
    );
  }
}

class _CityDropdown extends StatelessWidget {
  const _CityDropdown();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPropertyCubit, AddPropertyState>(
      buildWhen: (p, c) => p.formData.city != c.formData.city,
      builder: (context, state) {
        return DropdownButtonFormField<City>(
          initialValue: state.formData.city,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: LocaleKeys.selectCity.tr(),
          ),
          items: City.values
              .map((c) => DropdownMenuItem(value: c, child: Text(c.label)))
              .toList(),
          onChanged: (value) {
            if (value != null) {
              context.read<AddPropertyCubit>().updateCity(value);
            }
          },
        );
      },
    );
  }
}

class _AreaDropdown extends StatelessWidget {
  const _AreaDropdown();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPropertyCubit, AddPropertyState>(
      buildWhen: (p, c) =>
          p.formData.city != c.formData.city ||
          p.formData.area != c.formData.area,
      builder: (context, state) {
        final city = state.formData.city;
        final areas = city != null
            ? (kCityAreas[city] ?? const <String>[])
            : const <String>[];
        final validValue = areas.contains(state.formData.area)
            ? state.formData.area
            : null;

        return DropdownButtonFormField<String>(
          initialValue: validValue,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: city == null
                ? LocaleKeys.selectCityFirst.tr()
                : LocaleKeys.selectArea.tr(),
          ),
          items: areas
              .map((a) => DropdownMenuItem(value: a, child: Text(a)))
              .toList(),
          onChanged: city == null
              ? null
              : (value) {
                  if (value != null) {
                    context.read<AddPropertyCubit>().updateArea(value);
                  }
                },
        );
      },
    );
  }
}

class _StreetAddressField extends StatefulWidget {
  const _StreetAddressField();

  @override
  State<_StreetAddressField> createState() => _StreetAddressFieldState();
}

class _StreetAddressFieldState extends State<_StreetAddressField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final current = context
        .read<AddPropertyCubit>()
        .state
        .formData
        .streetAddress;
    _controller = TextEditingController(text: current);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPropertyCubit, AddPropertyState>(
      buildWhen: (p, c) => p.formData.streetAddress != c.formData.streetAddress,
      builder: (context, state) {
        final length = state.formData.streetAddress.trim().length;
        return TextField(
          controller: _controller,
          maxLength: 200,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: LocaleKeys.egAlMazzehStreetBuilding12.tr(),
            counterText: '$length/200',
            errorText: length > 0 && length < 5
                ? LocaleKeys.atLeast5Characters.tr()
                : null,
          ),
          onChanged: (value) =>
              context.read<AddPropertyCubit>().updateStreetAddress(value),
        );
      },
    );
  }
}

class _MapLocationPicker extends StatelessWidget {
  const _MapLocationPicker();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPropertyCubit, AddPropertyState>(
      buildWhen: (p, c) => p.formData.mapLocation != c.formData.mapLocation,
      builder: (context, state) {
        final location = state.formData.mapLocation;
        final isSelected = location != null;

        return InkWell(
          onTap: () async {
            final cubit = context.read<AddPropertyCubit>();
            final result = await Navigator.push<LatLng>(
              context,
              MaterialPageRoute(
                builder: (_) => PropertyLocationPickerPage(
                  initialLocation: isSelected
                      ? LatLng(
                          (location['lat'] as num).toDouble(),
                          (location['lng'] as num).toDouble(),
                        )
                      : null,
                ),
              ),
            );
            if (result != null) {
              cubit.updateMapLocation({
                'lat': result.latitude,
                'lng': result.longitude,
              });
            }
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(
                color: isSelected ? Colors.green : Colors.grey,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(
                  isSelected ? Icons.check_circle : Icons.location_on_outlined,
                  color: isSelected ? Colors.green : Colors.grey,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    isSelected
                        ? LocaleKeys.locationSelectedTapToChange.tr()
                        : LocaleKeys.tapToSelectLocationOnMap,
                  ),
                ),
                const Icon(Icons.chevron_right),
              ],
            ),
          ),
        );
      },
    );
  }
}
