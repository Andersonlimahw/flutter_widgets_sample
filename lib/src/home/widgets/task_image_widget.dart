import 'package:flutter/material.dart';

class TaskImageWidget extends StatelessWidget {
  const TaskImageWidget({super.key, required this.imageUrl});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.black26,
      child: ClipRRect(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
