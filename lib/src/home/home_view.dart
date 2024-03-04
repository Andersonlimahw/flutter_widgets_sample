import 'package:flutter/material.dart';
import 'package:flutter_widgets_sample/src/home/widgets/task_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    var listData = List<String>.generate(20, (i) => 'Item $i');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
      ),
      body: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return TaskWidgetItem(name: listData[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
