import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_minds/core/router/app_router.dart';

import 'package:quiz_minds/features/home/data/category_model.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  CategoryModel? categoryModel;

  bool isSubmitting = false;
  int currentIndex = 0;
  int totalQuestions = 20;
  bool isEndQuiz = false;

  // Example total questions, adjust as needed

  @override
  void initState() {
    super.initState();

    categoryModel = GoRouter.of(context).state.extra as CategoryModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header for Quiz Screen
            QuizScreenHeaderCustom(title: categoryModel?.categoryName ?? ''),

            // loading indicator or content
            LoadingIndecatorCustomWidget(
              currentIndex: currentIndex,
              totalQuestions: totalQuestions,
            ),

            const SizedBox(height: 20),
            // quiz content
            Expanded(child: QuitionContentCustomWidjet()),
            SizedBox(height: 20),
            isEndQuiz
                ? ElevatedButton(
                    onPressed: () {},
                    child: Text('End Quiz', style: TextStyle(fontSize: 18)),
                  )
                : ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isSubmitting = true;

                        if (currentIndex >= totalQuestions) {
                          isEndQuiz = true;
                        }
                      });
                      // Handle next question logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    ),
                    child: Text(
                      'Submit Answer',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
            SizedBox(height: 40),
          ],
        ),
      ),
      floatingActionButton: isSubmitting && !isEndQuiz
          ? FloatingActionButton(
              onPressed: () {
                setState(() {
                  isSubmitting = false;
                  currentIndex++;
                  if (currentIndex >= totalQuestions) {
                    isEndQuiz = true;
                  }
                });
              },
              backgroundColor: Colors.green.shade100,
              child: Icon(Icons.skip_next_outlined),
            )
          : SizedBox.shrink(),
    );
  }
}

class QuitionContentCustomWidjet extends StatefulWidget {
  const QuitionContentCustomWidjet({super.key});

  @override
  State<QuitionContentCustomWidjet> createState() =>
      _QuitionContentCustomWidjetState();
}

class _QuitionContentCustomWidjetState
    extends State<QuitionContentCustomWidjet> {
  bool isClicked = false;

  bool isOption1Clicked = false;
  bool isOption2Clicked = false;
  bool isOption3Clicked = false;
  bool isOption4Clicked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Question goes here',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Expanded(
          child: ListView(
            children: [
              OptionButounCustomWidget(
                onTap: () {
                  setState(() {
                    if (isOption2Clicked ||
                        isOption3Clicked ||
                        isOption4Clicked) {
                      isOption2Clicked = false;
                      isOption3Clicked = false;
                      isOption4Clicked = false;
                    }
                    isOption1Clicked = !isOption1Clicked;
                  });
                },
                isClicked: isOption1Clicked,
              ),
              OptionButounCustomWidget(
                onTap: () {
                  setState(() {
                    if (isOption1Clicked ||
                        isOption3Clicked ||
                        isOption4Clicked) {
                      isOption1Clicked = false;
                      isOption3Clicked = false;
                      isOption4Clicked = false;
                    }
                    isOption2Clicked = !isOption2Clicked;
                  });
                },
                isClicked: isOption2Clicked,
              ),
              OptionButounCustomWidget(
                onTap: () {
                  setState(() {
                    if (isOption1Clicked ||
                        isOption2Clicked ||
                        isOption4Clicked) {
                      isOption1Clicked = false;
                      isOption2Clicked = false;
                      isOption4Clicked = false;
                    }
                    isOption3Clicked = !isOption3Clicked;
                  });
                },
                isClicked: isOption3Clicked,
              ),
              OptionButounCustomWidget(
                onTap: () {
                  setState(() {
                    if (isOption1Clicked ||
                        isOption2Clicked ||
                        isOption3Clicked) {
                      isOption1Clicked = false;
                      isOption2Clicked = false;
                      isOption3Clicked = false;
                    }
                    isOption4Clicked = !isOption4Clicked;
                  });
                },
                isClicked: isOption4Clicked,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OptionButounCustomWidget extends StatelessWidget {
  const OptionButounCustomWidget({
    super.key,
    required this.onTap,
    required this.isClicked,
  });
  final bool isClicked;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blueAccent, width: 2),
        color: isClicked ? Colors.blueAccent.shade100 : Colors.white,
      ),
      child: ListTile(
        title: Text(
          'Option ',
          style: TextStyle(fontSize: 18, color: Colors.black87),
          textAlign: TextAlign.center,
        ),
        onTap: onTap,
      ),
    );
  }
}

class LoadingIndecatorCustomWidget extends StatefulWidget {
  const LoadingIndecatorCustomWidget({
    super.key,
    required this.currentIndex,
    required this.totalQuestions,
  });

  final int currentIndex;
  final int totalQuestions;

  @override
  State<LoadingIndecatorCustomWidget> createState() =>
      _LoadingIndecatorCustomWidgetState();
}

class _LoadingIndecatorCustomWidgetState
    extends State<LoadingIndecatorCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: LinearProgressIndicator(
        value: widget.currentIndex / widget.totalQuestions,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
        backgroundColor: Colors.grey.shade300,
        minHeight: 5,
      ),
    );
  }
}

class QuizScreenHeaderCustom extends StatelessWidget {
  const QuizScreenHeaderCustom({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.blueAccent[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRouter.kNavigationBar);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: CircleBorder(),
              padding: EdgeInsets.all(10),
            ),
            child: Text('Exit', style: TextStyle(color: Colors.redAccent)),
          ),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
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
