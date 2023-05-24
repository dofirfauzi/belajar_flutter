import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Image Widget')),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Image Assets',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 250,
                  width: 300,
                  child: const Image(
                    image: AssetImage('assets/images/city-view.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 250,
                  width: 300,
                  child: Image.asset(
                    'assets/images/city-view.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Image Network',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 300,
            width: double.infinity,
            child: const Image(
              image: NetworkImage('https://picsum.photos/id/1/300/300'),
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 300,
            width: double.infinity,
            child: Image.network(
              'https://picsum.photos/id/2/300/300',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
