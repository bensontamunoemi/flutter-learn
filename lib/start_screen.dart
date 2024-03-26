import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});
  final void Function() switchScreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(
            image: AssetImage("assets/images/quiz-logo.png"),
            width: 300,
            color: Color.fromARGB(150, 255, 255, 255),
          ),

          // const Opacity(
          //   opacity: 0.5,
          //   child: Image(
          //     image: AssetImage("assets/images/quiz-logo.png"),
          //     width: 300,
          //   ),
          // ),

          const SizedBox(height: 80),
          const Text(
            "Learn Flutter the fun way",
            style: TextStyle(
                fontSize: 24, color: Color.fromARGB(255, 237, 223, 252)),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: switchScreen,
              icon: const Icon(Icons.arrow_right_alt),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                shape: const BeveledRectangleBorder(),
                side: const BorderSide(
                    width: BorderSide.strokeAlignCenter,
                    color: Color.fromARGB(255, 28, 16, 122)),
              ),
              label: const Text("Start Quiz"))
        ],
      ),
    );
  }
}
