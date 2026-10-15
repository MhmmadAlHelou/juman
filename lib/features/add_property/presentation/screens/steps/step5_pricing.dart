import 'dart:io';

import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/bloc/add_property_cubit.dart';
import 'package:ewan/features/add_property/data/models/uploaded_file_model.dart';
import 'package:ewan/features/add_property/presentation/widgets/blocked_dates_section.dart';
import 'package:ewan/features/add_property/presentation/widgets/dotted_border_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddPropertyStep5 extends StatelessWidget {
  const AddPropertyStep5({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.setYourPricingAndStayRules.tr(),
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 24),

          Text(
            LocaleKeys.minimumStayNights.tr(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 8),
          const _MinStayField(),
          const SizedBox(height: 24),

          Text(
            LocaleKeys.maximumStayNightsOptional.tr(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 8),
          const _MaxStayField(),
          const SizedBox(height: 24),

          Text(
            LocaleKeys.pricePerNight.tr(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 8),
          const _PriceField(),
          const SizedBox(height: 24),

          BlocBuilder<AddPropertyCubit, AddPropertyState>(
            buildWhen: (p, c) => p.blockedDates != c.blockedDates,
            builder: (context, state) => BlockedDatesSection(
              blockedDates: state.blockedDates,
              onChanged: context.read<AddPropertyCubit>().setBlockedDates,
            ),
          ),

          const SizedBox(height: 32),

          Text(
            LocaleKeys.ownershipDocuments.tr(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.alexandria,
              color: Palette.fontColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            LocaleKeys.upload12PDFDocumentsProvingOwnership.tr(),
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(fontFamily: FontFamily.alexandria),
          ),
          const SizedBox(height: 12),
          const _DocumentsUploader(),
        ],
      ),
    );
  }
}

// ---------------- Minimum Stay ----------------

class _MinStayField extends StatefulWidget {
  const _MinStayField();

  @override
  State<_MinStayField> createState() => _MinStayFieldState();
}

class _MinStayFieldState extends State<_MinStayField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final current = context.read<AddPropertyCubit>().state.formData.minimumStay;
    _controller = TextEditingController(text: current?.toString() ?? '');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPropertyCubit, AddPropertyState>(
      buildWhen: (p, c) =>
          p.formData.minimumStay != c.formData.minimumStay ||
          p.generalSettings != c.generalSettings,
      builder: (context, state) {
        final value = state.formData.minimumStay;
        final minAllowed = state.generalSettings.minStayDays;
        final showError = value != null && (value < minAllowed || value > 365);
        return TextField(
          controller: _controller,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: 'e.g. 2',
            suffixText: LocaleKeys.nights.tr(),
            errorText: showError
                ? LocaleKeys.mustBeBetweenXAndY.tr(args: ['$minAllowed', '365'])
                : null,
          ),
          onChanged: (text) {
            final parsed = int.tryParse(text);
            context.read<AddPropertyCubit>().updatePricing(minStay: parsed);
          },
        );
      },
    );
  }
}

// ---------------- Maximum Stay (optional) ----------------

class _MaxStayField extends StatefulWidget {
  const _MaxStayField();

  @override
  State<_MaxStayField> createState() => _MaxStayFieldState();
}

class _MaxStayFieldState extends State<_MaxStayField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final current = context.read<AddPropertyCubit>().state.formData.maximumStay;
    _controller = TextEditingController(text: current?.toString() ?? '');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPropertyCubit, AddPropertyState>(
      buildWhen: (p, c) =>
          p.formData.maximumStay != c.formData.maximumStay ||
          p.formData.minimumStay != c.formData.minimumStay,
      builder: (context, state) {
        final maxValue = state.formData.maximumStay;
        final minValue = state.formData.minimumStay ?? 0;
        final showError = maxValue != null && maxValue < minValue;
        return TextField(
          controller: _controller,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: 'No limit',
            suffixText: LocaleKeys.nights.tr(),
            errorText: showError
                ? LocaleKeys.mustBeGreaterThanOrEqualMinimumStay.tr()
                : null,
          ),
          onChanged: (text) {
            final parsed = int.tryParse(text);
            context.read<AddPropertyCubit>().updatePricing(maxStay: parsed);
          },
        );
      },
    );
  }
}

