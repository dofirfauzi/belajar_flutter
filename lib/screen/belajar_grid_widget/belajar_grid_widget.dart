import 'dart:math';

import 'package:flutter/material.dart';

class BelajarGridWidget extends StatelessWidget {
  const BelajarGridWidget({super.key});

  static String routeName = 'belajar_grid-widget';

  @override
  Widget build(BuildContext context) {
    final List<Container> myContainer = List.generate(
      100,
      (index) {
        return Container(
          color: Color.fromARGB(255, Random().nextInt(256),
              Random().nextInt(256), Random().nextInt(256)),
        );
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar GridView'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
        childAspectRatio: 3 / 4,
        children: myContainer,
      ),
    );
  }
}
