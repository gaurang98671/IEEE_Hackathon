import 'package:appointment_app/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Container(
              color: Colors.purple,
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                      height: 427,
                    width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft:  Radius.circular(20)
                        ),
                      ),
                    child: Column(
                      children: [
                        SizedBox(height: 100,),
                        RaisedButton(
                          child: Text("Logout",
                          style: TextStyle(
                            color: Colors.white
                          ),
                          ),
                          color: Colors.redAccent,
                          splashColor: Colors.redAccent[100],
                          onPressed: (){
                            logout();
                          },
                        )
                      ],
                    ),
                  )
                ],
              )
          ),

             Container(
              alignment: FractionalOffset(0.5, 0.25),
              child: Icon(Icons.account_circle,
                color: Colors.blue,
                size: 170,

            ),
          ),
        ],
      ),
    );
  }

  void logout() async{
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    SharedPreferences pref= await SharedPreferences.getInstance();
    pref.clear();
  }
}
