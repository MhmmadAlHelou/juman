import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/bloc/add_property_cubit.dart';
import 'package:ewan/features/add_property/data/models/add_property_form_model.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddPropertyStep3 extends StatelessWidget {
  const AddPropertyStep3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.shareSomeBasicDetails.tr(),
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 24),

          Text(
            LocaleKeys.propertySizeM2Optional.tr(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 8),
          const _PropertySizeField(),
          const SizedBox(height: 24),

          _IntStepperRow(
            label: LocaleKeys.maximumGuests.tr(),
            field: _IntStepperField.guests,
          ),
          const Divider(height: 32),
          _IntStepperRow(
            label: LocaleKeys.bedrooms.tr(),
            field: _IntStepperField.bedrooms,
          ),
          const Divider(height: 32),
          _IntStepperRow(
            label: LocaleKeys.bathrooms.tr(),
            field: _IntStepperField.bathrooms,
          ),
          const SizedBox(height: 32),

          Text(
            LocaleKeys.amenities.tr(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            LocaleKeys.selectAtLeastOne.tr(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 12),
          const _AmenitiesGrid(),
        ],
      ),
    );
  }
}

// ---------------- Property Size (optional plain number field) ----------------

class _PropertySizeField extends StatefulWidget {
  const _PropertySizeField();

  @override
  State<_PropertySizeField> createState() => _PropertySizeFieldState();
}

class _PropertySizeFieldState extends State<_PropertySizeField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final current = context
        .read<AddPropertyCubit>()
        .state
        .formData
        .propertySize;
    _controller = TextEditingController(text: current?.toString() ?? '');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
      ],
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'e.g. 150',
        suffixText: LocaleKeys.m.tr(),
      ),
      onChanged: (value) {
        final parsed = double.tryParse(value);
        context.read<AddPropertyCubit>().updatePropertySize(parsed);
      },
    );
  }
}

// ---------------- Integer Stepper (Guests / Bedrooms / Bathrooms) ----------------

enum _IntStepperField { guests, bedrooms, bathrooms }

class _IntStepperRow extends StatelessWidget {
  final String label;
  final _IntStepperField field;

  const _IntStepperRow({required this.label, required this.field});

  int get _min => field == _IntStepperField.guests ? 1 : 0;
  int get _max => field == _IntStepperField.bathrooms ? 20 : 999;

  int _currentValue(AddPropertyFormModel data) {
    switch (field) {
      case _IntStepperField.guests:
        return data.maximumGuests;
      case _IntStepperField.bedrooms:
        return data.bedrooms;
      case _IntStepperField.bathrooms:
        return data.bathrooms;
    }
  }

  void _update(BuildContext context, int newValue) {
    final cubit = context.read<AddPropertyCubit>();
    switch (field) {
      case _IntStepperField.guests:
        cubit.updateMaxGuests(newValue);
      case _IntStepperField.bedrooms:
        cubit.updateBedrooms(newValue);
      case _IntStepperField.bathrooms:
        cubit.updateBathrooms(newValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPropertyCubit, AddPropertyState>(
      buildWhen: (p, c) =>
          _currentValue(p.formData) != _currentValue(c.formData),
      builder: (context, state) {
        final value = _currentValue(state.formData);
        return Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: FontFamily.alexandria,
                  color: Palette.fontColor,
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.remove_circle_outline),
              onPressed: value <= _min
                  ? null
                  : () => _update(context, value - 1),
            ),
            SizedBox(
              width: 32,
              child: Text(
                '$value',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.add_circle_outline),
              onPressed: value >= _max
                  ? null
                  : () => _update(context, value + 1),
            ),
          ],
        );
      },
    );
  }
}

// ---------------- Amenities (Multi-select) ----------------

class _AmenitiesGrid extends StatelessWidget {
  const _AmenitiesGrid();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPropertyCubit, AddPropertyState>(
      buildWhen: (p, c) => p.formData.amenities != c.formData.amenities,
      builder: (context, state) {
        final selected = state.formData.amenities;
        return Wrap(
          spacing: 8,
          runSpacing: 8,
          children: Amenity.values.map((amenity) {
            final isSelected = selected.contains(amenity);
            return FilterChip(
              selected: isSelected,
              avatar: Icon(
                amenity.icon,
                size: 18,
                color: isSelected
                    ? Theme.of(context).colorScheme.onPrimary
                    : null,
              ),
              label: Text(amenity.label),
              onSelected: (_) =>
                  context.read<AddPropertyCubit>().toggleAmenity(amenity),
            );
          }).toList(),
        );
      },
    );
  }
}
