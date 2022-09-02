import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shridungargarh/screens/home-screen/mobilenumber.dart';
import 'package:shridungargarh/utils/constent.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
    backgroundColor: kWhiteColor,
    elevation: 0,
    title: Text(
      'श्री डूँगरगढ़',
      style: TextStyle(
        color: ksubprime,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    ),
      ),
      body: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                      image: AssetImage('assets/imagesvg/jaipur.jpg'),
                      fit: BoxFit.fill)),
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
                      image: AssetImage('assets/imagesvg/jaipur2.jpg'),
                      fit: BoxFit.fill)),
            )
          ],
          options: CarouselOptions(
            height: h * 0.23,
          ),
        ),
        SizedBox(
          height: h * 0.02,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: w * 0.01),
          padding: EdgeInsets.only(
              left: w * 0.04,
              right: w * 0.03,
              bottom: h * 0.01,
              top: h * 0.02),
          width: w * 1,
          decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'श्रेणी के अनुसार खोजें',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              GridView.builder(
                controller: _controller,
                  shrinkWrap: true,
                  itemCount: 20,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: h*0.002,
                    childAspectRatio: 0.7
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: h * 0.15,
                      width: w * 0.25,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileNumbers()));
                            },
                            child: Container(
                              height: h * 0.08,
                              width: w * 0.177,
                              padding: EdgeInsets.all(14),
                              decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                                color: Colors.pinkAccent.withOpacity(0.14),
                                shape: BoxShape.rectangle,
                              ),
                              child: Image.asset(
                                'assets/imagesvg/tenthouse.png',
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: h * 0.004),
                            alignment: Alignment.topCenter,
                            height: h * 0.05,
                            width: w * 0.3,
                            child: Text(
                              'टेंट हाउस',
                              style: TextStyle(
                                  color: ksubprime.withOpacity(0.80),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    );
                  })
            ],
          ),
        )
      ],
    ),
      ),
    );
  }
}
