import 'package:flutter/material.dart';
import 'dart:math';

class GameController with ChangeNotifier {
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

    notifyListeners();
  }

  void checkGuess() {
    if (isGuessed) return;

    int? guess = int.tryParse(textController.text);

    if (guess != null) {
      if (guess == secretNumber) {
        isGuessed = true;
        hint = 'Guessed! 🎉';
        textController.clear();

        notifyListeners();

        return;
      }

      attempts++;
      hint = guess > secretNumber ? 'Try less ⬇️' : 'Try more ⬆️';

      textController.clear();

      notifyListeners();
    }
  }
}
