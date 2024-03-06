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
        leading: Container(),
        title: const Text('Tasks'),
      ),
      body: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return TaskWidgetItem(
            name: listData[index],
            imageUrl: 'https://source.unsplash.com/random/300×300',
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
