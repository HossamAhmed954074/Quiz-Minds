import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_minds/core/router/app_router.dart';
import 'package:quiz_minds/core/widgets/show_snak_faluire.dart';
import 'package:quiz_minds/core/widgets/show_snak_sucess.dart';
import 'package:quiz_minds/features/quiz/data/question_model.dart';
import 'package:quiz_minds/features/quiz/presentation/view/widgets/option_button_custom.dart';
import 'package:quiz_minds/features/quiz/presentation/view_model/cubit/quistions_cubit.dart';

class QuitionContentCustomWidget extends StatefulWidget {
  const QuitionContentCustomWidget({
    super.key,
    required this.question,
    this.onNext,
    required this.questionNumber,
  });

  final Question question;
  final int questionNumber;
  final Function? onNext;

  @override
  State<QuitionContentCustomWidget> createState() =>
      _QuitionContentCustomWidgetState();
}

class _QuitionContentCustomWidgetState
    extends State<QuitionContentCustomWidget> {
  bool isClecked1 = false;
  bool isClecked2 = false;
  bool isClecked3 = false;
  bool isClecked4 = false;
  int score = 0;
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    final options = widget.question.options.options;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Text(
            widget.question.questionText,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                OptionButtonCustomWidget(
                  isSelected: isClecked1,
                  optionText: options[1].toString(),
                  onTap: (option) {
                    setState(() {
                      isClecked1 = true;
                      isClecked2 = false;
                      isClecked3 = false;
                      isClecked4 = false;
                    });
                    setState(() {
                      selectedOption = option;
                    });
                  },
                ),
                OptionButtonCustomWidget(
                  isSelected: isClecked2,
                  optionText: options[2].toString(),
                  onTap: (option) {
                    setState(() {
                      isClecked1 = false;
                      isClecked2 = true;
                      isClecked3 = false;
                      isClecked4 = false;
                    });
                    setState(() {
                      selectedOption = option;
                    });
                  },
                ),
                OptionButtonCustomWidget(
                  isSelected: isClecked3,
                  optionText: options[3].toString(),
                  onTap: (option) {
                    setState(() {
                      isClecked1 = false;
                      isClecked2 = false;
                      isClecked3 = true;
                      isClecked4 = false;
                    });
                    setState(() {
                      selectedOption = option;
                    });
                  },
                ),
                OptionButtonCustomWidget(
                  isSelected: isClecked4,
                  optionText: options[4].toString(),
                  onTap: (option) {
                    setState(() {
                      isClecked1 = false;
                      isClecked2 = false;
                      isClecked3 = false;
                      isClecked4 = true;
                    });
                    setState(() {
                      selectedOption = option;
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              widget.questionNumber == 10
                  ? _updateScoreForCurrentUser()
                  : _submitAnswer();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            child: Text(
              widget.questionNumber == 10 ? 'End Quiz' : 'Submit Answer',
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  _updateScoreForCurrentUser() async {
    if (selectedOption != null) {
      if (selectedOption == widget.question.answer) {
        setState(() {
          score += 10;
          isClecked1 = false;
          isClecked2 = false;
          isClecked3 = false;
          isClecked4 = false;
        });
        showSnakBarSuccess(context, 'Correct Answer!');
      } else {
        showSnakBarFaluire(
          context,
          'Wrong Answer! : ('
          'Correct Answer: ${widget.question.answer}',
        );
        setState(() {
          isClecked1 = false;
          isClecked2 = false;
          isClecked3 = false;
          isClecked4 = false;
        });
        widget.onNext?.call();
      }
    } else {
      showSnakBarFaluire(context, 'Please select an option');
    }
  
    await Future.delayed(const Duration(milliseconds: 500));
    if (mounted) {
      context.read<QuistionsCubit>().updateUserScore(score);
      GoRouter.of(
        context,
      ).pushReplacement(AppRouter.kScoreScreen, extra: score);
    }
  }

  _submitAnswer() {
    if (selectedOption != null) {
      if (selectedOption == widget.question.answer) {
        setState(() {
          score += 10;
          widget.onNext?.call();
          isClecked1 = false;
          isClecked2 = false;
          isClecked3 = false;
          isClecked4 = false;
        });
        showSnakBarSuccess(context, 'Correct Answer!');
      } else {
        showSnakBarFaluire(
          context,
          'Wrong Answer! : ('
          'Correct Answer: ${widget.question.answer}',
        );
        setState(() {
          isClecked1 = false;
          isClecked2 = false;
          isClecked3 = false;
          isClecked4 = false;
        });
        widget.onNext?.call();
      }
    } else {
      showSnakBarFaluire(context, 'Please select an option');
    }
  }
}
