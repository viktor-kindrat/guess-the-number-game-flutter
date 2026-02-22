import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final int attempts;
  final String hint;

  const HomeAppBarWidget({
    super.key,
    required this.attempts,
    required this.hint,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text("🎯 Attempts: $attempts"), Text(hint)],
      ),
    );
  }
}
