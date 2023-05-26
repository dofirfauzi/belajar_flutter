import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  static String routeName = 'belajar_switch_widget';

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool switchVallue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Switch Widget')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                switchVallue == true ? 'Off Toggel Switch' : 'On Toggle Switch',
                style: const TextStyle(fontSize: 18),
              ),
              Switch.adaptive(
                  activeColor: Colors.blue,
                  value: switchVallue,
                  onChanged: (value) {
                    setState(() {
                      switchVallue = !switchVallue;
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
