import 'package:ewan/features/auth/auth.dart';
import 'package:ewan/features/profile/bloc/profile_cubit.dart';
import 'package:ewan/features/profile/presentation/widgets/profile_header.dart';
import 'package:ewan/features/profile/presentation/widgets/section_title.dart';
import 'package:ewan/features/profile/presentation/widgets/settings_section.dart';
import 'package:flutter/material.dart';
import 'package:ewan/core/core.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  UserData? _user;

  @override
  void initState() {
    super.initState();
    _loadUser();
    GlobalNotifiers.profileNotifier.addListener(_loadUser);
  }

  @override
  void dispose() {
    GlobalNotifiers.profileNotifier.removeListener(_loadUser);
    super.dispose();
  }

  void _loadUser() {
    final UserData? user = UserLocalDataSource().getUser();
    if (mounted) setState(() => _user = user);
  }

  Future<void> _logout() async {
    final bool? confirm = await showDialog<bool>(
      context: context,
      builder: (BuildContext ctx) => AlertDialog(
        // title: Text(LocaleKeys.logout.tr()),
        content: Text(LocaleKeys.logoutMessage.tr()),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(LocaleKeys.cancel.tr()),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(
              LocaleKeys.logout.tr(),
              style: TextStyle(color: Palette.red),
            ),
          ),
        ],
      ),
    );

    if (confirm != true) return;

    await UserLocalDataSource().deleteUser();
    PrefData.isSignedIn = false;
    PrefData.token = null;
    PrefData.refreshToken = null;

    if (!mounted) return;
    context.router.replaceAll(<PageRouteInfo<dynamic>>[LoginRoute()]);
  }

  Future<void> _changeLanguage() async {
    final String? selected = await showModalBottomSheet<String>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (BuildContext ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: const Text('العربية'),
              trailing: context.locale.languageCode == 'ar'
                  ? const Icon(Icons.check)
                  : null,
              onTap: () => Navigator.pop(ctx, 'ar'),
            ),
            ListTile(
              title: const Text('English'),
              trailing: context.locale.languageCode == 'en'
                  ? const Icon(Icons.check)
                  : null,
              onTap: () => Navigator.pop(ctx, 'en'),
            ),
          ],
        ),
      ),
    );

    if (!mounted) return;
    if (selected == null) return;
    await context.setLocale(Locale(selected));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      bloc: getIt<ProfileCubit>(),
      listenWhen: (p, c) =>
          c.status == ProfileStatus.saved || c.status == ProfileStatus.loaded,
      listener: (_, _) => _loadUser(),
      child: Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            children: <Widget>[
              ProfileHeader(user: _user),
              const SizedBox(height: 32),
              if (_user != null) SectionTitle(LocaleKeys.accountSettings.tr()),
              const SizedBox(height: 8),
              if (_user != null)
                SettingsCard(
                  children: <Widget>[
                    SettingsTile(
                      icon: Icons.person_outline,
                      title: LocaleKeys.personalInformation.tr(),
                      onTap: () {
                        context.pushRoute(const PersonalInformationRoute());
                      },
                    ),
                    SettingsTile(
                      icon: Icons.document_scanner_outlined,
                      // icon: Icons.perm_identity,
                      title: LocaleKeys.identityAndDocuments.tr(),
                      onTap: () {
                        context.router.push(const IdentityVerificationRoute());
                      },
                    ),
                  ],
                ),
              const SizedBox(height: 24),
              if (_user != null) SectionTitle(LocaleKeys.hosting.tr()),
              const SizedBox(height: 8),
              if (_user != null)
                SettingsCard(
                  highlighted: true,
                  children: <Widget>[
                    SettingsTile(
                      icon: Icons.home_work_outlined,
                      title: LocaleKeys.myProperties.tr(),
                      onTap: () {
                        context.router.push(const MyPropertiesRoute());
                      },
                    ),
                    SettingsTile(
                      icon: Icons.add_home_outlined,
                      title: LocaleKeys.addProperty.tr(),
                      onTap: () {
                        context.router.push(AddPropertyPage());
                      },
                    ),
                    SettingsTile(
                      icon: Icons.assignment_outlined,
                      title: LocaleKeys.hostReservations.tr(),
                      onTap: () {
                        context.router.push(const HostReservationsRoute());
                      },
                    ),
                  ],
                ),
              const SizedBox(height: 24),
              SectionTitle(LocaleKeys.supportSettings.tr()),
              const SizedBox(height: 8),
              SettingsCard(
                children: <Widget>[
                  if (_user != null)
                    SettingsTile(
                      icon: Icons.notifications_none,
                      title: LocaleKeys.notifications.tr(),
                      onTap: () {
                        context.router.push(const NotificationsRoute());
                      },
                    ),
                  SettingsTile(
                    icon: Icons.language,
                    title: LocaleKeys.language.tr(),
                    trailingText: context.locale.languageCode == 'ar'
                        ? 'العربية'
                        : 'English',
                    onTap: _changeLanguage,
                  ),
                  SettingsTile(
                    icon: Icons.help_outline,
                    title: LocaleKeys.legalPrivacy.tr(),
                    onTap: () {
                      context.router.push(const LegalPrivacyRoute());
                    },
                  ),
                  if (_user != null)
                    SettingsTile(
                      icon: Icons.headphones_outlined,
                      title: LocaleKeys.contactSupport.tr(),
                      onTap: () {
                        context.router.push(const ContactSupportRoute());
                      },
                    ),
                  if (_user != null)
                    SettingsTile(
                      icon: Icons.logout,
                      title: LocaleKeys.logout.tr(),
                      titleColor: Colors.red,
                      iconColor: Colors.red,
                      showChevron: false,
                      onTap: _logout,
                    ),
                  if (_user != null)
                    SettingsTile(
                      icon: Icons.delete_outline,
                      title: LocaleKeys.deleteAccount.tr(),
                      titleColor: Colors.red,
                      iconColor: Colors.red,
                      showChevron: false,
                      onTap: () {
                        //TODO:::::::::::::::
                      },
                    ),
                  if (_user == null)
                    SettingsTile(
                      icon: Icons.login,
                      title: LocaleKeys.login.tr(),
                      titleColor: Colors.green,
                      iconColor: Colors.green,
                      showChevron: false,
                      onTap: () {
                        context.router.replaceAll(<PageRouteInfo<dynamic>>[
                          LoginRoute(),
                        ]);
                      },
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
