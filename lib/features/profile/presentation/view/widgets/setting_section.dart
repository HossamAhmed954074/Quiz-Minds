import 'package:flutter/material.dart';
import 'package:quiz_minds/features/profile/presentation/view/widgets/build_setting_opthion.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Settings",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        Divider(color: Colors.black),
        SizedBox(height: 10),
        BuildSettingsOption(
          onPressed: () {},
          icon: Icons.edit,
          text: "Update username",
        ),
        BuildSettingsOption(
          onPressed: () {},
          icon: Icons.lock,
          text: "Change password",
        ),
        BuildSettingsOption(
          onPressed: () {},
          icon: Icons.delete,
          text: "Delete my account",
        ),
        BuildSettingsOption(
          onPressed: () {},
          icon: Icons.info,
          text: "About this app",
        ),
        BuildSettingsOption(
          onPressed: () {},
          icon: Icons.logout,
          text: "Logout",
          iconColor: Colors.red,
        ),
      ],
    );
  }
}