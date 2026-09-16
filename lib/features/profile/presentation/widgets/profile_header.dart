import 'package:ewan/core/core.dart';
import 'package:ewan/features/auth/data/models/log_in_model.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.user});

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
          backgroundColor: Palette.gray,
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
