import 'package:flutter/material.dart';
import 'package:registration_project/config/routes/routes.dart';
import 'package:registration_project/modules/screens/ScheduleVidCallScreen.dart';
import 'package:registration_project/modules/screens/WelcomeScreen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScheduleVidCallScreen(),
      onGenerateRoute: NavigationRoutes.generateRoute,
    );
  }
}
