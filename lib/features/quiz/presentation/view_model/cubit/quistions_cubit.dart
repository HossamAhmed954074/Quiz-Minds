import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    if (FirebaseAuth.instance.currentUser == null) {
      return;
    } else {
      try {
        await dataServices.updateUserScore(score);
      } catch (e) {
        emit(QuistionsError('Failed to update user score: $e'));
      }
    }
  }
}
