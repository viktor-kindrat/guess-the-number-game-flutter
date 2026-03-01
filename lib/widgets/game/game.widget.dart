import 'package:flutter/material.dart';
import 'package:guess_the_number_game/widgets/game/game-headings.widget.dart';
import 'package:guess_the_number_game/widgets/game/game-input.widget.dart';

class GameWidget extends StatelessWidget {
  const GameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 32,
      children: [GameHeadingsWidget(), GameInputWidget()],
    );
  }
}
