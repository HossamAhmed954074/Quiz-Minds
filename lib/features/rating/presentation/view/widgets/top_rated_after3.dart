import 'package:flutter/material.dart';
import 'package:quiz_minds/features/rating/data/user_data.dart';

class BuildAfter3TopRating extends StatelessWidget {
  const BuildAfter3TopRating({
    super.key,
    required this.index,
    required this.userData,
    required this.avatarPasth,
  });
  final int index;
  final UserData userData;
  final String avatarPasth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.redAccent.shade100,
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Text(
              '$index - ',
              style: TextStyle(fontSize: 15, color: Colors.grey[700]),
            ),
            const SizedBox(width: 5),
            CircleAvatar(backgroundImage: AssetImage(avatarPasth), backgroundColor: Colors.transparent, radius: 30),
            const SizedBox(width: 10),
            Text(
              userData.userName,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 1),
            const Spacer(),
            Text(
              userData.score.toString(),
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
