import 'package:ewan/core/core.dart';
import 'package:ewan/features/contact_support/bloc/contact_support_cubit.dart';
import 'package:ewan/features/contact_support/data/contact_option_model.dart';
import 'package:ewan/features/contact_support/presentation/helpers/contact_launcher.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ContactSupportScreen extends StatelessWidget {
  const ContactSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ContactSupportCubit>()..load(),
      child: const _ContactSupportView(),
    );
  }
}

class _ContactSupportView extends StatelessWidget {
  const _ContactSupportView();

  Future<void> _onCall(BuildContext context, ContactOptionModel option) async {
    final ok = await ContactLauncher.open(option.url);
    if (!ok && context.mounted) _showSnack(context);
  }

  Future<void> _onWhatsApp(
    BuildContext context,
    ContactOptionModel option,
  ) async {
    var ok = await ContactLauncher.open(option.url);
    if (!ok && option.webUrl != null) {
      ok = await ContactLauncher.open(option.webUrl!);
    }
    if (ok || !context.mounted) return;

    final fallback = option.fallback;
    if (fallback == null) {
      _showSnack(context);
      return;
    }
    await showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        content: Text(fallback.message),
        actions: [
          for (final action in fallback.actions)
            TextButton(
              onPressed: () async {
                Navigator.of(dialogContext).pop();
                if (action.type == 'call' && action.url != null) {
                  await ContactLauncher.open(action.url!);
                }
              },
              child: Text(action.label),
            ),
        ],
      ),
    );
  }

  void _showSnack(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(LocaleKeys.somethingWentWrong.tr())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => context.router.maybePop()),
      ),
      body: BlocBuilder<ContactSupportCubit, ContactSupportState>(
        builder: (context, state) {
          switch (state.status) {
            case ContactSupportStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case ContactSupportStatus.failure:
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      state.errorMessage ?? LocaleKeys.somethingWentWrong.tr(),
                    ),
                    const SizedBox(height: 12),
                    TextButton(
                      onPressed: () =>
                          context.read<ContactSupportCubit>().load(),
                      child: Text(LocaleKeys.retry.tr()),
                    ),
                  ],
                ),
              );
            case ContactSupportStatus.success:
              final phone = state.optionOf('phone');
              final whatsapp = state.optionOf('whatsapp');
              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  const _Header(),
                  const SizedBox(height: 24),
                  _ContactCard(
                    icon: Icons.phone_outlined,
                    title: LocaleKeys.callUs.tr(),
                    subtitle: LocaleKeys.callUsSubtitle.tr(),
                    buttonLabel: LocaleKeys.callNow.tr(),
                    buttonIcon: Icons.phone_outlined,
                    buttonColor: Palette.primary,
                    cardColor: Colors.white,
                    warning: phone == null
                        ? LocaleKeys.supportLineNotConfigured.tr()
                        : null,
                    onPressed: phone == null
                        ? null
                        : () => _onCall(context, phone),
                  ),
                  if (whatsapp != null) ...[
                    const SizedBox(height: 16),
                    _ContactCard(
                      icon: Icons.chat,
                      title: LocaleKeys.whatsapp.tr(),
                      subtitle: LocaleKeys.whatsappSubtitle.tr(),
                      buttonLabel: LocaleKeys.chatOnWhatsapp.tr(),
                      buttonIcon: Icons.chat_bubble_outline,
                      buttonColor: Colors.green,
                      cardColor: Colors.green.withValues(alpha: 0.06),
                      onPressed: () => _onWhatsApp(context, whatsapp),
                    ),
                  ],
                  const SizedBox(height: 24),
                  // const _WorkingHours(),
                ],
              );
          }
        },
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: Palette.primary.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(Icons.chat_bubble_outline, color: Palette.primary),
        ),
        const SizedBox(height: 16),
        Text(
          LocaleKeys.hereToHelp.tr(),
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w700,
            color: Palette.primary,
          ),
        ),
        const SizedBox(height: 8),
        Text(LocaleKeys.contactChooseWay.tr(), textAlign: TextAlign.center),
      ],
    );
  }
}

class _ContactCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String buttonLabel;
  final IconData buttonIcon;
  final Color buttonColor;
  final Color cardColor;
  final String? warning;
  final VoidCallback? onPressed;

  const _ContactCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.buttonLabel,
    required this.buttonIcon,
    required this.buttonColor,
    required this.cardColor,
    required this.onPressed,
    this.warning,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Palette.black),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: Palette.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Palette.black),
                ),
                child: Icon(icon),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(subtitle),
                  ],
                ),
              ),
            ],
          ),
          if (warning != null) ...[
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF8E1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Icon(Icons.circle, size: 8, color: Colors.orange),
                  const SizedBox(width: 8),
                  Expanded(child: Text(warning!)),
                ],
              ),
            ),
          ],
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton.icon(
              onPressed: onPressed,
              icon: Icon(buttonIcon, size: 18),
              label: Text(buttonLabel),
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                foregroundColor: Palette.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class _WorkingHours extends StatelessWidget {
//   const _WorkingHours();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Palette.black.withValues(alpha: 0.03),
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Column(
//         children: [
//           Text(
//             LocaleKeys.workingHours.tr().toUpperCase(),
//             style: const TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w600,
//               letterSpacing: 1,
//             ),
//           ),
//           const SizedBox(height: 6),
//           Text(LocaleKeys.workingHoursValue.tr(), textAlign: TextAlign.center),
//         ],
//       ),
//     );
//   }
// }
