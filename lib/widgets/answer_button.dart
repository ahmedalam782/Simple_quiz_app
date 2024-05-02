import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answerText;
  final bool selectedAnswer;

  const Answer({
    super.key,
    required this.selectHandler,
    required this.answerText,
    required this.selectedAnswer,
  });

  @override
  Widget build(BuildContext context) {
    // use SizedBox for white space instead of Container
    return InkWell(
      onTap: selectHandler,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: selectedAnswer ? Colors.orange : Colors.white,
        ),
        child: Text(
          answerText,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: 'Timmana',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
