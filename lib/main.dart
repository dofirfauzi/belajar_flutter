import 'routes.dart';
import 'package:flutter/material.dart';
import 'screen/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar Flutter',
      initialRoute: HomePage.routeName,
      routes: routes,
    );
  }
}
