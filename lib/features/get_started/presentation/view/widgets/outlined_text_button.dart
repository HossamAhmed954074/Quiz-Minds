import 'package:flutter/material.dart';
import 'package:quiz_minds/core/utils/text_style.dart';

class OutlinedTextButtonCustomWidget extends StatelessWidget {
  const OutlinedTextButtonCustomWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Color(0xFF4F7BFF)), // Blue border
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(
        text,
        style: AppTextStyles.buttonText.copyWith(
          color: Color(0xFF4F7BFF), // Blue text color
        ),
      ),
    );
  }
}