// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TaskWidgetItem extends StatefulWidget {
  const TaskWidgetItem({
    super.key,
    required this.name,
  });

  final String name;

  @override
  State<TaskWidgetItem> createState() => _TaskWidgetItemState();
}

class _TaskWidgetItemState extends State<TaskWidgetItem> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
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
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black26,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 200,
                  child: Text(
                    widget.name,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      level++;
                    });
                  },
                  child: const Icon(
                    Icons.arrow_upward_rounded,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                color: Colors.blue,
              ),
              Text(
                level.toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    backgroundColor: Colors.black),
              )
            ],
          ),
        ],
      ),
    );
  }
}
