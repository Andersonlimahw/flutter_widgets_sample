import 'package:flutter/material.dart';

class TaskDifficultyWidget extends StatelessWidget {
  const TaskDifficultyWidget({super.key, required this.difficulty});

  final int difficulty;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Icons.star, Icons.star, Icons.star, Icons.star, Icons.star]
          .map(
            (e) => Icon(
              e,
              size: 16,
              color: difficulty > 2 ? Colors.blue : Colors.blue[100],
            ),
          )
          .toList(),
    );
  }
}
