import 'package:flutter/material.dart';
import 'package:guess_the_number_game/providers/game.provider.dart';
import 'package:guess_the_number_game/widgets/game/game-hint.widget.dart';

class HomeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final game = GameProvider.of(context);

    return ListenableBuilder(
      listenable: game,
      builder: (context, child) {
        return AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('🎯 Attempts: ${game.attempts}'),
              const GameHintWidget(),
            ],
          ),
        );
      },
    );
  }
}
