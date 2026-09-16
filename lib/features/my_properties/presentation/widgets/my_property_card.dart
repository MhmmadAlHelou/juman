import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:ewan/features/my_properties/data/model/my_property_model.dart';
import 'package:flutter/material.dart';
import 'package:ewan/core/core.dart';

class MyPropertyCard extends StatelessWidget {
  const MyPropertyCard({
    super.key,
    required this.item,
    required this.onDelete,
    this.isDeleting = false,
  });

  final MyPropertyModel item;
  final VoidCallback onDelete;
  final bool isDeleting;

  Color get _statusColor {
    switch (item.status) {
      case PropertyStatus.draft:
        return Palette.darkGray;
      case PropertyStatus.pending:
        return const Color(0xFFF5A623);
      case PropertyStatus.approved:
        return const Color(0xFF2E7D32);
      case PropertyStatus.rejected:
        return Palette.red;
      case PropertyStatus.unknown:
        return Palette.gray;
    }
  }

  String get _statusLabel {
    switch (item.status) {
      case PropertyStatus.draft:
        return 'Draft';
      case PropertyStatus.pending:
        return 'Pending';
      case PropertyStatus.approved:
        return 'Approved';
      case PropertyStatus.rejected:
        return 'Rejected';
      case PropertyStatus.unknown:
        return 'Unknown';
    }
  }

  void _goToEditWizard(BuildContext context) {
    context.router.push(AddPropertyPage(propertyId: item.id));
  }

  void _goToDetail(BuildContext context) {
    if (item.fullProperty == null) {
      return; // Precaution - it doesn't work with non-draft
    }
    context.router.push(MyPropertyDetailRoute(property: item.fullProperty!));
  }

  @override
  Widget build(BuildContext context) {
    final bool isDraft = item.isDraft;
    final bool isRejected = item.status == PropertyStatus.rejected;

    return Container(
      decoration: BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Palette.fontColor.withValues(alpha: 0.08)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 10,
                child: item.imageUrl == null
                    ? Container(
                        color: Palette.semiGray,
                        child: const Icon(
                          Icons.broken_image,
                          color: Palette.gray,
                        ),
                      )
                    : Image.network(item.imageUrl!, fit: BoxFit.cover),
              ),
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: _statusColor.withValues(alpha: 0.35),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    _statusLabel,
                    style: TextStyle(
                      color: _statusColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      fontFamily: FontFamily.alexandria,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                if (item.categoryName != null)
                  Text(
                    item.categoryName!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Palette.fontColor,
                      fontFamily: FontFamily.alexandria,
                    ),
                  ),
                if (item.placeTypeName != null) ...<Widget>[
                  const SizedBox(height: 2),
                  Text(
                    item.placeTypeName!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: Palette.fontColor.withAlpha(200),
                      fontFamily: FontFamily.alexandria,
                    ),
                  ),
                ],
                Text(
                  item.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: Palette.fontColor.withAlpha(200),
                    fontFamily: FontFamily.alexandria,
                  ),
                ),
                if (item.areaName != null)
                  Text(
                    item.areaName!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: Palette.fontColor.withAlpha(200),
                      fontFamily: FontFamily.alexandria,
                    ),
                  ),
                if (item.pricePerNight != null) ...<Widget>[
                  const SizedBox(height: 6),
                  Text(
                    '${item.pricePerNight!.toStringAsFixed(2)} ${LocaleKeys.sypForTheNight.tr()}',
                    style: TextStyle(
                      fontSize: FontSize.smallTitle,
                      fontWeight: FontWeight.w700,
                      color: Palette.fontColor,
                    ),
                  ),
                ],

                if (isRejected && item.rejectionReason != null) ...<Widget>[
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Palette.red.withValues(alpha: 0.06),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Palette.red.withValues(alpha: 0.2),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Icon(
                          Icons.error_outline,
                          size: 18,
                          color: Palette.red,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                LocaleKeys.actionRequired.tr(),
                                style: TextStyle(
                                  color: Palette.red,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                item.rejectionReason!,
                                style: const TextStyle(
                                  color: Palette.red,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],

                const SizedBox(height: 12),
                const Divider(height: 1),
                const SizedBox(height: 8),

                // ---- Buttons ----
                if (isDraft)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TextButton.icon(
                        onPressed: () => _goToEditWizard(context),
                        icon: const Icon(Icons.edit_note),
                        label: Text(LocaleKeys.continueEditing.tr()),
                      ),
                      IconButton(
                        onPressed: isDeleting ? null : onDelete,
                        icon: isDeleting
                            ? const SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : const Icon(
                                Icons.delete_outline,
                                color: Palette.red,
                              ),
                      ),
                    ],
                  )
                else if (isRejected)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () => _goToEditWizard(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Palette.primary,
                        ),
                        child: Text(LocaleKeys.resubmit.tr()),
                      ),
                      IconButton(
                        onPressed: isDeleting ? null : onDelete,
                        icon: isDeleting
                            ? const SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : const Icon(
                                Icons.delete_outline,
                                color: Palette.red,
                              ),
                      ),
                    ],
                  )
                else
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          TextButton(
                            onPressed: () => _goToDetail(context),
                            child: Text(LocaleKeys.view.tr()),
                          ),
                          const SizedBox(width: 4),
                          OutlinedButton(
                            onPressed: () => _goToEditWizard(context),
                            child: Text(LocaleKeys.edit.tr()),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: isDeleting ? null : onDelete,
                        icon: isDeleting
                            ? const SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : const Icon(
                                Icons.delete_outline,
                                color: Palette.red,
                              ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
