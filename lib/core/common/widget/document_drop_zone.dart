import 'dart:io';

import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';

class DocumentDropZone extends StatelessWidget {
  const DocumentDropZone({
    super.key,
    required this.selectedFile,
    required this.onTap,
    this.hint,
  });

  final File? selectedFile;
  final VoidCallback onTap;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Palette.primary.withValues(alpha: 0.4)),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Icon(
              selectedFile != null
                  ? Icons.check_circle
                  : Icons.cloud_upload_outlined,
              size: 40,
              color: Palette.primary,
            ),
            const SizedBox(height: 8),
            Text(
              selectedFile != null
                  ? selectedFile!.path.split('/').last
                  : (hint ?? LocaleKeys.tapToUploadDocument.tr()),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Palette.darkGray),
            ),
          ],
        ),
      ),
    );
  }
}
