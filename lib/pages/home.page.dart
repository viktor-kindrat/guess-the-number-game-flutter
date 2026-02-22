import 'package:flutter/material.dart';
import 'package:guess_the_number_game/widgets/game/game.widget.dart';
import 'package:guess_the_number_game/widgets/home/home-app-bar.widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedTab = 1;

  void _onMenuTap(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomMenu = [
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
      appBar: const HomeAppBarWidget(),
      body: Center(
        child: Column(mainAxisAlignment: .center, children: [GameWidget()]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: _onMenuTap,
        selectedIconTheme: IconThemeData(size: 32),
        items: bottomMenu,
      ),
    );
  }
}
