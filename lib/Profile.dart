import 'package:flutter/material.dart';

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

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft:  Radius.circular(20)
                        ),
                      )
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
}
