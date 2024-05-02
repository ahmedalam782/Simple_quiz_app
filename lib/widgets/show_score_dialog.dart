import 'package:flutter/material.dart';

class ShowScoreDialog extends StatelessWidget {
  final int score;
  final int questionLength;
  final bool isPassed;
  final Function() onPressed;

  const ShowScoreDialog(
      {super.key,
      required this.score,
      required this.isPassed,
      required this.onPressed,
      required this.questionLength});

  @override
  Widget build(BuildContext context) {
    String title = isPassed ? "Passed" : "Failed";
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(
        "$title | Score is $score / $questionLength",
        style: TextStyle(
          color: isPassed ? Colors.green : Colors.red,
          fontSize: 20,
          fontFamily: 'Pacifico',
          fontWeight: FontWeight.bold,
        ),
      ),
      content: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
        ),
        child: const Text(
          "Restart",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
