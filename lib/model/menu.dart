import '../screen/screen.dart';

class Menu {
  final String name;
  final String page;

  Menu({
    required this.name,
    required this.page,
  });
}

var menus = [
  Menu(name: 'Hello World', page: HelloWorld.routeName),
  Menu(name: 'Belajar Text Widget', page: TextWidget.routeName),
  Menu(name: 'Belajar Column Row dan Stack', page: ColRowStack.routeName),
  Menu(name: 'Belajar Image WIdget', page: ImageWidget.routeName),
  Menu(name: 'Belajar Map', page: BelajarMap.routeName),
  Menu(name: 'Belajar Statefull', page: BelajarStateFull.routeName),
  Menu(name: 'Belajar AppBar Widget', page: AppBarWidget.routeName),
  Menu(name: 'Belajar TabBar Widget', page: TabBarWidget.routeName),
  Menu(name: 'Belajar Text Filed Widget', page: TextFieldWidget.routeName),
  Menu(name: 'Belajar Dialog Widget', page: DialogWidget.routeName),
  Menu(name: 'Belajar Navigation', page: BelajarNavigation.routeName),
  Menu(name: 'Belajar Switch Widget', page: SwitchWidget.routeName),
  Menu(name: 'Belajar Layout Builder', page: BelajarLayoutBuilder.routeName),
  Menu(name: 'Belajar Grid Widget', page: BelajarGridWidget.routeName),
];
