import '../hello_world/hello_world.dart';
import '../text/text_widget.dart';
import '../column_row_stack/column_row_stack.dart';
import '../image_widget/image_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Belajar Flutter',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const HelloWorld();
              }));
            },
            child: const Text('Hello World'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const TextWidget();
              }));
            },
            child: const Text('Belajar Text Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const ColRowStack();
              }));
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
            child: const Text('Column Row dan Stack'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const ImageWidget();
              }));
            },
            child: const Text('Belajar Image Widget'),
          )
        ],
      ),
    );
  }
}
