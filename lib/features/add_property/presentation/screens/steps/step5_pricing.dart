import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/bloc/add_property_cubit.dart';
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
            'Set your pricing & stay rules',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 24),

          const Text(
            'Minimum Stay (nights)',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const _MinStayField(),
          const SizedBox(height: 24),

          const Text(
            'Maximum Stay (nights) — optional',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const _MaxStayField(),
          const SizedBox(height: 24),

          const Text(
            'Price per Night',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const _PriceField(),
          const SizedBox(height: 32),

          const Text(
            'Ownership Documents',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            'Upload 1–2 PDF documents proving ownership.',
            style: Theme.of(context).textTheme.bodySmall,
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
      buildWhen: (p, c) => p.formData.minimumStay != c.formData.minimumStay,
      builder: (context, state) {
        final value = state.formData.minimumStay;
        final showError = value != null && (value < 1 || value > 365);
        return TextField(
          controller: _controller,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: 'e.g. 2',
            suffixText: 'nights',
            errorText: showError ? 'Must be between 1 and 365' : null,
          ),
          onChanged: (text) {
            final parsed = int.tryParse(text);
            context.read<AddPropertyCubit>().updateMinStay(parsed ?? 0);
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
            suffixText: 'nights',
            errorText: showError ? 'Must be ≥ minimum stay' : null,
          ),
          onChanged: (text) {
            final parsed = int.tryParse(text);
            context.read<AddPropertyCubit>().updateMaxStay(parsed);
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
            prefixText: '\$ ',
            errorText: showError ? 'Must be greater than 0' : null,
          ),
          onChanged: (text) {
            final parsed = double.tryParse(text);
            context.read<AddPropertyCubit>().updatePrice(parsed ?? 0);
          },
        );
      },
    );
  }
}

// ---------------- Documents (PDF, 1-2 files) ----------------

class _DocumentsUploader extends StatelessWidget {
  const _DocumentsUploader();

  static const int _maxDocs = 2;

  Future<void> _pickDocuments(BuildContext context) async {
    final cubit = context.read<AddPropertyCubit>();
    final remaining = _maxDocs - cubit.state.formData.documentPaths.length;
    if (remaining <= 0) return;

    final result = await FilePicker.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      // allowMultiple: true,
    );

    if (result == null) return;

    final paths = result.files
        .where((f) => f.path != null)
        .map((f) => f.path!)
        .take(remaining)
        .toList();

    cubit.addDocuments(paths);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPropertyCubit, AddPropertyState>(
      buildWhen: (p, c) => p.formData.documentPaths != c.formData.documentPaths,
      builder: (context, state) {
        final docs = state.formData.documentPaths;
        final isFull = docs.length >= _maxDocs;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!isFull)
              Center(
                child: InkWell(
                  onTap: () => _pickDocuments(context),
                  child: DottedBorderBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 32,
                        horizontal: 24,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.picture_as_pdf_outlined,
                            size: 36,
                            color: Colors.grey.shade700,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Tap to upload PDF',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${docs.length}/$_maxDocs documents',
                            style: Theme.of(context).textTheme.bodySmall,
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
                (path) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: _DocumentTile(
                    path: path,
                    onRemove: () =>
                        context.read<AddPropertyCubit>().removeDocument(path),
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
  final String path;
  final VoidCallback onRemove;

  const _DocumentTile({required this.path, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    final fileName = path.split('/').last;
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
