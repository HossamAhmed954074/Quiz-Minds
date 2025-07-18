import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_minds/core/router/app_router.dart';

class QuizScreenHeaderCustom extends StatelessWidget {
  const QuizScreenHeaderCustom({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.blueAccent[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () =>
                GoRouter.of(context).pushReplacement(AppRouter.kNavigationBar),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10),
            ),
            child: const Text(
              'Exit',
              style: TextStyle(color: Colors.redAccent),
            ),
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
