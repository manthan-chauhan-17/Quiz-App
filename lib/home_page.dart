import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 250,
            color: const Color.fromARGB(150, 241, 241, 241),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "Learn Flutter the fun way",
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            iconAlignment: IconAlignment.end,
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
