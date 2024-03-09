import 'package:flutter/material.dart';

class TaskNameWidget extends StatelessWidget {
  const TaskNameWidget({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 200,
      child: Text(
        name,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
