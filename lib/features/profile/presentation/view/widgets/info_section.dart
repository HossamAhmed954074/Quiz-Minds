import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 60,
          backgroundColor: Colors.grey[300],
          child: Icon(Icons.face, size: 60, color: Colors.white),
        ),
        SizedBox(height: 10),
        Text(
          "Flutter Pro",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Text(
          "Flutter@pro.com",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
