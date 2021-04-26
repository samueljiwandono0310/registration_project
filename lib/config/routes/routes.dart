import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:registration_project/modules/screens/WelcomeScreen.dart';

class NavigationRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
     switch(settings.name) {
       case 'welcome-screen':
       return MaterialPageRoute(builder: (_) => WelcomeScreen());
       default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
     }
  } 
}