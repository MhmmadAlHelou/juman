import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/bloc/locations_cubit.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:flutter/material.dart';

class HomePropertySearchBar extends StatefulWidget {
  const HomePropertySearchBar({
    super.key,
    required this.onSearchChanged,
    required this.onFilterTap,
    required this.onCategorySelected,
    required this.selectedCategoryId,
  });

  final ValueChanged<String> onSearchChanged;
  final VoidCallback onFilterTap;
  final ValueChanged<String?> onCategorySelected;
  final String? selectedCategoryId;

  @override
  State<HomePropertySearchBar> createState() => _HomePropertySearchBarState();
}

class _HomePropertySearchBarState extends State<HomePropertySearchBar> {
  final TextEditingController _controller = TextEditingController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _onChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 450), () {
      widget.onSearchChanged(value);
    });
  }

  void _clearSearch() {
    _debounce?.cancel();
    _controller.clear();
    widget.onSearchChanged(
      '',
    ); // يرجع Home لحالتها الأصلية فوراً، بدون انتظار الـ debounce
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
          decoration: BoxDecoration(
            color: Palette.backgroundColor,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.08),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              const Icon(Icons.search, color: Palette.primary),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: _controller,
                  onChanged: _onChanged,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                    hintText: LocaleKeys.searchAnywhere.tr(),
                  ),
                ),
              ),
              if (_controller.text.isNotEmpty)
                GestureDetector(
                  onTap: _clearSearch,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: Icon(Icons.close, size: 20, color: Palette.darkGray),
                  ),
                ),
              GestureDetector(
                onTap: widget.onFilterTap,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Palette.semiGray),
                  ),
                  child: const Icon(Icons.tune, size: 20),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 6),
        // CategoriesFilter(
        //   selectedCategoryId: widget.selectedCategoryId,
        //   onCategorySelected: widget.onCategorySelected,
        // ),
      ],
    );
  }
}

class CategoriesFilter extends StatelessWidget {
  const CategoriesFilter({
    super.key,
    this.selectedCategoryId,
    required this.onCategorySelected,
  });

  final String? selectedCategoryId;
  final ValueChanged<String?> onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationsCubit, LocationsState>(
      builder: (context, state) {
        if (state.categories.isEmpty) return const SizedBox.shrink();
        return SizedBox(
          height: 62,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: state.categories.length,
            separatorBuilder: (_, _) => const SizedBox(width: 20),
            itemBuilder: (context, index) {
              final category = state.categories[index];
              final bool selected = category.id == selectedCategoryId;
              return GestureDetector(
                onTap: () => onCategorySelected(selected ? null : category.id),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Icon(
                    //   Icons
                    //       .category_outlined,
                    //   color: selected ? Palette.primary : Palette.semiGray,
                    // ),
                    // _buildCategoryIcon(category, selected),
                    const SizedBox(height: 4),
                    Container(
                      height: 2,
                      width: 24,
                      color: selected ? Palette.primary : Colors.transparent,
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: selected
                            ? Palette.primary.withValues(alpha: 0.1)
                            : Palette.primary.withValues(alpha: 0.80),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        category.name,
                        maxLines: 1, //////////////
                        overflow: TextOverflow.ellipsis, //////////
                        style: TextStyle(
                          // decorationColor: selected
                          //     ? Palette.black
                          //     : Colors.amber,
                          // backgroundColor: selected
                          //     ? Palette.primary.withValues(alpha: 0.1)
                          //     : Palette.primary.withValues(alpha: 0.80),
                          fontWeight: selected
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: selected ? Palette.primary : Palette.white,
                        ),
                      ),
                    ),
                    if (selected)
                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        height: 2,
                        width: 24,
                        color: Palette.primary,
                      ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

Widget _buildCategoryIcon(PropertyCategoryModel category, bool selected) {
  final Color color = selected ? Palette.primary : Palette.semiGray;
  final String? iconUrl = category.icon;

  if (iconUrl == null || iconUrl.isEmpty) {
    return Icon(Icons.category_outlined, color: color);
  }

  return Image.network(
    iconUrl,
    width: 24,
    height: 24,
    color: color,
    errorBuilder: (context, error, stackTrace) =>
        Icon(Icons.category_outlined, color: color),
  );
}
