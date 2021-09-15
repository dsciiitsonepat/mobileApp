import 'package:dsc_iiits/screens/events.dart';
import 'package:dsc_iiits/screens/homeScreen.dart';
import 'package:dsc_iiits/screens/projects.dart';
import 'package:dsc_iiits/screens/team.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Home extends StatefulWidget {

  void pageMaker(current_index) {

  }

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  Widget _page = HomeScreen();
  void _pageSelecter(selecedIndex) {
    if (selecedIndex == 0) {
      _page = HomeScreen();
    }
    else if (selecedIndex == 1) {
      _page = Team();
    }
    else if (selecedIndex == 2) {
      _page = Events();
    }
    else {
      _page = Projects();
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _page,
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 20,
        curve: Curves.easeIn,

        onItemSelected: (index) => setState(() {
          _currentIndex = index;
          _pageSelecter(index);

        }),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Color(0xffF44336),
            textAlign: TextAlign.center,

          ),
          BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: Text('Team'),
            activeColor: Color(0xff2196F3),
            textAlign: TextAlign.center,

          ),
          BottomNavyBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text(
              'Events',
            ),
            activeColor: Color(0xff4CAF50),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.work),
            title: Text('Projects'),
            activeColor: Color(0xffFFC107),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
