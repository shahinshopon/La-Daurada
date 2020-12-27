import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';
import 'package:la_daurada/UI/BottomNavBar/pages/slider_image.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_bigtext.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _image = [
    "assets/carousel-img1.png",
    "assets/carousel-img2.png",
    "assets/carousel-img3.png",
    "assets/carousel-img4.png",
    "assets/carousel-img5.png",
    "assets/carousel-img6.png"
  ];
  List url = [
    "https://pub.dev",
    "https://www.google.com",
    "https://pub.dev",
    "https://www.google.com",
    "https://pub.dev",
    "https://www.google.com",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.safeBlockVertical * 3.5,
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 2.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBigText("Home"),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  AspectRatio(
                      aspectRatio: 2,
                      child: Padding(
                          padding: EdgeInsets.all(
                              SizeConfig.safeBlockHorizontal * 1.5),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    SizeConfig.safeBlockHorizontal * 2))),
                            child: CarouselSlider.builder(
                              enableAutoSlider: true,
                              unlimitedMode: true,
                              slideBuilder: (index) {
                                return GestureDetector(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        right: SizeConfig.safeBlockHorizontal *
                                            0.7),
                                    child: Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                SizeConfig.safeBlockHorizontal *
                                                    2)),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        WebViewPage(
                                                            url: url[index])));
                                          },
                                          child: Image.asset(
                                            _image[index],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              slideTransform: CubeTransform(
                                rotationAngle: 0,
                              ),
                              //indicator
                              slideIndicator: CircularSlideIndicator(
                                  indicatorBackgroundColor: Colors.white,
                                  currentIndicatorColor: Colors.red,
                                  padding: EdgeInsets.only(bottom: 10),
                                  indicatorRadius: 4),
                              itemCount: 6,
                            ),
                          ))),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  CustomContainerImage("assets/carousel-img2.png"),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  CustomContainerImage("assets/carousel-img3.png"),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  CustomContainerImage("assets/carousel-img4.png"),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

Widget CustomContainerImage(String url) {
  return AspectRatio(
    aspectRatio: 2.5,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig.safeBlockHorizontal * 2.5))),
      child: ClipRRect(
          borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig.safeBlockHorizontal * 2.5)),
          child: Image.asset(
            url,
            fit: BoxFit.cover,
          )),
    ),
  );
}
