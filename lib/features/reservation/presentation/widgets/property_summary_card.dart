import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:flutter/material.dart';

class PropertySummaryCard extends StatelessWidget {
  const PropertySummaryCard({super.key, required this.property});
  final PropertiesModel property;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: property.coverImageUrl != null
              ? Image.network(
                  property.coverImageUrl!,
                  width: 64,
                  height: 64,
                  fit: BoxFit.cover,
                )
              : Container(width: 64, height: 64, color: Palette.semiGray),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                property.title,
                style: const TextStyle(
                  color: Palette.fontColor,
                  fontFamily: FontFamily.alexandria,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 14,
                    color: Palette.fontColor.withValues(alpha: 0.6),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${property.area.name}, ${property.city.name}',
                    style: TextStyle(
                      fontFamily: FontFamily.alexandria,
                      color: Palette.fontColor.withValues(alpha: 0.6),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
