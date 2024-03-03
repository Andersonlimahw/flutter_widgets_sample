import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({super.key});

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Item Details'),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.pink,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.white,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.purple,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            )));
  }
}
