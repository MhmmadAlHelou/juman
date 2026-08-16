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
            LocaleKeys.addSomeBasicInfo.tr(),
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 24),

          // ---- Property Category ----
          Text(
            LocaleKeys.propertyCategory.tr(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 8),
          BlocBuilder<AddPropertyCubit, AddPropertyState>(
            buildWhen: (p, c) =>
                p.formData.propertyCategory != c.formData.propertyCategory,
            builder: (context, state) {
              return DropdownButtonFormField<PropertyCategory>(
                initialValue: state.formData.propertyCategory,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: LocaleKeys.selectCategory.tr(),
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
          Text(
            LocaleKeys.placeType.tr(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
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
          Text(
            LocaleKeys.title.tr(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 8),
          _TitleField(),
          const SizedBox(height: 24),

          // ---- Description ----
          Text(
            LocaleKeys.description.tr(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
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
            hintText: LocaleKeys.egCozyVillaWithPoolView.tr(),
            counterText: '$length/80',
            errorText: length > 0 && length < 10
                ? LocaleKeys.atLeast10Characters.tr()
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
            hintText: LocaleKeys.describeYourPlace.tr(),
            counterText: '$length/1000',
            errorText: length > 0 && length < 50
                ? LocaleKeys.atLeast50Characters.tr()
                : null,
          ),
          onChanged: (value) =>
              context.read<AddPropertyCubit>().updateDescription(value),
        );
      },
    );
  }
}
