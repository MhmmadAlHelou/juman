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
          const _CategoryDropdown(),
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
          const _PlaceTypeRadioGroup(),
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
          const _TitleField(),
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
          const _DescriptionField(),
        ],
      ),
    );
  }
}

class _CategoryDropdown extends StatelessWidget {
  const _CategoryDropdown();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPropertyCubit, AddPropertyState>(
      buildWhen: (p, c) =>
          p.formData.propertyCategory != c.formData.propertyCategory ||
          p.categories != c.categories,
      builder: (context, state) {
        if (state.isLoadingLocationsData && state.categories.isEmpty) {
          return const LinearProgressIndicator();
        }
        // We need to match the ID and return the same instance from the reference list,
        // Not the object coming directly from formData (different instances even if the data is the same)
        PropertyCategoryModel? selected;
        for (final c in state.categories) {
          if (c.id == state.formData.propertyCategory?.id) {
            selected = c;
            break;
          }
        }
        return DropdownButtonFormField<PropertyCategoryModel>(
          initialValue: selected,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: LocaleKeys.selectCategory.tr(),
          ),
          items: state.categories
              .map((c) => DropdownMenuItem(value: c, child: Text(c.name)))
              .toList(),
          onChanged: (value) {
            if (value != null) {
              context.read<AddPropertyCubit>().updateBasicInfo(category: value);
            }
          },
        );
      },
    );
  }
}

class _PlaceTypeRadioGroup extends StatelessWidget {
  const _PlaceTypeRadioGroup();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPropertyCubit, AddPropertyState>(
      buildWhen: (p, c) =>
          p.formData.placeType != c.formData.placeType ||
          p.placeTypes != c.placeTypes,
      builder: (context, state) {
        if (state.isLoadingLocationsData && state.placeTypes.isEmpty) {
          return const LinearProgressIndicator();
        }
        PlaceTypeModel? selected;
        for (final t in state.placeTypes) {
          if (t.id == state.formData.placeType?.id) {
            selected = t;
            break;
          }
        }
        return RadioGroup<PlaceTypeModel>(
          groupValue: selected,
          onChanged: (value) {
            if (value != null) {
              context.read<AddPropertyCubit>().updateBasicInfo(
                placeType: value,
              );
            }
          },
          child: Column(
            children: state.placeTypes.map((type) {
              return RadioListTile<PlaceTypeModel>(
                contentPadding: EdgeInsets.zero,
                title: Text(type.name),
                value: type,
              );
            }).toList(),
          ),
        );
      },
    );
  }
}

class _TitleField extends StatefulWidget {
  const _TitleField();

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
              context.read<AddPropertyCubit>().updateBasicInfo(title: value),
        );
      },
    );
  }
}

class _DescriptionField extends StatefulWidget {
  const _DescriptionField();

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
          onChanged: (value) => context
              .read<AddPropertyCubit>()
              .updateBasicInfo(description: value),
        );
      },
    );
  }
}