// ---------------- Price per Night ----------------

class _PriceField extends StatefulWidget {
  const _PriceField();

  @override
  State<_PriceField> createState() => _PriceFieldState();
}

class _PriceFieldState extends State<_PriceField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final current = context
        .read<AddPropertyCubit>()
        .state
        .formData
        .pricePerNight;
    _controller = TextEditingController(text: current?.toString() ?? '');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPropertyCubit, AddPropertyState>(
      buildWhen: (p, c) => p.formData.pricePerNight != c.formData.pricePerNight,
      builder: (context, state) {
        final value = state.formData.pricePerNight;
        final showError = value != null && value <= 0;
        return TextField(
          controller: _controller,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
          ],
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: 'e.g. 50',
            prefixText: LocaleKeys.currency.tr(),
            errorText: showError ? LocaleKeys.mustBeGreaterThan0.tr() : null,
          ),
          onChanged: (text) {
            final parsed = double.tryParse(text);
            context.read<AddPropertyCubit>().updatePricing(
              pricePerNight: parsed,
            );
          },
        );
      },
    );
  }
}

// ---------------- Documents (PDF, 1-2 ملفات) ----------------

class _DocumentsUploader extends StatelessWidget {
  const _DocumentsUploader();

  static const int _maxDocs = 2;

  Future<void> _pickDocuments(BuildContext context) async {
    final cubit = context.read<AddPropertyCubit>();
    final remaining = _maxDocs - cubit.state.formData.uploadedDocuments.length;
    if (remaining <= 0 || cubit.state.isUploadingDocument) return;

    final List<PlatformFile> result = await FilePicker.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (result.isEmpty) return;

    final paths = result
        .where((f) => f.path != null)
        .map((f) => f.path!)
        .take(remaining)
        .toList();

    for (final path in paths) {
      await cubit.pickAndUploadDocument(File(path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPropertyCubit, AddPropertyState>(
      buildWhen: (p, c) =>
          p.formData.uploadedDocuments != c.formData.uploadedDocuments ||
          p.isUploadingDocument != c.isUploadingDocument,
      builder: (context, state) {
        final docs = state.formData.uploadedDocuments;
        final isFull = docs.length >= _maxDocs;
        final isBusy = state.isUploadingDocument;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!isFull)
              Center(
                child: InkWell(
                  onTap: isBusy ? null : () => _pickDocuments(context),
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
                              width: 36,
                              height: 36,
                              child: CircularProgressIndicator(),
                            )
                          else
                            Icon(
                              Icons.picture_as_pdf_outlined,
                              size: 36,
                              color: Colors.grey.shade700,
                            ),
                          const SizedBox(height: 10),
                          Text(
                            LocaleKeys.tapToUploadPDF.tr(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: FontFamily.alexandria,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            LocaleKeys.ofDocuments.tr(
                              args: ['${docs.length}/$_maxDocs'],
                            ),
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(fontFamily: FontFamily.alexandria),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            if (docs.isNotEmpty) ...[
              const SizedBox(height: 12),
              ...docs.map(
                (doc) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: _DocumentTile(
                    document: doc,
                    onRemove: () => context
                        .read<AddPropertyCubit>()
                        .removeUploadedDocument(doc),
                  ),
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}

class _DocumentTile extends StatelessWidget {
  final UploadedDocumentItem document;
  final VoidCallback onRemove;

  const _DocumentTile({required this.document, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    final fileName = document.url.split('/').last;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Icon(Icons.picture_as_pdf, color: Colors.redAccent),
          const SizedBox(width: 10),
          Expanded(
            child: Text(fileName, overflow: TextOverflow.ellipsis, maxLines: 1),
          ),
          IconButton(
            icon: const Icon(Icons.close, size: 20),
            onPressed: onRemove,
          ),
        ],
      ),
    );
  }
}
