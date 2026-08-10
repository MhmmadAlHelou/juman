import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:flutter/material.dart';

class AmenitiesSection extends StatefulWidget {
  const AmenitiesSection({
    super.key,
    required this.amenities,
    this.collapsedCount = 5,
  });

  final List<Amenity> amenities;
  final int collapsedCount;

  @override
  State<AmenitiesSection> createState() => _AmenitiesSectionState();
}

class _AmenitiesSectionState extends State<AmenitiesSection> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final amenities = widget.amenities;
    final hasMore = amenities.length > widget.collapsedCount;
    final visibleAmenities = (_isExpanded || !hasMore)
        ? amenities
        : amenities.take(widget.collapsedCount).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...visibleAmenities.map(
          (a) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              children: [
                Icon(a.icon, size: 22, color: Palette.fontColor),
                const SizedBox(width: 12),
                Text(
                  a.label,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: FontFamily.alexandria,
                    color: Palette.fontColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (hasMore) ...[
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => setState(() => _isExpanded = !_isExpanded),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Palette.fontColor),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                _isExpanded
                    ? LocaleKeys.showLess.tr()
                    : LocaleKeys.showAllAmenities.tr(
                        args: [amenities.length.toString()],
                      ),
                style: const TextStyle(
                  fontFamily: FontFamily.alexandria,
                  fontWeight: FontWeight.bold,
                  color: Palette.fontColor,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
