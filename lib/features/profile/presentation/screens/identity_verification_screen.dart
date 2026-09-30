import 'dart:io';

import 'package:ewan/core/common/widget/document_drop_zone.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/profile/bloc/identity_verification_cubit.dart';
import 'package:ewan/features/profile/data/models/profile_model.dart';
import 'package:ewan/features/profile/data/profile_repository.dart';
import 'package:flutter/material.dart';

@RoutePage()
class IdentityVerificationScreen extends StatelessWidget {
  const IdentityVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => IdentityVerificationCubit(getIt<ProfileRepository>()),
      child: const _IdentityVerificationView(),
    );
  }
}

class _IdentityVerificationView extends StatelessWidget {
  const _IdentityVerificationView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocaleKeys.identityAndDocuments.tr())),
      body: BlocConsumer<IdentityVerificationCubit, IdentityVerificationState>(
        listener: (context, state) {
          if (state.status == IdentityVerificationStatus.error &&
              state.errorMessage != null) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
          }
        },
        builder: (context, state) {
          if (state.status == IdentityVerificationStatus.loading &&
              state.profile == null) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.profile == null) {
            return Center(
              child: TextButton(
                onPressed: () =>
                    context.read<IdentityVerificationCubit>().loadProfile(),
                child: Text(LocaleKeys.retry.tr()),
              ),
            );
          }
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _DocumentCard(
                type: DocumentType.nationalId,
                title: LocaleKeys.nationalIdIqama.tr(),
                icon: Icons.badge_outlined,
                state: state,
              ),
              const SizedBox(height: 12),
              _DocumentCard(
                type: DocumentType.passport,
                title: LocaleKeys.passport.tr(),
                icon: Icons.flight_takeoff,
                state: state,
              ),
              const SizedBox(height: 12),
              _DocumentCard(
                type: DocumentType.familyBook,
                title: LocaleKeys.familyRegister.tr(),
                icon: Icons.groups_outlined,
                state: state,
              ),
            ],
          );
        },
      ),
    );
  }
}

class _DocumentCard extends StatelessWidget {
  const _DocumentCard({
    required this.type,
    required this.title,
    required this.icon,
    required this.state,
  });

  final DocumentType type;
  final String title;
  final IconData icon;
  final IdentityVerificationState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<IdentityVerificationCubit>();
    final docStatus = state.displayStatusFor(type);
    final uploading = state.isUploading(type);
    final isVerified = docStatus == DocumentVerificationStatus.verified;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Palette.backgroundColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: docStatus == DocumentVerificationStatus.rejected
              ? Colors.red.withValues(alpha: 0.4)
              : Colors.transparent,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon, color: Palette.primary),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              _StatusBadge(status: docStatus),
            ],
          ),
          const SizedBox(height: 12),
          if (isVerified)
            Text(
              LocaleKeys.documentVerified.tr(),
              style: const TextStyle(color: Palette.darkGray),
            )
          else
            DocumentDropZone(
              selectedFile: null,
              hint: uploading
                  ? LocaleKeys.uploading.tr()
                  : LocaleKeys.tapToUploadDocument.tr(),
              onTap: uploading
                  ? () {}
                  : () async {
                      final result = await FilePicker.pickFiles(
                        type: FileType.custom,
                        allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png'],
                      );
                      final path = result.single.path;
                      if (path == null) return;
                      cubit.uploadDocument(type, File(path));
                    },
            ),
        ],
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.status});
  final DocumentVerificationStatus status;

  @override
  Widget build(BuildContext context) {
    final (label, color) = switch (status) {
      DocumentVerificationStatus.verified => (
        LocaleKeys.verified.tr(),
        Colors.green,
      ),
      DocumentVerificationStatus.underReview => (
        LocaleKeys.underReview.tr(),
        Colors.orange,
      ),
      DocumentVerificationStatus.rejected => (
        LocaleKeys.rejected.tr(),
        Colors.red,
      ),
      DocumentVerificationStatus.pending ||
      DocumentVerificationStatus.unknown => (
        LocaleKeys.required.tr(),
        Palette.darkGray,
      ),
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
