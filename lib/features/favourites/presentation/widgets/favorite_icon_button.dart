import 'package:ewan/core/core.dart';
import 'package:ewan/features/favourites/bloc/favourites_cubit.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:flutter/material.dart';

class FavoriteIconButton extends StatelessWidget {
  const FavoriteIconButton({super.key, required this.property});

  final PropertiesModel property;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      buildWhen: (previous, current) =>
          previous.favoriteIds.contains(property.id) !=
          current.favoriteIds.contains(property.id),
      builder: (context, state) {
        final isFavorite = state.favoriteIds.contains(property.id);
        return GestureDetector(
          onTap: () => context.read<FavoritesCubit>().toggleFavorite(property),
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              size: 18,
              color: isFavorite
                  ? Palette.primary
                  : Palette.fontColor.withValues(alpha: 0.7),
            ),
          ),
        );
      },
    );
  }
}
