import 'package:ewan/features/my_properties/bloc/my_properties_cubit.dart';
import 'package:ewan/features/my_properties/data/model/my_property_model.dart';
import 'package:ewan/features/my_properties/data/property_status_filter.dart';
import 'package:flutter/material.dart';
import 'package:ewan/core/core.dart';
import '../widgets/my_property_card.dart';

@RoutePage()
class MyPropertiesScreen extends StatelessWidget {
  const MyPropertiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MyPropertiesCubit>(
      create: (_) => getIt<MyPropertiesCubit>()..fetchProperties(),
      child: const _MyPropertiesView(),
    );
  }
}

class _MyPropertiesView extends StatelessWidget {
  const _MyPropertiesView();

  Future<void> _confirmDelete(BuildContext context, String id) async {
    final bool? confirm = await showDialog<bool>(
      context: context,
      builder: (BuildContext ctx) => AlertDialog(
        title: Text(LocaleKeys.deleteProperty.tr()),
        content: Text(LocaleKeys.confirmDeleteProperty.tr()),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(LocaleKeys.cancel.tr()),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(
              LocaleKeys.delete.tr(),
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
    if (confirm == true && context.mounted) {
      context.read<MyPropertiesCubit>().deleteProperty(id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      appBar: AppBar(
        title: Text(LocaleKeys.myProperties.tr()),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              context.router.push(AddPropertyPage());
              // context.read<AddPropertyCubit>().initWizard(forceNew: true);
            },
          ),
        ],
      ),
      body: BlocBuilder<MyPropertiesCubit, MyPropertiesState>(
        builder: (BuildContext context, MyPropertiesState state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.allItems.isEmpty) {
            return _EmptyState(
              onAddProperty: () => context.router.push(AddPropertyPage()),
            );
          }

          return Column(
            children: <Widget>[
              _FilterChips(
                selected: state.filter,
                onChanged: (PropertyStatusFilter f) =>
                    context.read<MyPropertiesCubit>().changeFilter(f),
              ),
              Expanded(
                child: state.filteredItems.isEmpty
                    ? Center(
                        child: Text(
                          LocaleKeys.thereAreNoPropertiesInThisCase.tr(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Palette.fontColor,
                            fontFamily: FontFamily.alexandria,
                          ),
                        ),
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.all(16),
                        itemCount: state.filteredItems.length,
                        separatorBuilder: (_, _) => const SizedBox(height: 16),
                        itemBuilder: (BuildContext context, int index) {
                          final MyPropertyModel item =
                              state.filteredItems[index];
                          return MyPropertyCard(
                            item: item,
                            isDeleting: state.deletingId == item.id,

                            onDelete: () => _confirmDelete(context, item.id),
                          );
                        },
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _FilterChips extends StatelessWidget {
  const _FilterChips({required this.selected, required this.onChanged});

  final PropertyStatusFilter selected;
  final ValueChanged<PropertyStatusFilter> onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        children: PropertyStatusFilter.values.map((PropertyStatusFilter f) {
          final bool isSelected = f == selected;
          return Padding(
            padding: const EdgeInsets.only(left: 8),
            child: ChoiceChip(
              label: Text(f.label),
              selected: isSelected,
              onSelected: (_) => onChanged(f),
              selectedColor: Palette.primary.withValues(alpha: 0.15),
              labelStyle: TextStyle(
                color: isSelected ? Palette.primary : Palette.fontColor,
                fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({required this.onAddProperty});
  final VoidCallback onAddProperty;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Icon(
              Icons.home_work_outlined,
              size: 64,
              color: Palette.darkGray,
            ),
            const SizedBox(height: 16),
            Text(
              LocaleKeys.youDoNotOwnAnyPropertyYet.tr(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Palette.fontColor,
                fontFamily: FontFamily.alexandria,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              LocaleKeys.startAddingYourFirstPropertyNow.tr(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Palette.fontColor,
                fontFamily: FontFamily.alexandria,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: onAddProperty,
              child: Text(LocaleKeys.addProperty.tr()),
            ),
          ],
        ),
      ),
    );
  }
}
