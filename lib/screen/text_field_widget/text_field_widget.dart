import 'package:flutter/material.dart';
import '../../model/todo.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  String toDoValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Text Field Widget')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              cursorColor: Colors.amber,
              style: const TextStyle(fontSize: 16, color: Colors.amber),
              decoration: const InputDecoration(
                hintText: 'To Do List',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.amber)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.green)),
                labelText: 'To Do List',
                prefixIcon: Icon(Icons.task),
              ),
              controller: TextEditingController(),
              onChanged: (value) {
                toDoValue = value;
              },
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    toDoList.add(toDoValue);
                  });
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text('Add To DO List'),
              ),
            ),
            Column(
              children: toDoList.map((todo) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  child: Text(
                    todo,
                    textAlign: TextAlign.left,
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
