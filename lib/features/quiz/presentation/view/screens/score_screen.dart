import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_minds/core/router/app_router.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  late int score;

  @override
  void initState() {
    super.initState();
    GoRouter.of(context).state.extra != null
        ? score = GoRouter.of(context).state.extra as int
        : score = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Quiz Score',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                if (score < 50)
                  BadScoreBody(score: score)
                else
                  CongratolationsScoreBody(score: score),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                  ),
                  onPressed: () {
                    GoRouter.of(
                      context,
                    ).pushReplacement(AppRouter.kNavigationBar);
                  },
                  child: const Text(
                    'Finish Quiz',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CongratolationsScoreBody extends StatelessWidget {
  const CongratolationsScoreBody({super.key, required this.score});
  final int score;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            LottieBuilder.network(
              'https://lottie.host/93feaa08-3378-4f4c-89fc-822ae70db182/deKYiVtgdo.json',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.fill,
            ),
            LottieBuilder.network(
              'https://lottie.host/7ae438c3-6d08-43cf-abbc-ee801ff88e84/ylS1BTSiiN.json',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.fill,
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          'Congratulations, Quiz Completed!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          'Your Score: $score',
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${((score / 10) / 10 * 100).toStringAsFixed(0)} %',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ' answered correctly.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Thank you for participating in the quiz. We hope you enjoyed it!',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}

class BadScoreBody extends StatelessWidget {
  const BadScoreBody({super.key, required this.score});
  final int score;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            LottieBuilder.network(
              'https://lottie.host/8dbf9cd4-901f-410e-a941-ada901ece908/TuHYyKsDfC.json',
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.2,
              fit: BoxFit.fill,
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          'Quiz Completed!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          'Your Score: $score',
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${((score / 10) / 10 * 100).toStringAsFixed(0)} %',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ' answered correctly.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'We appreciate your effort in completing the quiz. Keep practicing to improve your score!',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
