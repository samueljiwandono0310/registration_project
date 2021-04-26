import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.blue[900],
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue[900],
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.deepPurple,
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
