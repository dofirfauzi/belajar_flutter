import 'package:flutter/material.dart';
import '../../model/mahasiswa.dart';

class Map extends StatelessWidget {
  const Map({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Maping List')),
      body: ListView(
        children: mahasiswa.map((data) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nama : ${data.name}'),
                    Text('Jurusan : ${data.jurusan}'),
                    Text('Semester : ${data.semester}'),
                    const Text('Matakuliah : '),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: data.matakuliah.map((matkul) {
                          return Text('$matkul, ');
                        }).toList(),
                      ),
                    )
                  ]),
            ),
          );
        }).toList(),
      ),
    );
  }
}
