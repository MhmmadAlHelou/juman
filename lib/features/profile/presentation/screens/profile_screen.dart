import 'package:ewan/features/auth/auth.dart';
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
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          children: <Widget>[
            _ProfileHeader(user: _user),
            const SizedBox(height: 32),
            const _SectionTitle('Account Settings'),
            const SizedBox(height: 8),
            _SettingsCard(
              children: <Widget>[
                _SettingsTile(
                  icon: Icons.person_outline,
                  title: 'Personal information',
                  onTap: () {
                    // TODO: context.router.push(const PersonalInformationRoute());
                  },
                ),
              ],
            ),
            const SizedBox(height: 24),
            const _SectionTitle('Hosting'),
            const SizedBox(height: 8),
            _SettingsCard(
              highlighted: true,
              children: <Widget>[
                _SettingsTile(
                  icon: Icons.home_work_outlined,
                  title: 'My Properties',
                  onTap: () {
                    // TODO: context.router.push(const MyPropertiesRoute());
                  },
                ),
                _SettingsTile(
                  icon: Icons.add_home_outlined,
                  title: 'Add Property',
                  onTap: () {
                    context.router.push(AddPropertyPage());
                  },
                ),
                _SettingsTile(
                  icon: Icons.assignment_outlined,
                  title: 'Host Reservations',
                  onTap: () {
                    // TODO: context.router.push(const HostReservationsRoute());
                  },
                ),
              ],
            ),
            const SizedBox(height: 24),
            const _SectionTitle('Support & Settings'),
            const SizedBox(height: 8),
            _SettingsCard(
              children: <Widget>[
                _SettingsTile(
                  icon: Icons.notifications_none,
                  title: 'Notifications',
                  onTap: () {},
                ),
                _SettingsTile(
                  icon: Icons.language,
                  title: 'Language',
                  trailingText: context.locale.languageCode == 'ar'
                      ? 'العربية'
                      : 'English',
                  onTap: _changeLanguage,
                ),
                _SettingsTile(
                  icon: Icons.help_outline,
                  title: 'Help Center',
                  onTap: () {},
                ),
                _SettingsTile(
                  icon: Icons.logout,
                  title: LocaleKeys.logout.tr(),
                  titleColor: Colors.red,
                  iconColor: Colors.red,
                  showChevron: false,
                  onTap: _logout,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({required this.user});

  final UserData? user;

  @override
  Widget build(BuildContext context) {
    final String name = (user?.fullName?.trim().isNotEmpty ?? false)
        ? user!.fullName!
        : '${user?.firstName ?? ''} ${user?.lastName ?? ''}'.trim();

    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 48,
          backgroundColor: Palette.backgroundColor,
          backgroundImage: (user?.image != null && user!.image!.isNotEmpty)
              ? NetworkImage(user!.image!)
              : null,
          child: (user?.image == null || user!.image!.isEmpty)
              ? const Icon(Icons.person, size: 48, color: Palette.fontColor)
              : null,
        ),
        const SizedBox(height: 12),
        Text(
          name.isEmpty ? '-' : name,
          style: const TextStyle(
            fontFamily: FontFamily.alexandria,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Palette.primary,
          ),
        ),
      ],
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: FontFamily.alexandria,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Palette.fontColor,
        ),
      ),
    );
  }
}

class _SettingsCard extends StatelessWidget {
  const _SettingsCard({required this.children, this.highlighted = false});

  final List<Widget> children;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: highlighted
            ? Palette.primary.withValues(alpha: 0.06)
            : Palette.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Palette.fontColor.withValues(alpha: 0.08)),
      ),
      child: Column(
        children: <Widget>[
          for (int i = 0; i < children.length; i++) ...<Widget>[
            children[i],
            if (i != children.length - 1)
              Divider(
                height: 1,
                color: Palette.fontColor.withValues(alpha: 0.06),
              ),
          ],
        ],
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.onTap,
    this.trailingText,
    this.titleColor,
    this.iconColor,
    this.showChevron = true,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final String? trailingText;
  final Color? titleColor;
  final Color? iconColor;
  final bool showChevron;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: iconColor ?? Palette.fontColor),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: FontFamily.alexandria,
          fontSize: 15,
          color: titleColor ?? Palette.fontColor,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          if (trailingText != null)
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                trailingText!,
                style: TextStyle(
                  fontFamily: FontFamily.alexandria,
                  fontSize: 14,
                  color: Palette.fontColor.withValues(alpha: 0.6),
                ),
              ),
            ),
          if (showChevron) const Icon(Icons.chevron_right, size: 20),
        ],
      ),
      onTap: onTap,
    );
  }
}
