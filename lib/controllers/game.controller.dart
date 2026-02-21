import 'package:flutter/material.dart';
import 'dart:math';

class GameController {
  final TextEditingController textController = TextEditingController();
  int secretNumber = Random().nextInt(100) + 1;
  int attempts = 0;

  void reset() {
    secretNumber = Random().nextInt(100) + 1;
    attempts = 0;
    textController.clear();
  }

  void dispose() => textController.dispose();
}
