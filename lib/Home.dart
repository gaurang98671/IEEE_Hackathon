import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple,
        title: Text("Home"),
      ),
      body: Container(
        color: Colors.purple,
        child: Column(
          children: [
            SizedBox(
              height: 149,
            ),
            Container(
                height: 398,

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
    );
  }
}
