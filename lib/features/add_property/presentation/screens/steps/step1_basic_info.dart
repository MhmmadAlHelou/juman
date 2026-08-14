import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/bloc/add_property_cubit.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:flutter/material.dart';

class AddPropertyStep1 extends StatelessWidget {
  const AddPropertyStep1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add some basic info',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 24),

          // ---- Property Category ----
          const Text(
            'Property Category',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          BlocBuilder<AddPropertyCubit, AddPropertyState>(
            buildWhen: (p, c) =>
                p.formData.propertyCategory != c.formData.propertyCategory,
            builder: (context, state) {
              return DropdownButtonFormField<PropertyCategory>(
                initialValue: state.formData.propertyCategory,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Select category',
                ),
                items: PropertyCategory.values
                    .map(
                      (c) => DropdownMenuItem(value: c, child: Text(c.label)),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    context.read<AddPropertyCubit>().updateCategory(value);
                  }
                },
              );
            },
          ),
          const SizedBox(height: 24),

          // ---- Place Type ----
          const Text(
            'Place Type',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          BlocBuilder<AddPropertyCubit, AddPropertyState>(
            buildWhen: (p, c) => p.formData.placeType != c.formData.placeType,
            builder: (context, state) {
              return RadioGroup<PlaceType>(
                groupValue: state.formData.placeType,
                onChanged: (value) {
                  if (value != null) {
                    context.read<AddPropertyCubit>().updatePlaceType(value);
                  }
                },
                child: Column(
                  children: PlaceType.values.map((type) {
                    return RadioListTile<PlaceType>(
                      contentPadding: EdgeInsets.zero,
                      title: Text(type.label),
                      value: type,
                    );
                  }).toList(),
                ),
              );
            },
          ),
          const SizedBox(height: 24),

          // ---- Title ----
          const Text('Title', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          _TitleField(),
          const SizedBox(height: 24),

          // ---- Description ----
          const Text(
            'Description',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          _DescriptionField(),
        ],
      ),
    );
  }
}

class _TitleField extends StatefulWidget {
  @override
  State<_TitleField> createState() => _TitleFieldState();
}

class _TitleFieldState extends State<_TitleField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final current = context.read<AddPropertyCubit>().state.formData.title;
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
      buildWhen: (p, c) => p.formData.title != c.formData.title,
      builder: (context, state) {
        final length = state.formData.title.trim().length;
        return TextField(
          controller: _controller,
          maxLength: 80,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: 'e.g. Cozy villa with pool view',
            counterText: '$length/80',
            errorText: length > 0 && length < 10
                ? 'At least 10 characters'
                : null,
          ),
          onChanged: (value) =>
              context.read<AddPropertyCubit>().updateTitle(value),
        );
      },
    );
  }
}

class _DescriptionField extends StatefulWidget {
  @override
  State<_DescriptionField> createState() => _DescriptionFieldState();
}

class _DescriptionFieldState extends State<_DescriptionField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final current = context.read<AddPropertyCubit>().state.formData.description;
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
      buildWhen: (p, c) => p.formData.description != c.formData.description,
      builder: (context, state) {
        final length = state.formData.description.trim().length;
        return TextField(
          controller: _controller,
          maxLength: 1000,
          maxLines: 6,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: 'Describe your place...',
            counterText: '$length/1000',
            errorText: length > 0 && length < 50
                ? 'At least 50 characters'
                : null,
          ),
          onChanged: (value) =>
              context.read<AddPropertyCubit>().updateDescription(value),
        );
      },
    );
  }
}
