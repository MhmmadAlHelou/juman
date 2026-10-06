import 'package:ewan/core/core.dart';
import 'package:ewan/features/favourites/data/models/favourites_model.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:ewan/features/home/data/properties_repository.dart';
import 'package:ewan/features/home/presentation/screens/property_detail.dart';
import 'package:flutter/material.dart';

class FavoriteListTile extends StatelessWidget {
  const FavoriteListTile({super.key, required this.item});

  final FavoriteListItem item;

  Future<void> _openDetails(BuildContext context) async {
    PropertiesModel? property = item.fullProperty;

    if (property == null) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => const Center(child: CircularProgressIndicator()),
      );
      try {
        property = await getIt<PropertiesRepository>().getPropertyById(item.id);
      } catch (_) {
        if (context.mounted) Navigator.of(context).pop();
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Could not load property details')),
          );
        }
        return;
      }
      if (context.mounted) Navigator.of(context).pop();
    }

    if (context.mounted) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => PropertyDetailPage(property: property!),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () => _openDetails(context),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 10,
              child: item.coverImageUrl != null
                  ? Image.network(item.coverImageUrl!, fit: BoxFit.cover)
                  : Container(color: Palette.backgroundColor),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                      fontFamily: FontFamily.alexandria,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 12,
                        color: Palette.fontColor,
                      ),
                      Text(
                        item.cityName,
                        style: const TextStyle(
                          fontFamily: FontFamily.alexandria,
                          fontSize: 12,
                          color: Palette.fontColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Divider(),
                  Text(
                    '\$${item.pricePerNight.toStringAsFixed(0)} / ${LocaleKeys.night.tr()}',
                    style: const TextStyle(
                      fontFamily: FontFamily.alexandria,
                      fontWeight: FontWeight.w700,
                      color: Palette.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
