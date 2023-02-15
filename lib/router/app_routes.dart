import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[

    //MenuOption(route: 'home', icon: Icons.home_outlined, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list, name: 'List view 1', screen: const Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list, name: 'List View 2', screen: const Listview2Screen()),
    MenuOption(route: 'alertscreen', icon: Icons.warning_amber, name: 'alert screen', screen: const AlertScreen()),
    MenuOption(route: 'cardscreen', icon: Icons.credit_card, name: 'cards screen', screen: const CardScreen()),
    MenuOption(route: 'avatarscreen', icon: Icons.supervised_user_circle_rounded, name: 'Avatar Screen', screen: const AvatarScreen()),
    MenuOption(route: 'animatedscreen', icon: Icons.filter_frames, name: 'Animated Screen', screen: const AnimatedScreen()),
    MenuOption(route: 'inputsscreen', icon: Icons.format_align_center, name: 'Inputs Screen', screen: const InputsScreen()),

  ];
  



  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
  

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home' : (BuildContext context) => const HomeScreen()});

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