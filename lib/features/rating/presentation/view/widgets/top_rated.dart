import 'package:flutter/material.dart';
import 'package:quiz_minds/features/rating/data/user_data.dart';

class BuildTopRated extends StatelessWidget {
  const BuildTopRated({
    super.key,
    required this.userData,
    required this.avatarPath,
  });
  final UserData userData;
  final String avatarPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(avatarPath),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(height: 2),
          Text(
            userData.userName.length > 7
                ? userData.userName.substring(0, 6)
                : userData.userName,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}