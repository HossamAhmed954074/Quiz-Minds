import 'package:flutter/material.dart';

class IntroComponent extends StatelessWidget {
  const IntroComponent({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Image.asset(imagePath, height: 600)],
    );
  }
}