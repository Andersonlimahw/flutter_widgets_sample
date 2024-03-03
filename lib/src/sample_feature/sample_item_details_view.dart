import 'package:flutter/material.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.primary,
                    width: 250,
                    height: 100,
                    child: const Center(
                      child: Text(
                        'Sample Item Details',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Theme.of(context).colorScheme.primary,
                    width: 150,
                    height: 50,
                    child: const Center(
                      child: Text(
                        'Sample Item Details',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.primary,
                    width: 250,
                    height: 100,
                    child: const Center(
                      child: Text(
                        'Sample Item Details',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Theme.of(context).colorScheme.primary,
                    width: 150,
                    height: 50,
                    child: const Center(
                      child: Text(
                        'Sample Item Details',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.cyan,
                    width: 150,
                    height: 50,
                    child: const Center(
                      child: Text(
                        'Sample Item Details',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.cyan,
                    width: 150,
                    height: 50,
                    child: const Center(
                      child: Text(
                        'Sample Item Details',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.cyan,
                    width: 150,
                    height: 50,
                    child: const Center(
                      child: Text(
                        'Sample Item Details',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () => {}, child: const Text('Click me!'))
                ],
              )
            ],
          ),
        ));
  }
}
