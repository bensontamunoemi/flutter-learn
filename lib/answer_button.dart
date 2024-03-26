import 'package:flutter/material.dart';

class AnserButton extends StatelessWidget {
  const AnserButton({super.key, required this.answerText, required this.onTab});
  final String answerText;
  final void Function() onTab;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTab,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
