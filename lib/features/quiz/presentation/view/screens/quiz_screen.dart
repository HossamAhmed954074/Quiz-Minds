import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_minds/core/widgets/show_circle_indecator.dart';
import 'package:quiz_minds/features/home/data/category_model.dart';
import 'package:quiz_minds/features/quiz/data/question_model.dart';
import 'package:quiz_minds/features/quiz/presentation/view/widgets/loading_indecator_custom.dart';
import 'package:quiz_minds/features/quiz/presentation/view/widgets/quition_content_body_custom.dart';
import 'package:quiz_minds/features/quiz/presentation/view/widgets/quiz_screen_header_custom.dart';
import 'package:quiz_minds/features/quiz/presentation/view_model/cubit/quistions_cubit.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late CategoryModel categoryModel;
  Set<Question> questions = {};
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    categoryModel = GoRouter.of(context).state.extra as CategoryModel;
    context.read<QuistionsCubit>().getQuistions(
      id: categoryModel.categoryName ?? '',
    );
  }

  void _nextQuestion() {
    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuistionsCubit, QuistionsState>(
      listener: (context, state) {
        if (state is QuistionsLoaded) {
          questions = state.quistions;
        }
      },
      builder: (context, state) {
        if (state is QuistionsLoading || questions.isEmpty) {
          return Scaffold(body: Center(child: circleIndeactorCustom(context)));
        }

        final currentQuestion = questions.elementAt(currentIndex);

        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                QuizScreenHeaderCustom(title: categoryModel.categoryName ?? ''),
                LoadingIndecatorCustomWidget(
                  currentIndex: currentIndex + 1,
                  totalQuestions: questions.length,
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: QuitionContentCustomWidget(
                    questionNumber: currentIndex + 1,
                    onNext: _nextQuestion,
                    question: currentQuestion,
                  ),
                ),
                const SizedBox(height: 20),

                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }
}
