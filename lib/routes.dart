import 'package:flutter/material.dart';
import './screen/screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => const HomePage(),
  HelloWorld.routeName: (context) => const HelloWorld(),
  TextWidget.routeName: (context) => const TextWidget(),
  ColRowStack.routeName: (context) => const ColRowStack(),
  ImageWidget.routeName: (context) => const ImageWidget(),
  BelajarMap.routeName: (context) => const BelajarMap(),
  BelajarStateFull.routeName: (context) => const BelajarStateFull(),
  AppBarWidget.routeName: (context) => const AppBarWidget(),
  TabBarWidget.routeName: (context) => const TabBarWidget(),
  TextFieldWidget.routeName: (context) => const TextFieldWidget(),
  DialogWidget.routeName: (context) => const DialogWidget(),
  BelajarNavigation.routeName: (context) => const BelajarNavigation(),
  SwitchWidget.routeName: (context) => const SwitchWidget(),
};
