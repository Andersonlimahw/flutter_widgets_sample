// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_widgets_sample/src/home/widgets/task_dificulty_widget.dart';

import 'package:flutter_widgets_sample/src/home/widgets/task_image_widget.dart';
import 'package:flutter_widgets_sample/src/home/widgets/task_level_widget.dart';
import 'package:flutter_widgets_sample/src/home/widgets/task_name_widget.dart';

class TaskWidgetItem extends StatefulWidget {
  const TaskWidgetItem({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.difficulty,
  });

  final String name;
  final String imageUrl;
  final int difficulty;

  @override
  State<TaskWidgetItem> createState() => _TaskWidgetItemState();
}

class _TaskWidgetItemState extends State<TaskWidgetItem> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ]),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 100,
            padding: const EdgeInsets.only(
              right: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TaskImageWidget(imageUrl: widget.imageUrl),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TaskNameWidget(name: widget.name),
                    TaskDifficultyWidget(difficulty: widget.difficulty),
                  ],
                ),
                Container(
                  color: Colors.white,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        level++;
                      });
                    },
                    child: const Icon(
                      Icons.arrow_upward_rounded,
                      size: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
                color: Colors.blue,
              ),
              TaskLevelWidget(difficulty: widget.difficulty, level: level),
            ],
          ),
        ],
      ),
    );
  }
}
