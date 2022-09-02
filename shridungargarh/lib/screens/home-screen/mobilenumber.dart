import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shridungargarh/screens/newsprofile.dart';
import 'package:shridungargarh/utils/constent.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import '../dftbutton.dart';
class MobileNumbers extends StatefulWidget {
  const MobileNumbers({Key? key}) : super(key: key);

  @override
  State<MobileNumbers> createState() => _MobileNumbersState();
}

class _MobileNumbersState extends State<MobileNumbers> {
  ScrollController _controller = ScrollController();
  int  _numberCtrl = 7300070977;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "टेंट हाउस",
                style: TextStyle(
                    color: ksubprime,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(5),
                  width: w * 0.8,
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: kWhiteColor.withOpacity(0.20),
                            spreadRadius: 2,
                            blurRadius: 4),
                      ],
                      image: DecorationImage(
                          image: AssetImage('assets/imagesvg/jaipur.jpg'),fit: BoxFit.fill
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: w * 0.8,
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: kWhiteColor.withOpacity(0.20),
                            spreadRadius: 2,
                            blurRadius: 4),
                      ],
                      image: DecorationImage(
                          image: AssetImage('assets/imagesvg/jaipur2.jpg'),fit: BoxFit.fill
                      )
                  ),
                )
              ],
              options: CarouselOptions(
                height: h * 0.16,
              ),
            ),
            SizedBox(height: h*0.01,),
             Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                width: w * 0.92,
                height: h*0.07,
                decoration: BoxDecoration(
                  color: kBlackColor,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                        color: kWhiteColor.withOpacity(0.20),
                        spreadRadius: 2,
                        blurRadius: 4),
                  ],
                ),
                child: Text('Ads',style: TextStyle(color: kWhiteColor,fontSize: 30),),
              ),

            SizedBox(height: h*0.01,),
            ListView.builder(
                controller: _controller,
                itemCount: 54,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(left: 12, right: 12, bottom: 12),
                    height: h * 0.1,
                    width: w * 01,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: kWhiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: kPrimaryColor.withOpacity(0.1),
                            blurRadius: 7,
                            spreadRadius: 5,
                            offset: Offset(1, 1),
                          )
                        ]),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: h * 0.4,
                          width: w * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: kPrimaryColor,
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/imagesvg/supermecourt.jpg',
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: h*0.010,top: h*0.002),
                              height: h * 0.029,
                              width: w * 0.6,
                              child: Text(
                                'बाबा रामदेव टेंट हाउस',
                                style: TextStyle(
                                    color: ksubprime,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                            Container(
                              alignment:Alignment.center ,
                              padding: EdgeInsets.only(left: w*0.02,right: w*0.02),
                              margin: EdgeInsets.only(left: h*0.010,top: h*0.002),
                              height: h*0.02,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: kBlackColor.withOpacity(0.20)
                              ),
                              child: Text('सत्यनारायण प्रजापत'.toUpperCase()),
                            ),
                            Container(
                              width: w*0.7,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: h*0.03,
                                    width: w * 0.15,
                                    margin: EdgeInsets.only(left: h*0.010,top: h*0.003,right: h*0.010),
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        primary: kBlackColor,
                                        side: BorderSide(color: kPrimaryColor,width: 2),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      child: Text('Call'),
                                      onPressed: () async{
                                          FlutterPhoneDirectCaller.callNumber(_numberCtrl.toString());
                                      },
                                    ),
                                  ),
                                 Container(
                                   alignment: Alignment.center,
                                   height: h*0.03,
                                   width: w*0.2,
                                   margin: EdgeInsets.only(left: h*0.010,top: h*0.003,right: h*0.010),
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                     color: kPrimaryColor,
                                     boxShadow: [
                                       BoxShadow(
                                         color: kwhatsapp,
                                         blurRadius: 8,
                                         offset: Offset(0,1)
                                       )
                                     ]
                                   ),
                                   child: Text('WhatsApp',style: TextStyle(color: kWhiteColor),),
                                 )
                                ],
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    )
    );
  }
}
