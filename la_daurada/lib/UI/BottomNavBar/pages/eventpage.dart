import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_bigtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_smalltext.dart';

class Event extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.safeBlockVertical * 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 4),
            child: CustomBigText("Upcoming events"),
          ),
          Padding(
            padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 2),
            child: Column(
              children: [
                CustomEventCard(
                  "assets/event1.png",
                  "29",
                  "MAY",
                  "Watch Live Concert",
                  "Pacha Barcelona",
                  "Jue 10:00 - 12:00"
                ),
                SizedBox(
            height: SizeConfig.safeBlockVertical * 2.5,
          ),
           CustomEventCard(
                  "assets/event2.png",
                  "29",
                  "MAY",
                  "Watch Live Concert",
                  "Pacha Barcelona",
                  "Jue 10:00 - 12:00"
                ),

              ],
            ),
          )
        ],
      )),
    );
  }
}

  Widget CustomEventCard(String url,String date,String month,String title,String location,String time) {
    return AspectRatio(
      aspectRatio: 1.45,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(
                SizeConfig.safeBlockHorizontal * 5))),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(
                  SizeConfig.safeBlockHorizontal * 5))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: SizeConfig.safeBlockVertical * 20,
                width: SizeConfig.screenWidth / 1.18,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(
                        SizeConfig.safeBlockHorizontal * 5))),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(
                        SizeConfig.safeBlockHorizontal * 5)),
                    child: Image.asset(
                      url,
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(height: SizeConfig.safeBlockVertical*1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: SizeConfig.safeBlockVertical * 7,
                    width: SizeConfig.safeBlockHorizontal * 14,
                    decoration: BoxDecoration(
                        color: Color(0xffF7FAFF),
                        borderRadius: BorderRadius.all(
                            Radius.circular(
                                SizeConfig.safeBlockHorizontal *
                                    2.5))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomSmallText(date, Color(0xff6B75FF)),
                        new Text(
                          month,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize:
                                SizeConfig.safeBlockVertical * 1.7,
                            color: Color(0xff9babc5),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   
                    children: [
                      CustomSmallText(
                         title,
                          Color(0xff000938)),
                      SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: SizeConfig.safeBlockVertical * 2,
                                color: Color(0xff000938),
                              ),
                              new Text(
                               location,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize:SizeConfig.safeBlockVertical *1.7,
                                  color: Color(0xff9babc5),
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                          Row(
                            children: [
                              Icon(
                                Icons.history,
                                size: SizeConfig.safeBlockVertical * 2,
                                color: Color(0xff000938),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(
                                  right:SizeConfig.safeBlockHorizontal*2 
                                ),
                                child: new Text(
                                  time,
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize:SizeConfig.safeBlockVertical *1.7,
                                    color: Color(0xff9babc5),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

