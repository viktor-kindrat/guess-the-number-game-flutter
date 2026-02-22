import 'package:flutter/material.dart';
import 'dart:math';

class GameController {
  final TextEditingController textController = TextEditingController();
  int secretNumber = Random().nextInt(100) + 1;
  int attempts = 0;
  String hint = 'Guess 👀';
  bool isGuessed = false;

  void reset() {
    secretNumber = Random().nextInt(100) + 1;
    attempts = 0;
    hint = 'Guess 👀';
    isGuessed = false;

    textController.clear();
  }

  void checkGuess() {
    if (isGuessed) return;

    int? guess = int.tryParse(textController.text);
    textController.clear();

    if (guess != null) {
      if (guess == secretNumber) {
        isGuessed = true;
        hint = 'Guessed! 🎉';

        return;
      }

      attempts++;
      hint = guess > secretNumber ? 'Try less ⬇️' : 'Try more ⬆️';
    } else {
      attempts++;
      hint = 'Invalid! ❌';
    }
  }

  void dispose() {
    textController.dispose();
  }
}
