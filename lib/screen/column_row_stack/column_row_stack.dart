import 'package:flutter/material.dart';

class ColRowStack extends StatelessWidget {
  const ColRowStack({super.key});

  static String routeName = 'column_row_dan_stack';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Belajar Column Row & Stack',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 100,
                width: 150,
                color: Colors.amber,
              ),
              Container(
                height: 80,
                width: 150,
                color: Colors.blue,
              ),
              Container(
                height: 70,
                width: 50,
                color: Colors.orange,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 100,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              Container(
                height: 100,
                width: 300,
                color: Colors.blue,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 200,
                decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(20))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
