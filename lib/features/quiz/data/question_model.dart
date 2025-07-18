


class Question {
  final String questionText;
  final Opthions options;
  final String answer;
  final String correctOptionKey;

  Question({
    required this.questionText,
    required this.options,
    required this.answer,
    required this.correctOptionKey,
  });

  factory Question.fromFirestore( doc) {
    Map<String, dynamic> data = doc;

    return Question(
      questionText: data['questionText'],
      options: Opthions.fromFirestore(data['options']),
      answer: data['answer'],
      correctOptionKey: data['correctOptionKey'],
    );
  }

}

class Opthions{
  Map<int, String> options;
  Opthions({required this.options});


  factory Opthions.fromFirestore(Map<String, dynamic> data) {
    Map<int, String> options = {};
    for (var key in data.keys) {
      options[int.parse(key)] = data[key];
    }
    return Opthions(options: options);
  }

}