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
      List<QuestionModel> questions = [];
      if (questionsData != null) {
        questionsData.forEach((question) {
          questions.add(QuestionModel.fromFirestore(question));
        });
      }
      if (questions.isEmpty) {
        emit(QuistionsError('No questions found for this category.'));
        return;
      }
      if (questions.length < 5) {
        emit(QuistionsError('Not enough questions available.'));
        return;
      }
      questions.shuffle();
      questions = questions.take(5).toList();
      if (questions.isEmpty) {
        emit(QuistionsError('No questions available after filtering.'));
        return;
      }
      emit(QuistionsLoaded(questions));
    } catch (e) {
      emit(QuistionsError(e.toString()));
    }
  }
}
