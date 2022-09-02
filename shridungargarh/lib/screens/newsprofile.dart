import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shridungargarh/utils/constent.dart';
import 'package:get/get.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "ताज़ा खबर",
                  style: TextStyle(
                      color: kBlackColor,
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
                  height: h * 0.23,
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
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(left: 12, right: 12, bottom: 12),
                      height: h * 0.14,
                      width: w * 01,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
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
                            height: h * 0.15,
                            width: w * 0.32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: kPrimaryColor,
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/imagesvg/supermecourt.jpg',
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: h * 0.07,
                            width: w * 0.53,
                            child: Text(
                              'Supreme Court Judge Who Heard Nupur Sharma Plea Slams Personal Attacks',
                              style: TextStyle(
                                  color: ksubprime,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                              maxLines: 3,
                            ),
                          ),
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      )),
    );
  }
}
