import 'package:flutter/material.dart';
import 'package:guess_the_number_game/controllers/game.controller.dart';

class GameProvider extends InheritedWidget {
  final GameController controller;

  const GameProvider({
    required this.controller, required super.child, super.key,
  });

  static GameController of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<GameProvider>()!
        .controller;
  }

  @override
  bool updateShouldNotify(GameProvider oldWidget) =>
      controller != oldWidget.controller;
}
