import 'package:ewan/core/core.dart';
import 'package:ewan/features/favourites/bloc/favourites_cubit.dart';
import 'package:ewan/features/favourites/presentation/widgets/favorite_list_tile.dart';
import 'package:ewan/features/favourites/presentation/widgets/favorites_empty.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyFavoritesScreen extends StatelessWidget {
  const MyFavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Text(
                LocaleKeys.favorites.tr(),
                style: TextStyle(
                  fontFamily: FontFamily.alexandria,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Palette.fontColor,
                ),
              ),
              Expanded(
                child: BlocBuilder<FavoritesCubit, FavoritesState>(
                  builder: (context, state) {
                    if (state.status == FavoritesStatus.initial ||
                        state.status == FavoritesStatus.loading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (state.favorites.isEmpty) {
                      return FavoritesEmptyView(
                        onExplore: () => context.tabsRouter.setActiveIndex(0),
                      );
                    }
                    return ListView.separated(
                      padding: const EdgeInsets.only(top: 16, bottom: 24),
                      itemCount: state.favorites.length,
                      separatorBuilder: (_, _) => const SizedBox(height: 16),
                      itemBuilder: (_, i) =>
                          FavoriteListTile(item: state.favorites[i]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
