class QuestionModel {
  String imageUrl;
  Map<String, QuestionData> questions;

  QuestionModel({required this.imageUrl, required this.questions});

  factory QuestionModel.fromFirestore(Map<String, dynamic> data) {
    return QuestionModel(
      imageUrl: data['imageUrl'] ?? '',
      questions: (data['questions'] as Map<String, dynamic>).map((key, value) {
        return MapEntry(
          key,
          QuestionData.fromFirestore(value),
        );
      }),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': imageUrl,
      'questions': questions.map((key, value) => MapEntry(key, value.toMap())),
    };
  }
}

class QuestionData {
  String answer;
  Map<int, String> options;
  int correctOptionKey;
  String questionText;

  QuestionData({
    required this.answer,
    required this.options,
    required this.correctOptionKey,
    required this.questionText,
  });

  factory QuestionData.fromFirestore(Map<String, dynamic> data) {
    return QuestionData(
      answer: data['answer'] ?? '',
      options: (data['options'] as Map<String, dynamic>).map((key, value) {
        return MapEntry(int.parse(key), value);
      }),
      correctOptionKey: data['correctOptionKey'] ?? 0,
      questionText: data['questionText'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'answer': answer,
      'options': options.map((key, value) => MapEntry(key.toString(), value)),
      'correctOptionKey': correctOptionKey,
      'questionText': questionText,
    };
  }
}
