import 'package:flutter/material.dart';
import './pages/home.page.dart';
import './providers/game.provider.dart';
import './controllers/game.controller.dart';

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
