import 'dart:io';

import 'package:ewan/core/core.dart';
import 'package:ewan/features/auth/presentation/widgets/label_auth_text_widget.dart';
import 'package:ewan/features/profile/bloc/profile_cubit.dart';
import 'package:ewan/features/profile/data/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class PersonalInformationScreen extends StatelessWidget {
  const PersonalInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileCubit>.value(
      value: getIt<ProfileCubit>(),
      child: const PersonalInformationView(),
    );
  }
}

class PersonalInformationView extends StatefulWidget {
  const PersonalInformationView({super.key});

  @override
  State<PersonalInformationView> createState() =>
      _PersonalInformationViewState();
}

class _PersonalInformationViewState extends State<PersonalInformationView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final ProfileCubit _cubit;
  late final TextEditingController _firstNameController;
  late final TextEditingController _lastNameController;
  late final TextEditingController _phoneController;

  bool _isEditing = false;
  File? _pickedImage;

  @override
  void initState() {
    super.initState();
    _cubit = context.read<ProfileCubit>();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _phoneController = TextEditingController();
    _cubit.loadProfile(silent: _cubit.state.profile != null);
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _startEditing() {
    final ProfileModel? p = _cubit.state.profile;
    if (p == null) return;
    _firstNameController.text = p.firstName;
    _lastNameController.text = p.lastName;
    _phoneController.text = p.phoneNumber ?? '';
    setState(() => _isEditing = true);
  }

  void _cancelEditing() {
    setState(() {
      _isEditing = false;
      _pickedImage = null;
    });
  }

  Future<void> _pickImage() async {
    final XFile? picked = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1024,
      imageQuality: 85,
    );
    if (picked == null || !mounted) return;
    if (!_isEditing) _startEditing();
    setState(() => _pickedImage = File(picked.path));
  }

  void _save() {
    if (!_formKey.currentState!.validate()) return;
    final ProfileModel p = _cubit.state.profile!;
    final String first = _firstNameController.text.trim();
    final String last = _lastNameController.text.trim();
    final String phone = _phoneController.text.trim();

    final bool changed =
        first != p.firstName ||
        last != p.lastName ||
        phone != (p.phoneNumber ?? '') ||
        _pickedImage != null;
    if (!changed) return _cancelEditing();

    _cubit.updateProfile(
      firstName: first != p.firstName ? first : null,
      lastName: last != p.lastName ? last : null,
      phoneNumber: phone != (p.phoneNumber ?? '') ? phone : null,
      profilePicture: _pickedImage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listenWhen: (ProfileState p, ProfileState c) => p.status != c.status,
      listener: (BuildContext context, ProfileState state) {
        if (state.status == ProfileStatus.saved) {
          _cancelEditing();
          showSnackBar(
            context: context,
            message: LocaleKeys.profileUpdated.tr(),
          );
        } else if (state.status == ProfileStatus.saveFailed ||
            state.status == ProfileStatus.loadFailed) {
          showSnackBar(
            context: context,
            message: state.exception?.displayMessage,
            isError: true,
          );
        }
      },
      builder: (BuildContext context, ProfileState state) {
        final ProfileModel? profile = state.profile;
        final bool isSaving = state.status == ProfileStatus.saving;

        return Scaffold(
          appBar: AppBar(
            leading: _isEditing
                ? TextButton(
                    onPressed: isSaving ? null : _cancelEditing,
                    child: Text(LocaleKeys.cancel.tr()),
                  )
                : const BackButton(),
            leadingWidth: _isEditing ? 90 : null,
            title: Text(
              _isEditing
                  ? LocaleKeys.editProfile.tr()
                  : LocaleKeys.profile.tr(),
            ),
            centerTitle: true,
            actions: <Widget>[
              if (_isEditing)
                isSaving
                    ? const Padding(
                        padding: EdgeInsets.all(16),
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      )
                    : TextButton(
                        onPressed: _save,
                        child: Text(LocaleKeys.done.tr()),
                      )
              else if (profile != null)
                IconButton(
                  onPressed: _startEditing,
                  icon: const Icon(Icons.edit_outlined),
                ),
            ],
          ),
          body: profile == null
              ? Center(
                  child: state.status == ProfileStatus.loadFailed
                      ? TextButton(
                          onPressed: () => _cubit.loadProfile(),
                          child: Text(LocaleKeys.retry.tr()),
                        )
                      : const CircularProgressIndicator(),
                )
              : ListView(
                  padding: const EdgeInsets.all(Dimensions.space16),
                  children: <Widget>[
                    _Avatar(
                      imageUrl: profile.profilePicture,
                      pickedImage: _pickedImage,
                      showCameraBadge: false,
                      // showCameraBadge: _isEditing,
                      onChangePhoto: isSaving ? null : _pickImage,
                    ),
                    const SizedBox(height: Dimensions.space24),
                    Text(
                      LocaleKeys.personalInformation.tr(),
                      style: context.titleSmall!.copyWith(
                        fontFamily: FontFamily.alexandria,
                        fontWeight: FontWeight.bold,
                        color: Palette.fontColor,
                      ),
                    ),
                    const SizedBox(height: Dimensions.space12),
                    if (_isEditing)
                      _editForm(profile, isSaving)
                    else
                      _readOnlyCard(profile),
                    if (!_isEditing) ...<Widget>[
                      const SizedBox(height: Dimensions.space24),
                      FilledButton.icon(
                        onPressed: _startEditing,
                        icon: const Icon(Icons.edit_note),
                        label: Text(LocaleKeys.editProfile.tr()),
                      ),
                    ],
                  ],
                ),
        );
      },
    );
  }

  Widget _readOnlyCard(ProfileModel p) {
    return Card(
      child: Column(
        children: <Widget>[
          _InfoTile(
            label: LocaleKeys.fullName.tr(),
            value: p.fullName,
            icon: Icons.person_outline,
          ),
          const Divider(height: 1),
          _InfoTile(
            label: LocaleKeys.emailAddress.tr(),
            value: p.email,
            icon: Icons.alternate_email,
          ),
          const Divider(height: 1),
          _InfoTile(
            label: LocaleKeys.phoneNumber.tr(),
            value: p.phoneNumber ?? '-',
            icon: Icons.phone_outlined,
          ),
          const Divider(height: 1),
          _InfoTile(
            label: LocaleKeys.password.tr(),
            value: '••••••••••••',
            trailing: TextButton(
              onPressed: () => context.pushRoute(const ChangePasswordRoute()),
              child: Text('${LocaleKeys.change.tr()} >'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _editForm(ProfileModel p, bool isSaving) {
    String? required(String? v) =>
        (v == null || v.trim().isEmpty) ? LocaleKeys.fieldRequired.tr() : null;

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          LabelAuthTextWidget(text: LocaleKeys.firstName.tr()),
          TextFormField(
            controller: _firstNameController,
            enabled: !isSaving,
            textInputAction: TextInputAction.next,
            validator: required,
          ),
          const SizedBox(height: Dimensions.space16),
          LabelAuthTextWidget(text: LocaleKeys.lastName.tr()),
          TextFormField(
            controller: _lastNameController,
            enabled: !isSaving,
            textInputAction: TextInputAction.next,
            validator: required,
          ),
          const SizedBox(height: Dimensions.space16),
          LabelAuthTextWidget(text: LocaleKeys.emailAddress.tr()),
          // Read-only email: Changing it requires OTP verification.
          TextFormField(
            initialValue: p.email,
            readOnly: true,
            enableInteractiveSelection: false,
            showCursor: false,
            onTap: isSaving
                ? null
                : () => context.pushRoute(const ChangeEmailRoute()),
            decoration: InputDecoration(
              suffixIcon: TextButton(
                onPressed: isSaving
                    ? null
                    : () => context.pushRoute(const ChangeEmailRoute()),
                child: Text(LocaleKeys.change.tr()),
              ),
            ),
          ),
          const SizedBox(height: Dimensions.space16),
          LabelAuthTextWidget(text: LocaleKeys.phoneNumber.tr()),
          TextFormField(
            controller: _phoneController,
            enabled: !isSaving,
            keyboardType: TextInputType.phone,
            validator: required,
          ),
        ],
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({
    required this.imageUrl,
    required this.pickedImage,
    required this.showCameraBadge,
    required this.onChangePhoto,
  });

  final String? imageUrl;
  final File? pickedImage;
  final bool showCameraBadge;
  final VoidCallback? onChangePhoto;

  @override
  Widget build(BuildContext context) {
    final ImageProvider? image = pickedImage != null
        ? FileImage(pickedImage!)
        : (imageUrl != null && imageUrl!.isNotEmpty
              ? NetworkImage(imageUrl!)
              : null);

    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CircleAvatar(
              radius: 56,
              backgroundImage: image,
              child: image == null ? const Icon(Icons.person, size: 48) : null,
            ),
            if (showCameraBadge)
              const Positioned(
                right: 0,
                bottom: 0,
                child: CircleAvatar(
                  radius: 16,
                  child: Icon(Icons.camera_alt, size: 16),
                ),
              ),
          ],
        ),
        TextButton(
          onPressed: onChangePhoto,
          child: Text(LocaleKeys.changePhoto.tr()),
        ),
      ],
    );
  }
}

class _InfoTile extends StatelessWidget {
  const _InfoTile({
    required this.label,
    required this.value,
    this.icon,
    this.trailing,
  });

  final String label;
  final String value;
  final IconData? icon;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label, style: context.bodySmall),
      subtitle: Text(value, style: context.titleSmall),
      trailing: trailing ?? (icon != null ? Icon(icon) : null),
    );
  }
}
