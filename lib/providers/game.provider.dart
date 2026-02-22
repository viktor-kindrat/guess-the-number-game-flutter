import 'package:flutter/material.dart';
import '../controllers/game.controller.dart';

class GameProvider extends InheritedWidget {
  final GameController controller;

  const GameProvider({
    super.key,
    required this.controller,
    required super.child,
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
