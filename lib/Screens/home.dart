import 'package:flutter/material.dart';
import 'package:simple_quiz_app/widgets/answer_button.dart';

import '../model/question.dart';
import '../widgets/next_button.dart';
import '../widgets/show_score_dialog.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var questionIndex = 0;

  List<QuestionModel> questionList = getQuestion();

  int score = 0;

  AnswerModel? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0D92F3),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Simple Quiz App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Question ${questionIndex + 1} / ${questionList.length}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  height: 130,
                  width: double.infinity,
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      questionList[questionIndex].questionText,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: -30,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.check,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Positioned(
                  left: -10,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                  ),
                ),
                const Positioned(
                  right: -10,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                  ),
                ),
              ],
            ),
            answerList(),
            NextButton(
              isLastQuestion: questionIndex == questionList.length - 1,
              onTap: () {
                if (selectedAnswer != null) {
                  if (selectedAnswer!.isCorrect) {
                    score++;
                  }
                }
                if (questionIndex == questionList.length - 1) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => ShowScoreDialog(
                      score: score,
                      isPassed: score >= questionList.length * .6,
                      onPressed: () {
                        Navigator.pop(context);
                        setState(() {
                          questionIndex = 0;
                          score = 0;
                          selectedAnswer = null;
                        });
                      },
                      questionLength: questionList.length,
                    ),
                  );
                } else {
                  setState(() {
                    selectedAnswer = null;
                    questionIndex++;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  answerList() {
    return Column(
      children: [
        for (var ans in questionList[questionIndex].answerQuestion)
          Answer(
            selectHandler: () {
              setState(() {
                selectedAnswer = ans;
              });
            },
            answerText: ans.answerText,
            selectedAnswer: ans == selectedAnswer,
          )
      ],
    );
/*    return Column(
        children: questionList[questionIndex]
            .answerQuestion
            .map(
              (answer) => Answer(
                selectHandler: () {
                  if (selectedAnswer == null) {
                    if (answer.isCorrect) {
                      score++;
                    }
                    setState(() {
                      selectedAnswer = answer;
                    });
                  } else {
                    setState(() {
                      selectedAnswer = answer;
                    });
                  }
                },
                answerText: answer.answerText,
                selectedAnswer: answer == selectedAnswer,
              ),
            )
            .toList());*/
  }
}
