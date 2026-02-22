import 'package:flutter/material.dart';
import 'package:guess_the_number_game/controllers/game.controller.dart';
import 'package:guess_the_number_game/providers/game.provider.dart';

class GameHintWidget extends StatelessWidget {
  const GameHintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    GameController game = GameProvider.of(context);

    return Text(game.hint);
  }
}
