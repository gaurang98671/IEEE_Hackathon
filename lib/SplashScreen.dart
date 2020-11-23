import 'package:appointment_app/MyHomePage.dart';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockcheckForSession().then((status) async {
      if (await FirebaseAuth.instance.currentUser != null) {


        User u=await FirebaseAuth.instance.currentUser;
        print(u.email);
        SharedPreferences pref= await SharedPreferences.getInstance();
        await pref.setString('user_email', u.email);


        _navigateToHome();
      } else {
        _navigateToLogin();
      }
    });
  }

//mock checking if user is already logged in
//later to be replaced by authentication api
  Future<bool> _mockcheckForSession() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    return false;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => MyHomePage()));

  }

  void _navigateToLogin() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {


    return Container(
      color: Colors.blue,
      child: Text("This will be splash screen",
      style: TextStyle(
        color: Colors.white
      ),
      ),
    );
  }
}