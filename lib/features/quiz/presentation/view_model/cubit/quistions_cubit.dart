import 'dart:math' hide log;

import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';
import 'package:quiz_minds/core/services/data_services.dart';
import 'package:quiz_minds/features/quiz/data/question_model.dart';
part 'quistions_state.dart';

class QuistionsCubit extends Cubit<QuistionsState> {
  QuistionsCubit(this.dataServices) : super(QuistionsInitial());

  final DataServices dataServices;

  getQuistions({required String id}) async {
    emit(QuistionsLoading());
    try {
      var questionsData = await dataServices.getCategoriesById(id);
      //  log('Fetched Questions Data: ${questionsData['questions']}');
      List<Question> questions = [];
      for (var doc in questionsData['questions'].values) {
        questions.add(Question.fromFirestore(doc));
      }
      questions.shuffle(Random());
      emit(QuistionsLoaded(questions.take(10).toSet()));
    } catch (e) {
      emit(QuistionsError(e.toString()));
    }
  }

  updateUserScore(int score) async {
    await dataServices.updateUserScore(score);
  }
}
