import 'package:flutter/material.dart';
import 'package:quiz_minds/core/utils/text_style.dart';

class ElvatedButtonCustomWidget extends StatelessWidget {
  const ElvatedButtonCustomWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF4F7BFF), // Blue color
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(text, style: AppTextStyles.buttonText),
    );
  }
}