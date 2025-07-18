import 'package:flutter/material.dart';

class LoadingIndecatorCustomWidget extends StatelessWidget {
  const LoadingIndecatorCustomWidget({
    super.key,
    required this.currentIndex,
    required this.totalQuestions,
  });

  final int currentIndex;
  final int totalQuestions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: LinearProgressIndicator(
              value: currentIndex / totalQuestions,
              valueColor: const AlwaysStoppedAnimation<Color>(
                Colors.blueAccent,
              ),
              backgroundColor: Colors.grey.shade300,
              minHeight: 5,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            ' $currentIndex / $totalQuestions',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}