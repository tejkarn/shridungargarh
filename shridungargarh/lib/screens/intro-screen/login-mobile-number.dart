import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shridungargarh/utils/constent.dart';
class MobileNumber extends StatefulWidget {
  const MobileNumber({Key? key}) : super(key: key);

  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: h*0.05),
              child: TextFormField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                    hintText: "+91 99999227722",
                    focusedBorder:OutlineInputBorder(
                      borderSide:  BorderSide(color: kbordercolor, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: Icon(Icons.phone_iphone,color: ksubprime,),
                    enabledBorder:OutlineInputBorder(
                      borderSide:  BorderSide(color: kbordercolor, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      BorderSide(width: 30),
                    ),
                    contentPadding: EdgeInsets.only(
                        top: Get.height * 0.05, )
                ),
                keyboardType: TextInputType.phone,

              ),
            ),
            SizedBox(height: h*0.05,),
            Container(
              alignment: Alignment.center,
              height: h*0.07,
              width: w*0.9,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: kPrimaryColor,
                      blurRadius: 4
                  )
                ],
                color: ksubprime,
                borderRadius: BorderRadius.circular(12),
              ),child: Text('Send OTP',style: TextStyle(color: kWhiteColor,fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(height: h*0.05,),
            Text('------------------- Or sign up with -------------------',style: TextStyle(color: kBlackColor),),
            SizedBox(height: h*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/imagesvg/google.svg',height: h*0.035,),
                SizedBox(width: w*0.02,),
                Text('Google',style: TextStyle(color: kBlackColor,fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),


          ],
        ),
      ),
    );
  }
}
