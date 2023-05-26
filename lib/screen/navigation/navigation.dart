import 'package:flutter/material.dart';
import 'page_one.dart';

class BelajarNavigation extends StatelessWidget {
  const BelajarNavigation({super.key});

  static String routeName = 'belajar_navigation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Navigation'),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const PageOne()));
                },
                child: const Text('Push to Page 1')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const PageOne()));
                },
                child: const Text('Push Replacement to Page two')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Pop'))
          ],
        ),
      ),
    );
  }
}
