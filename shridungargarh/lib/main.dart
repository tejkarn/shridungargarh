import 'package:flutter/material.dart';
import 'package:shridungargarh/screens/home-screen/bottompage.dart';
import 'package:shridungargarh/screens/home-screen/homenav.dart';
import 'package:shridungargarh/screens/home-screen/mobilenumber.dart';
import 'package:shridungargarh/screens/home-screen/startpage.dart';
import 'package:shridungargarh/screens/intro-screen/login-head.dart';
import 'package:shridungargarh/screens/newsprofile.dart';
import 'package:shridungargarh/screens/shopping.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
