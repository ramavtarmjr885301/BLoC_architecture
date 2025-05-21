
import 'package:bloc_project/config/routes/routes_names.dart';

import 'package:flutter/material.dart';

import '../../views/view.dart';
class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.SplashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RoutesNames.loginScreen:
        return MaterialPageRoute(builder: (context) => const Loginscreen());
      case RoutesNames.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
        default:
        return MaterialPageRoute(builder: (context) => const Scaffold(
          body: Center(
            child: Text("No routes found"),
          ),
        ));

        
    }
  }
}