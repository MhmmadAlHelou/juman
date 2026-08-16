import 'dart:io';

import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/bloc/add_property_cubit.dart';
import 'package:ewan/features/add_property/presentation/widgets/dotted_border_box.dart';
import 'package:flutter/material.dart';

class AddPropertyStep4 extends StatelessWidget {
  const AddPropertyStep4({super.key});

  static const int _minImages = 5;
  static const int _maxImages = 30;

  Future<void> _pickImages(BuildContext context) async {
    final cubit = context.read<AddPropertyCubit>();
    final remaining = _maxImages - cubit.state.formData.imagePaths.length;
    if (remaining <= 0) return;

    final result = await FilePicker.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'webp'],
      // allowMultiple: true,
    );

    if (result == null) return;

    final paths = result.files
        .where((f) => f.path != null)
        .map((f) => f.path!)
        .take(remaining) // ما نتجاوز الحد الأقصى حتى لو المستخدم اختار أكتر
        .toList();

    cubit.addImages(paths);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.addSomePhotosOfYourPlace.tr(),
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            LocaleKeys.youWillNeedPhotosToGetStarted.tr(
              args: [_minImages.toString()],
            ),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 20),

          // ---- Dropzone ----
          BlocBuilder<AddPropertyCubit, AddPropertyState>(
            buildWhen: (p, c) =>
                p.formData.imagePaths.length != c.formData.imagePaths.length,
            builder: (context, state) {
              final count = state.formData.imagePaths.length;
              final isFull = count >= _maxImages;
              return Center(
                child: InkWell(
                  onTap: isFull ? null : () => _pickImages(context),
                  child: DottedBorderBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 32,
                        horizontal: 24,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.cloud_upload_outlined,
                            size: 40,
                            color: isFull
                                ? Colors.grey.shade400
                                : Colors.grey.shade700,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            isFull
                                ? LocaleKeys.maximumPhotosReached.tr()
                                : LocaleKeys.tapToBrowseFiles.tr(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: FontFamily.alexandria,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            LocaleKeys.photosSelected.tr(
                              args: ['$count/$_maxImages'],
                            ),
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(fontFamily: FontFamily.alexandria),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 24),

          // ---- Cover Photo + Grid ----
          const _ImagesGrid(),

          const SizedBox(height: 8),
          BlocBuilder<AddPropertyCubit, AddPropertyState>(
            buildWhen: (p, c) =>
                p.formData.imagePaths.length != c.formData.imagePaths.length,
            builder: (context, state) {
              final count = state.formData.imagePaths.length;

              if (count == 0 || count >= _minImages) {
                return const SizedBox.shrink();
              }

              return Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  LocaleKeys.addMorePhotosToContinue.tr(
                    args: [
                      '${_minImages - count}',
                      (_minImages - count == 1 ? '' : 's'),
                    ],
                  ),
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              );
            },
          ),

          const SizedBox(height: 24),
          _PhotoTipsCard(),
        ],
      ),
    );
  }
}

// ---------------- Grid: Cover + thumbnails ----------------

class _ImagesGrid extends StatelessWidget {
  const _ImagesGrid();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPropertyCubit, AddPropertyState>(
      buildWhen: (p, c) => p.formData.imagePaths != c.formData.imagePaths,
      builder: (context, state) {
        final images = state.formData.imagePaths;
        if (images.isEmpty) return const SizedBox.shrink();

        final cover = images.first;
        final rest = images.skip(1).toList();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cover photo
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.file(
                    File(cover),
                    width: double.infinity,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      LocaleKeys.coverPhoto.tr(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: _RemoveButton(
                    onTap: () =>
                        context.read<AddPropertyCubit>().removeImage(cover),
                  ),
                ),
              ],
            ),
            if (rest.isNotEmpty) const SizedBox(height: 12),

            // Rest as 2-column grid
            if (rest.isNotEmpty)
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: rest.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.3,
                ),
                itemBuilder: (context, index) {
                  final path = rest[index];
                  return Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.file(File(path), fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        top: 6,
                        right: 6,
                        child: _RemoveButton(
                          onTap: () => context
                              .read<AddPropertyCubit>()
                              .removeImage(path),
                        ),
                      ),
                      Positioned(
                        bottom: 6,
                        left: 6,
                        child: GestureDetector(
                          onTap: () => context
                              .read<AddPropertyCubit>()
                              .setCoverImage(path),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              LocaleKeys.setAsCover.tr(),
                              // 'Set as cover',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
          ],
        );
      },
    );
  }
}

class _RemoveButton extends StatelessWidget {
  final VoidCallback onTap;
  const _RemoveButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          color: Colors.black54,
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.close, color: Colors.white, size: 16),
      ),
    );
  }
}

// ---------------- Photo Tips ----------------

class _PhotoTipsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.lightbulb_outline,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 8),
              Text(
                LocaleKeys.photoTips.tr(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: FontFamily.alexandria,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          _TipRow(
            title: LocaleKeys.useNaturalLight.tr(),
            subtitle: LocaleKeys.openBlindsAndTurnOffIndoorLights.tr(),
          ),
          const SizedBox(height: 10),
          _TipRow(
            title: LocaleKeys.tidyUp.tr(),
            subtitle: LocaleKeys.clearSurfacesAndMakeBeds.tr(),
          ),
          const SizedBox(height: 10),
          _TipRow(
            title: LocaleKeys.shootHorizontally.tr(),
            subtitle: LocaleKeys.landscapeModeShowsMoreOfYourSpace.tr(),
            // title: 'Shoot horizontally',
            // subtitle: 'Landscape mode shows more of your space.',
          ),
        ],
      ),
    );
  }
}

class _TipRow extends StatelessWidget {
  final String title;
  final String subtitle;
  const _TipRow({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.check_circle_outline, color: Colors.teal, size: 20),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: FontFamily.alexandria,
                ),
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontFamily: FontFamily.alexandria,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
