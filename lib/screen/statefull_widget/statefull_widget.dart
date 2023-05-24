import 'package:flutter/material.dart';

class BelajarStateFull extends StatefulWidget {
  const BelajarStateFull({super.key});

  @override
  State<BelajarStateFull> createState() => _BelajarStateFullState();
}

class _BelajarStateFullState extends State<BelajarStateFull> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Statefull Widget')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            counter.toString(),
            style: const TextStyle(fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (counter >= 1) {
                      counter--;
                    }
                  });
                },
                child: const Icon(Icons.remove),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
