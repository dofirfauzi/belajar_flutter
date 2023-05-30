import 'package:flutter/material.dart';

class BelajarLayoutBuilder extends StatelessWidget {
  const BelajarLayoutBuilder({super.key});

  static String routeName = 'belajar_layout_builder';

  @override
  Widget build(BuildContext context) {
    final hightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar layout Builder'),
      ),
      body: Container(
        height: hightScreen * 0.5,
        color: Colors.red,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyContainer(),
            MyContainer(),
            MyContainer(),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: 100,
          //constrain itu ngambil value dari parentnya
          height: constraints.maxHeight * 0.4,
          color: Colors.amber,
        );
      },
    );
  }
}
