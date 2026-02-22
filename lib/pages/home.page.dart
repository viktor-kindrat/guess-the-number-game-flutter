import 'package:flutter/material.dart';
import 'package:guess_the_number_game/controllers/game.controller.dart';
import 'package:guess_the_number_game/widgets/game/game.widget.dart';
import 'package:guess_the_number_game/widgets/home/home-app-bar.widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedTab = 1;
  final GameController _gameController = GameController();

  void _onMenuTap(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  void _onCheckGuess() {
    _gameController.checkGuess();
    setState(() {});
  }

  void _onReset() {
    _gameController.reset();
    setState(() {});
  }

  @override
  void dispose() {
    _gameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> bottomMenu = [
      BottomNavigationBarItem(
        icon: Icon(
          _selectedTab == 0 ? Icons.leaderboard : Icons.leaderboard_outlined,
        ),
        label: 'Leaders',
      ),
      BottomNavigationBarItem(
        icon: Icon(_selectedTab == 1 ? Icons.gamepad : Icons.gamepad_outlined),
        label: 'Play',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          _selectedTab == 2 ? Icons.settings : Icons.settings_outlined,
        ),
        label: 'Settings',
      ),
    ];

    return Scaffold(
      appBar: HomeAppBarWidget(
        attempts: _gameController.attempts,
        hint: _gameController.hint,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GameWidget(
              textController: _gameController.textController,
              isGuessed: _gameController.isGuessed,
              attempts: _gameController.attempts,
              onCheckGuess: _onCheckGuess,
              onReset: _onReset,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: _onMenuTap,
        selectedIconTheme: const IconThemeData(size: 32),
        items: bottomMenu,
      ),
    );
  }
}
