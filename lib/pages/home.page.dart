import 'package:flutter/material.dart';

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

  List<BottomNavigationBarItem> get _bottomMenu {
    return [
      BottomNavigationBarItem(
        icon: Icon(
          _selectedTab == 0 ? Icons.leaderboard : Icons.leaderboard_outlined,
        ),
        label: "Leaders",
      ),
      BottomNavigationBarItem(
        icon: Icon(_selectedTab == 1 ? Icons.gamepad : Icons.gamepad_outlined),
        label: "Play",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          _selectedTab == 2 ? Icons.settings : Icons.settings_outlined,
        ),
        label: "Settings",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [Text("hello world")],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: _onMenuTap,
        selectedIconTheme: IconThemeData(size: 32),
        items: _bottomMenu,
      ),
    );
  }
}
