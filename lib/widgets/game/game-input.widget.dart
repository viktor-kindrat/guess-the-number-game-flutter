import 'package:flutter/material.dart';

class GameInputWidget extends StatelessWidget {
  final TextEditingController textController;
  final bool isGuessed;
  final int attempts;
  final VoidCallback onCheckGuess;
  final VoidCallback onReset;

  const GameInputWidget({
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
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 280, minWidth: 100),
          child: TextField(
            controller: textController,
            decoration: InputDecoration(
              hintText: "Enter the number",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
            enabled: !isGuessed,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.icon(
              onPressed: isGuessed ? onReset : onCheckGuess,
              label: Text(isGuessed ? "Restart" : "Try to guess"),
              icon: Icon(isGuessed ? Icons.refresh : Icons.stream_sharp),
            ),
            if (attempts >= 1 && !isGuessed)
              IconButton(onPressed: onReset, icon: Icon(Icons.refresh)),
          ],
        ),
      ],
    );
  }
}
