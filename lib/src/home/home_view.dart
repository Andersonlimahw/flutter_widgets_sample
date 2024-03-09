import 'package:flutter/material.dart';
import 'package:flutter_widgets_sample/src/home/widgets/task_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const routeName = '/';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    var listData = List<String>.generate(20, (i) => 'Item $i');
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tasks'),
      ),
      body: AnimatedOpacity(
        opacity: opacity ? 1 : 0,
        duration: const Duration(milliseconds: 1000),
        child: ListView.builder(
          itemCount: listData.length,
          itemBuilder: (context, index) {
            return TaskWidgetItem(
              name: listData[index],
              imageUrl: 'https://source.unsplash.com/random/300×300',
              difficulty: index,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacity = !opacity;
          });
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
