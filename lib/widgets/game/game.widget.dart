import 'package:flutter/material.dart';
import 'package:guess_the_number_game/widgets/game/game-headings.widget.dart';
import './game-input.widget.dart';

class GameWidget extends StatelessWidget {
  final TextEditingController textController;
  final bool isGuessed;
  final int attempts;
  final VoidCallback onCheckGuess;
  final VoidCallback onReset;

  const GameWidget({
    super.key,
    required this.textController,
    required this.isGuessed,
    required this.attempts,
    required this.onCheckGuess,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      children: [
        GameHeadingsWidget(),
        GameInputWidget(
          textController: textController,
          isGuessed: isGuessed,
          attempts: attempts,
          onCheckGuess: onCheckGuess,
          onReset: onReset,
        ),
      ],
    );
  }
}
