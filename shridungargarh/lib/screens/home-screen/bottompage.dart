
import 'package:flutter/material.dart';
import 'package:shridungargarh/screens/home-screen/startpage.dart';
import 'package:shridungargarh/utils/constent.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import '../newsprofile.dart';
import '../shopping.dart';


class bottombar extends StatefulWidget {
  const bottombar({Key? key}) : super(key: key);
  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int _selectindex = 1;

  static const List<Widget> _widgetOption = <Widget>[
    FirstPage(),
    Shopping(),
    NewsPage(),
    Shopping(),
  ];

  void _onitemTape(int index) {
    setState(() {
      _selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOption.elementAt(_selectindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
              size: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined,
              size: 20,),
            label: 'My',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_outlined,
              size: 20,
            ),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(RpgAwesome.ammo_bag,
              size: 20,
            ),
            label: 'Shopping',
          ),
        ],
        currentIndex: _selectindex,
        selectedItemColor: ksubprime,
        unselectedItemColor: Colors.black45,
        selectedIconTheme: IconThemeData(color: ksubprime),
        unselectedIconTheme: IconThemeData(color: Colors.black),
        onTap: _onitemTape,
        backgroundColor: Colors.white,
        selectedLabelStyle:  TextStyle(
          color: ksubprime,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
