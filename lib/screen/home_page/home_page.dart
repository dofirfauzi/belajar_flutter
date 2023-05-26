import '../../components/sidebar_menu.dart';
import '../../model/menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Belajar Flutter',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
        elevation: 0,
        actions: [
          Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const CircleAvatar(
                  child: Icon(Icons.person),
                ));
          })
        ],
      ),
      drawer: const SideBarMenu(),
      endDrawer: const Drawer(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: menus.map((menu) {
          return ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(menu.page);
            },
            child: Text(menu.name),
          );
        }).toList(),
      ),
    );
  }
}
