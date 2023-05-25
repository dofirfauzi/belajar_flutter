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
  Menu(name: 'Belajar AppBar Widget', page: const AppBarWidget()),
  Menu(name: 'Belajar Column Row & Stack', page: const ColRowStack()),
  Menu(name: 'Belajar Image Widget', page: const ImageWidget()),
  Menu(name: 'Belajar Statefull Widget', page: const BelajarStateFull()),
  Menu(name: 'Belajar Mapping List', page: const Map()),
  Menu(name: 'Belajar Tap Bar Widget', page: const TabBarWidget()),
  Menu(name: 'Belajar Text Field Widget', page: const TextFieldWidget()),
  Menu(name: 'Belajar Dialog Widget', page: const DialogWidget()),
];
