import 'package:flutter/material.dart';

import '../screen/screen.dart';

class Menu {
  final String name;
  final Widget page;

  Menu({
    required this.name,
    required this.page,
  });
}

var menus = [
  Menu(name: 'Hello World', page: const HelloWorld()),
  Menu(name: 'Belajar Text Widget', page: const TextWidget()),
  Menu(name: 'Belajar Column Row & Stack', page: const ColRowStack()),
  Menu(name: 'Belajar Image Widget', page: const ImageWidget()),
  Menu(name: 'Belajar Mapping List', page: const Map()),
];
