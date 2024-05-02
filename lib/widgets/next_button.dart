import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final bool isLastQuestion;
  final Function() onTap;

  const NextButton(
      {super.key, required this.isLastQuestion, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.orange,
        ),
        child: Text(
          isLastQuestion ? "Submit" : "Next",
          style: const TextStyle(
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
