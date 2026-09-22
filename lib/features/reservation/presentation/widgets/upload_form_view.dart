import 'dart:io';

import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/bloc/upload_receipt_cubit.dart';
import 'package:flutter/material.dart';

class UploadFormView extends StatelessWidget {
  const UploadFormView({super.key, required this.state});
  final UploadReceiptState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UploadReceiptCubit>();
    final busy =
        state.status == UploadReceiptStatus.uploading ||
        state.status == UploadReceiptStatus.submitting;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.uploadPaymentReceipt.tr(),
            style: const TextStyle(
              fontFamily: FontFamily.alexandria,
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Palette.primary,
            ),
          ),
          const SizedBox(height: 16),
          _RequestStatusBanner(remaining: state.remaining),
          const SizedBox(height: 8),
          Text(
            LocaleKeys.uploadReceiptHint.tr(),
            style: TextStyle(color: Palette.fontColor.withValues(alpha: 0.8)),
          ),
          const SizedBox(height: 24),
          Text(
            LocaleKeys.uploadProofOfTransfer.tr(),
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Text(
            LocaleKeys.acceptedFiles.tr(),
            style: TextStyle(
              color: Palette.fontColor.withValues(alpha: 0.8),
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: _DropZone(
              selectedFile: state.selectedFile,
              onTap: () async {
                final result = await FilePicker.pickFiles(
                  type: FileType.custom,
                  allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png'],
                );
                if (result.single.path == null) return;
                cubit.pickFile(File(result.single.path!));
              },
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: busy ? null : () => Navigator.pop(context),
                  child: Text(LocaleKeys.cancel.tr()),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: state.canUpload ? cubit.uploadAndSubmit : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Palette.primary,
                    foregroundColor: Palette.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: busy
                      ? const SizedBox(
                          height: 18,
                          width: 18,
                          child: CircularProgressIndicator(
                            color: Palette.white,
                            strokeWidth: 2,
                          ),
                        )
                      : Text(LocaleKeys.uploadNow.tr()),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _RequestStatusBanner extends StatelessWidget {
  const _RequestStatusBanner({required this.remaining});
  final Duration? remaining;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Palette.primary.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            LocaleKeys.requestSubmitted.tr(),
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Text(
            remaining != null ? _format(remaining!) : '--:--:--',
            style: const TextStyle(
              color: Palette.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  String _format(Duration d) {
    String two(int n) => n.toString().padLeft(2, '0');
    return '${two(d.inHours)}:${two(d.inMinutes % 60)}:${two(d.inSeconds % 60)}';
  }
}

class _DropZone extends StatelessWidget {
  const _DropZone({required this.selectedFile, required this.onTap});
  final File? selectedFile;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          child: Column(
            children: [
              const Icon(
                Icons.cloud_upload_outlined,
                size: 40,
                color: Palette.primary,
              ),
              const SizedBox(height: 8),
              Text(
                selectedFile != null
                    ? selectedFile!.path.split('/').last
                    : LocaleKeys.tapToBrowseReceipt.tr(),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Palette.semiGray),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
