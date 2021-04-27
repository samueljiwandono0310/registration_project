import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:registration_project/modules/screens/PasswordScreen.dart';
import 'package:registration_project/modules/screens/PersonalInformationScreen.dart';
import 'package:registration_project/modules/screens/ScheduleVidCallScreen.dart';
import 'package:registration_project/modules/screens/WelcomeScreen.dart';

class NavigationRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
     switch(settings.name) {
       case 'welcome-screen':
       return MaterialPageRoute(builder: (_) => WelcomeScreen());
       case 'password-screen':
       return MaterialPageRoute(builder: (_) => PasswordScreen());
       case 'personal-information-screen':
       return MaterialPageRoute(builder: (_) => PersonalInformation());
       case 'schedule-vidcall-screen':
       return MaterialPageRoute(builder: (_) => ScheduleVidCallScreen());
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