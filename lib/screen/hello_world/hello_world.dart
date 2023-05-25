import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  static String routeName = '/hello_world';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        title: const Text(
          'Hello World',
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: const Center(
        child: Text(
          'Hello World',
          style: TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}
