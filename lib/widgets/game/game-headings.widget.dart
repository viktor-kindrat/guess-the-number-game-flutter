import 'package:flutter/material.dart';

class GameHeadingsWidget extends StatelessWidget {
  const GameHeadingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Guess the number game',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          'Aim: to guess the number in range 1-100',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
