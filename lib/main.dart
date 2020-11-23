
import 'package:appointment_app/login.dart';
import 'package:flutter/material.dart';
import 'package:appointment_app/MyHomePage.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: LoginPage(),
    );
  }
}

