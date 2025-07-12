import 'package:flutter/material.dart';
import 'package:quiz_minds/core/utils/text_style.dart';

class HeaderOfCategoryScreen extends StatelessWidget {
  const HeaderOfCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blueAccent[100],
      ),

      width: double.infinity,
      height: 50,
      child: Text(
        'Quiz Categories',
        style: AppTextStyles.subheading.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}