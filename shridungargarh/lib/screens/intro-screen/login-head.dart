import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shridungargarh/utils/constent.dart';

import 'login-mobile-number.dart';
import 'login-otp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: h * 0.02,
            vertical: h * 0.06,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Welcome to\nShri Dungargarh',
                  style: TextStyle(
                      color: ksubprime,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: h * 0.01, vertical: h * 0.01),
                height: h * 0.067,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: kBlackColor),
                ),
                child: TabBar(
                  unselectedLabelColor: kBlackColor,
                  unselectedLabelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                  labelStyle: TextStyle(
                      color: kBlackColor, fontWeight: FontWeight.bold),
                  indicator: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(
                      text: 'Phone Number',
                    ),
                    Tab(
                      text: 'OTP',
                    ),
                  ],
                ),
              ),
              Expanded(
                // ignore: prefer_const_literals_to_create_immutables
                child: TabBarView(children: [
                  MobileNumber(),
                  OtpScreen()
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
