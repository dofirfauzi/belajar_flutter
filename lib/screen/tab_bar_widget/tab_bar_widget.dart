import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  final List<Tab> myTab = const [
    Tab(
      text: 'tab1',
    ),
    Tab(
      text: 'tab2',
    ),
    Tab(
      text: 'tab3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTab.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Tab Bar'),
          bottom: TabBar(tabs: myTab),
        ),
        body: const TabBarView(children: [
          Center(
            child: Text(
              'Tab 1',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Center(
            child: Text(
              'Tab 2',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Center(
            child: Text(
              'Tab 3',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ]),
      ),
    );
  }
}
