class QuestionModel {
  String questionText;
  List answerQuestion;

  QuestionModel({
    required this.questionText,
    required this.answerQuestion,
  });
}

class AnswerModel {
  String answerText;
  bool isCorrect;

  AnswerModel({
    required this.answerText,
    required this.isCorrect,
  });
}

List<QuestionModel> getQuestion() {
  final questionList = [
    QuestionModel(
      questionText: 'Q1. Who created Flutter?',
      answerQuestion: [
        AnswerModel(
          answerText: 'Facebook',
          isCorrect: false,
        ),
        AnswerModel(
          answerText: 'Adobe',
          isCorrect: false,
        ),
        AnswerModel(
          answerText: 'Google',
          isCorrect: true,
        ),
        AnswerModel(
          answerText: 'Microsoft',
          isCorrect: false,
        ),
      ],
    ),
    QuestionModel(
      questionText: 'Q2. What is Flutter?',
      answerQuestion: [
        AnswerModel(
          answerText: 'Android Development Kit',
          isCorrect: false,
        ),
        AnswerModel(
          answerText: 'IOS Development Kit',
          isCorrect: false,
        ),
        AnswerModel(
          answerText: 'Web Development Kit',
          isCorrect: false,
        ),
        AnswerModel(
          answerText:
              'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
          isCorrect: true,
        ),
      ],
    ),
    QuestionModel(
      questionText: 'Q3. Which programming language is used by Flutter',
      answerQuestion: [
        AnswerModel(
          answerText: 'Ruby',
          isCorrect: false,
        ),
        AnswerModel(
          answerText: 'Dart',
          isCorrect: true,
        ),
        AnswerModel(
          answerText: 'C++',
          isCorrect: false,
        ),
        AnswerModel(
          answerText: 'Kotlin',
          isCorrect: false,
        ),
      ],
    ),
    QuestionModel(
      questionText: 'Q4. Who created Dart programming language?',
      answerQuestion: [
        AnswerModel(
          answerText: 'Lars Bak and Kasper Lund',
          isCorrect: true,
        ),
        AnswerModel(
          answerText: 'Brendan Eich',
          isCorrect: false,
        ),
        AnswerModel(
          answerText: 'Bjarne Stroustrup',
          isCorrect: false,
        ),
        AnswerModel(
          answerText: 'Jeremy Ashkenas',
          isCorrect: false,
        ),
      ],
    ),
    QuestionModel(
      questionText:
          'Q5. Is Flutter for Web and Desktop available in stable version?',
      answerQuestion: [
        AnswerModel(
          answerText: 'Yes',
          isCorrect: false,
        ),
        AnswerModel(
          answerText: 'No',
          isCorrect: true,
        ),
      ],
    ),
  ];
  return questionList;
}
