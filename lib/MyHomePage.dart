import 'package:appointment_app/Search.dart';
import 'package:flutter/material.dart';
import 'package:appointment_app/Profile.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'Home.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[

            SearchPage(),
            Home(),
            Profile(),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.purple,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('Search',
                style: TextStyle(
                    color: Colors.white
                ),),
              icon: Icon(Icons.search,
                color: Colors.white,
              )
          ),

          BottomNavyBarItem(
              title: Text('Home',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
              icon: Icon(Icons.home,
                color: Colors.white,)
          ),
          BottomNavyBarItem(
              title: Text('My Profile',
                style: TextStyle(
                    color: Colors.white
                ),),
              icon: Icon(Icons.account_circle,
                color: Colors.white,)
          ),
        ],
      ),
    );
  }
}