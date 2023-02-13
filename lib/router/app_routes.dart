import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[

    MenuOption(route: 'home', icon: Icons.home_outlined, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list, name: 'List view 1', screen: const Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list, name: 'List View 2', screen: const Listview2Screen()),
    MenuOption(route: 'alertscreen', icon: Icons.warning_amber, name: 'alert screen', screen: const AlertScreen()),
    MenuOption(route: 'cardscreen', icon: Icons.credit_card, name: 'cards screen', screen: const CardScreen()),

  ];
  



  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
  
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({ option.route : (BuildContext context) => option.screen });
    }


    return appRoutes;

  }




/*
  static Map<String, Widget Function(BuildContext)> routes = {

        'home': ( BuildContext context ) => const HomeScreen(),
        'listview1': ( BuildContext context ) => const Listview1Screen(),
        'listview2': ( BuildContext context ) => const Listview2Screen(),
        'alertscreen': ( BuildContext context ) => const AlertScreen(),
        'cardscreen': ( BuildContext context ) => const CardScreen(),
  };
*/

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) => const AlertScreen());
      }
}