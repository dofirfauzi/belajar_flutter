import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Belajar AppBar Widget'),
        centerTitle: false,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.add_a_photo),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Back'),
          ),
        ),
        flexibleSpace: Container(
          height: 150,
          color: Colors.green,
        ),
      ),
      body: Column(children: [
        Container(
          height: 400,
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.amber),
          margin: const EdgeInsets.all(10),
        )
      ]),
    );
  }
}
