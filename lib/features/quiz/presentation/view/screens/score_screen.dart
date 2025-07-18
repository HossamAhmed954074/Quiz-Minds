import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_minds/core/router/app_router.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRouter.kNavigationBar);
          },
        ),
        title: const Text('Quiz Score'),
      ),
      body: Center(
        child: Text(
          'Your score is 100%',
          // style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
