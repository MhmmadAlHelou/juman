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
    final remaining =
        _maxImages - cubit.state.formData.uploadedImageUris.length;
    if (remaining <= 0 || cubit.state.isUploadingImage) return;

    final List<PlatformFile> result = await FilePicker.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'webp'],
    );
    if (result.isEmpty) return;

    final paths = result
        .where((f) => f.path != null)
        .map((f) => f.path!)
        .take(remaining)
        .toList();

    for (final path in paths) {
      await cubit.pickAndUploadImage(File(path));
    }
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
                p.formData.uploadedImageUris.length !=
                    c.formData.uploadedImageUris.length ||
                p.isUploadingImage != c.isUploadingImage,
            builder: (context, state) {
              final count = state.formData.uploadedImageUris.length;
              final isFull = count >= _maxImages;
              final isBusy = state.isUploadingImage;
              return Center(
                child: InkWell(
                  onTap: (isFull || isBusy) ? null : () => _pickImages(context),
                  child: DottedBorderBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 32,
                        horizontal: 24,
                      ),
                      child: Column(
                        children: [
                          if (isBusy)
                            const SizedBox(
                              width: 40,
                              height: 40,
                              child: CircularProgressIndicator(),
                            )
                          else
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

          // ---- Grid ----
          const _ImagesGrid(),

          const SizedBox(height: 8),
          BlocBuilder<AddPropertyCubit, AddPropertyState>(
            buildWhen: (p, c) => p.isImagesValid != c.isImagesValid,
            builder: (context, state) {
              final count = state.formData.uploadedImageUris.length;
              if (state.isImagesValid || count == 0) {
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
          const _PhotoTipsCard(),
        ],
      ),
    );
  }
}

// ---------------- Grid: thumbnails فقط، بدون Cover ----------------

class _ImagesGrid extends StatelessWidget {
  const _ImagesGrid();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPropertyCubit, AddPropertyState>(
      buildWhen: (p, c) =>
          p.formData.uploadedImageUris != c.formData.uploadedImageUris,
      builder: (context, state) {
        final images = state.formData.uploadedImageUris;
        if (images.isEmpty) return const SizedBox.shrink();

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.3,
          ),
          itemBuilder: (context, index) {
            final url = images[index];
            return Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                      errorBuilder: (_, _, _) => Container(
                        color: Colors.grey.shade300,
                        child: const Icon(Icons.broken_image_outlined),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 6,
                  right: 6,
                  child: _RemoveButton(
                    onTap: () => context
                        .read<AddPropertyCubit>()
                        .removeUploadedImage(url),
                  ),
                ),
              ],
            );
          },
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
  const _PhotoTipsCard();

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
                style: const TextStyle(
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
