import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shridungargarh/screens/home-screen/bottompage.dart';
import 'package:shridungargarh/utils/constent.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shridungargarh/utils/constent.dart';

import '../home-screen/homenav.dart';
import '../home-screen/mobilenumber.dart';
import '../home-screen/startpage.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);


  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h * 0.01,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Verification Code',
                    style: TextStyle(
                        color: ksubprime,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: h * 0.001,
                  ),
                  Text('We have Sent the code verification to'),
                  SizedBox(height: h*0.02,),
                  Row(
                    children: [
                      Text(
                        '+917300077722',
                        style: TextStyle(
                            fontSize: 15,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: w*0.02,),
                      Text(
                        "Change Phone number?",
                        style: TextStyle(
                            fontSize: 15,
                            color: kBlackColor,
                            fontWeight: FontWeight.w600),
                      ),

                    ],
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: h * 0.10,
                    width: w * 0.15,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: TextStyle(color: ksubprime,fontWeight: FontWeight.bold,   ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: kPrimaryColor, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: kbordercolor, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(width: 30),
                          ),
                          contentPadding: EdgeInsets.only(
                            top: Get.height * 0.05,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.10,
                    width: w * 0.15,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: TextStyle(color: ksubprime,fontWeight: FontWeight.bold,),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: kPrimaryColor, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: kbordercolor, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(width: 30),
                          ),
                          contentPadding: EdgeInsets.only(
                            top: Get.height * 0.05,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.10,
                    width: w * 0.15,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: TextStyle(color: ksubprime,fontWeight: FontWeight.bold,),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: kPrimaryColor, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: kbordercolor, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(width: 30),
                          ),
                          contentPadding: EdgeInsets.only(
                            top: Get.height * 0.05,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.10,
                    width: w * 0.15,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: TextStyle(color: ksubprime,fontWeight: FontWeight.bold,),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: kPrimaryColor, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: kbordercolor, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(width: 30),
                          ),
                          contentPadding: EdgeInsets.only(
                            top: Get.height * 0.05,
                          )),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Resend Code after '),
                  Text('1:30',style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.w500),)
                ],
              ),
              SizedBox(
                height: h * 0.14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: h*0.062,
                    width: w*0.40,
                    decoration: BoxDecoration(
                      color: ksubprime,
                      boxShadow: [
                        BoxShadow(
                          color: kPrimaryColor,
                          blurRadius: 7
                        )
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),child: Text('Resend',style: TextStyle(color: kWhiteColor,fontWeight: FontWeight.w500,fontSize: 18),),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(
                          context, MaterialPageRoute(builder: (context) => HomeNav(index: 0,)), (route) => false);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: h*0.062,
                      width: w*0.40,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: kPrimaryColor,
                              blurRadius: 7
                          )
                        ],
                        color: ksubprime,
                        borderRadius: BorderRadius.circular(12),
                      ),child: Text('Confirm',style: TextStyle(color: kWhiteColor,fontWeight: FontWeight.w500,fontSize: 18),),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
