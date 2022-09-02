// ignore_for_file: prefer_const_constructors, unnecessary_new
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shridungargarh/screens/home-screen/mobilenumber.dart';
import 'package:shridungargarh/screens/home-screen/startpage.dart';

import '../../utils/constent.dart';
import '../intro-screen/login-mobile-number.dart';
import '../newsprofile.dart';
import '../shopping.dart';

class HomeNav extends StatefulWidget {
  var index;

  HomeNav({required this.index});

  @override
  _HomeNavState createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int _index = 0;
  List widgets = <Widget>[
    FirstPage(),
    NewsPage(),
    MobileNumbers(),
    Shopping(),
  ];

  @override
  void initState() {
    super.initState();
    if (widget.index != null) {
      _index = widget.index;

      // runApi();
    }
  }

  //LanguageChange languageChange = new LanguageChange();
  GlobalKey globalKey = new GlobalKey(debugLabel: 'btm_app_bar');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: widgets.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 20,
          backgroundColor: Colors.white,
          currentIndex: _index,
          type: BottomNavigationBarType.fixed,
          // showSelectedLabels: true,
          selectedIconTheme: IconThemeData(color: kPrimaryColor),
          unselectedIconTheme: IconThemeData(color: kGreyColor),
          selectedLabelStyle: TextStyle(
              fontSize: 12,
              color: kPrimaryColor,
              fontWeight: FontWeight.w400),
          unselectedLabelStyle: TextStyle(fontSize: 12, color: kGreyColor),
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: kTitleColor,
          onTap: (page) {
            setState(() {
              _index = page;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: SvgPicture.asset(
                  'assets/imagesvg/home.svg',
                  width: 20,
                  color: _index == 0 ? kPrimaryColor : kTitleColor,
                ),
              ),

              //dashboard
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: SvgPicture.asset(
                  'assets/imagesvg/news.svg',
                  width: 20,
                  color: _index == 1 ? kPrimaryColor : kTitleColor,
                ),
              ),

              //dashboard
              label: "News",
            ),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: SvgPicture.asset(
                    'assets/imagesvg/telephone.svg',
                    width: 18,
                    color: _index == 2 ? kPrimaryColor : kTitleColor,
                  ),
                ),

                //Enquiry
                label: "Mobile number"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 3.0),
                  child: SvgPicture.asset(
                    'assets/imagesvg/shopping.svg',
                    width: 20,
                    color: _index == 3 ? kPrimaryColor : kTitleColor,
                  ),
                ),

                //Menu
                label: "Shopping")
          ]),
    );
  }
}
