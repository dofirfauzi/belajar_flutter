import 'package:flutter/material.dart';

class SideBarMenu extends StatelessWidget {
  const SideBarMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 100, bottom: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text('Menus'),
          ),
        ],
      ),
    );
  }
}
