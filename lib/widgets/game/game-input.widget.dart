import 'package:flutter/material.dart';
import 'package:guess_the_number_game/controllers/game.controller.dart';
import 'package:guess_the_number_game/providers/game.provider.dart';

class GameInputWidget extends StatelessWidget {
  const GameInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final GameController game = GameProvider.of(context);

    return ListenableBuilder(
      listenable: game,
      builder: (context, _) {
        return Column(
          mainAxisAlignment: .center,
          spacing: 8,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 280, minWidth: 100),
              child: TextField(
                controller: game.textController,
                decoration: const InputDecoration(
                  hintText: 'Enter the number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: .number,
                enabled: !game.isGuessed,
              ),
            ),
            Row(
              mainAxisAlignment: .center,
              children: [
                FilledButton.icon(
                  onPressed: game.isGuessed ? game.reset : game.checkGuess,
                  label: Text(game.isGuessed ? 'Restart' : 'Try to guess'),
                  icon: Icon(
                    game.isGuessed ? Icons.refresh : Icons.stream_sharp,
                  ),
                ),
                if (game.attempts >= 1 && !game.isGuessed)
                  IconButton(
                    onPressed: game.reset,
                    icon: const Icon(Icons.refresh),
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}
