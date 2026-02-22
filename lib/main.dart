import 'package:flutter/material.dart';
import 'package:guess_the_number_game/controllers/game.controller.dart';
import 'package:guess_the_number_game/pages/home.page.dart';
import 'package:guess_the_number_game/providers/game.provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GameProvider(
      controller: GameController(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: const MyHomePage(),
      ),
    );
  }
}
