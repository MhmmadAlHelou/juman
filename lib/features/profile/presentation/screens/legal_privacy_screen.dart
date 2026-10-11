import 'package:ewan/features/profile/bloc/legal_privacy/legal_cubit.dart';
import 'package:ewan/features/profile/data/models/legal_content_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:ewan/core/core.dart' hide FontSize;

@RoutePage()
class LegalPrivacyScreen extends StatelessWidget {
  const LegalPrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LegalCubit>()..loadLegalContent(),
      child: const _LegalPrivacyView(),
    );
  }
}

class _LegalPrivacyView extends StatelessWidget {
  const _LegalPrivacyView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Palette.white,
        foregroundColor: Palette.black,
        centerTitle: false,
        title: Text(
          LocaleKeys.legalPrivacy.tr(),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: BlocBuilder<LegalCubit, LegalState>(
        builder: (context, state) {
          if (state.status == LegalStatus.loading) {
            return const _LegalLoading();
          }

          if (state.status == LegalStatus.failure) {
            return _LegalError(
              message: state.errorMessage,
              onRetry: () {
                context.read<LegalCubit>().loadLegalContent();
              },
            );
          }

          final bool hasTerms = state.terms?.content.trim().isNotEmpty ?? false;

          final bool hasPrivacy =
              state.privacy?.content.trim().isNotEmpty ?? false;

          if (!hasTerms && !hasPrivacy) {
            return const _EmptyLegalContent();
          }

          return _LegalContent(terms: state.terms, privacy: state.privacy);
        },
      ),
    );
  }
}

class _LegalLoading extends StatelessWidget {
  const _LegalLoading();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Container(
          height: 130,
          decoration: BoxDecoration(
            color: Palette.white,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        const SizedBox(height: 20),
        ...List.generate(
          5,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Palette.white,
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _LegalError extends StatelessWidget {
  const _LegalError({required this.message, required this.onRetry});

  final String? message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error_outline_rounded,
              size: 48,
              color: Palette.red,
            ),
            const SizedBox(height: 16),
            Text(
              LocaleKeys.unableToLoadPrivacyPolicy.tr(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            Text(
              message ?? LocaleKeys.somethingWentWrong.tr(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 13, color: Palette.fontColor),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: Text(LocaleKeys.retry.tr()),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyLegalContent extends StatelessWidget {
  const _EmptyLegalContent();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 76,
              height: 76,
              decoration: BoxDecoration(
                color: Palette.backgroundColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Palette.black.withValues(alpha: 0.05),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: const Icon(Icons.gavel_rounded, size: 36),
            ),
            const SizedBox(height: 20),
            Text(
              LocaleKeys.legalPrivacy.tr(),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            Text(
              LocaleKeys.privacyPolicyUnavailable.tr(),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Palette.fontColor, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}

class _LegalContent extends StatelessWidget {
  const _LegalContent({required this.terms, required this.privacy});

  final LegalContentModel? terms;
  final LegalContentModel? privacy;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _HeaderCard(),

          const SizedBox(height: 20),

          // Terms & Conditions
          if (terms?.content.trim().isNotEmpty ?? false) ...[
            _LegalSection(
              icon: Icons.description_outlined,
              title: LocaleKeys.termsAndConditions.tr(),
              content: terms!.content,
              updatedAt: terms!.updatedAt,
            ),
            const SizedBox(height: 20),
          ],

          // Privacy Policy
          if (privacy?.content.trim().isNotEmpty ?? false) ...[
            _LegalSection(
              icon: Icons.privacy_tip_outlined,
              title: LocaleKeys.privacyPolicy.tr(),
              content: privacy!.content,
              updatedAt: privacy!.updatedAt,
            ),
          ],
        ],
      ),
    );
  }
}

class _HeaderCard extends StatelessWidget {
  const _HeaderCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Palette.black.withValues(alpha: 0.06)),
        boxShadow: [
          BoxShadow(
            color: Palette.black.withValues(alpha: 0.03),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: Palette.backgroundColor,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: const Icon(Icons.gavel_rounded, size: 25),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Text(
                  LocaleKeys.legalPrivacy.tr(),
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            LocaleKeys.privacyMatters.tr(),
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 7),
          Text(
            LocaleKeys.reviewOurPrivacyPolicy.tr(),
            style: const TextStyle(
              fontSize: 13,
              height: 1.55,
              color: Palette.darkGray,
            ),
          ),
        ],
      ),
    );
  }
}

class _LegalSection extends StatelessWidget {
  const _LegalSection({
    required this.icon,
    required this.title,
    required this.content,
    required this.updatedAt,
  });

  final IconData icon;
  final String title;
  final String content;
  final DateTime updatedAt;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            children: [
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: Palette.white,
                  borderRadius: BorderRadius.circular(11),
                ),
                child: Icon(icon, size: 21),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 12),

        _ContentCard(
          child: Html(
            data: content,
            style: {
              'body': Style(
                margin: Margins.zero,
                padding: HtmlPaddings.zero,
                fontSize: FontSize(14),
                lineHeight: const LineHeight(1.65),
                color: Palette.fontColor,
              ),
              'h1': Style(
                fontSize: FontSize(22),
                fontWeight: FontWeight.w700,
                margin: Margins.only(bottom: 12),
              ),
              'h2': Style(
                fontSize: FontSize(18),
                fontWeight: FontWeight.w700,
                margin: Margins.only(top: 18, bottom: 10),
              ),
              'h3': Style(
                fontSize: FontSize(16),
                fontWeight: FontWeight.w700,
                margin: Margins.only(top: 14, bottom: 8),
              ),
              'p': Style(margin: Margins.only(bottom: 10)),
              'li': Style(margin: Margins.only(bottom: 6)),
            },
          ),
        ),

        const SizedBox(height: 12),

        _LastUpdatedCard(updatedAt: updatedAt),
      ],
    );
  }
}

class _ContentCard extends StatelessWidget {
  const _ContentCard({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Palette.black.withValues(alpha: 0.06)),
      ),
      child: child,
    );
  }
}

class _LastUpdatedCard extends StatelessWidget {
  const _LastUpdatedCard({required this.updatedAt});

  final DateTime updatedAt;

  @override
  Widget build(BuildContext context) {
    final String date =
        '${updatedAt.day.toString().padLeft(2, '0')}/'
        '${updatedAt.month.toString().padLeft(2, '0')}/'
        '${updatedAt.year}';

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Palette.backgroundColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          const Icon(Icons.update_rounded, size: 19),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              '${LocaleKeys.lastUpdated.tr()} $date',
              style: const TextStyle(
                fontSize: 12.5,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
