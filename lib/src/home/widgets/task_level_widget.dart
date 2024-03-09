import 'package:flutter/material.dart';

class TaskLevelWidget extends StatelessWidget {
  const TaskLevelWidget({
    super.key,
    required this.difficulty,
    required this.level,
  });

  final int difficulty;
  final int level;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: LinearProgressIndicator(
                value: (difficulty > 0) ? (level / difficulty) / 10 : 1,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Level: $level',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
