// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TaskWidgetItem extends StatefulWidget {
  const TaskWidgetItem({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  final String name;
  final String imageUrl;

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
                  child: Image.network(
                    widget.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      width: 200,
                      child: Text(
                        widget.name,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        Icons.star,
                        Icons.star,
                        Icons.star,
                        Icons.star,
                        Icons.star
                      ]
                          .map(
                            (e) => Icon(
                              e,
                              color: Colors.blue,
                            ),
                          )
                          .toList(),
                    )
                  ],
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      color: Colors.blue,
                      alignment: Alignment.centerLeft,
                      child: LinearProgressIndicator(
                        value: level / 10,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      level.toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          backgroundColor: Colors.black),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
