import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_bigtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_smalltext.dart';
import 'package:la_daurada/UI/Localization/demo_localization.dart';

class Ticket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.safeBlockVertical * 5,
            ),
            CustomBigText(DemoLocalizations.of(context).getTranslatevalues('tickets')),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 2.5,
            ),
            ReusebleCard(context,
            "assets/scanner.png",
             DemoLocalizations.of(context).getTranslatevalues('ticket-first-title'),
             DemoLocalizations.of(context).getTranslatevalues('ticket-subtitle'),
             DemoLocalizations.of(context).getTranslatevalues('ticket-color-first-text')),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 3.5,
            ),
            ReusebleCard(
              context,
              "assets/scanner.png", 
             DemoLocalizations.of(context).getTranslatevalues('ticket-second-title'),
             DemoLocalizations.of(context).getTranslatevalues('ticket-subtitle'),
             DemoLocalizations.of(context).getTranslatevalues('ticket-color-second-text')),
          ],
        ),
      )),
    );
  }
}

Widget ReusebleCard(BuildContext context,
    String url, String titletext, String subtitletext, String colortext) {
  return Card(
    elevation: 0,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(SizeConfig.safeBlockHorizontal * 4))),
    child: Container(
      height: SizeConfig.safeBlockVertical * 16,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig.safeBlockHorizontal * 4))),
      child: Row(
        children: [
          Container(
            height: SizeConfig.safeBlockVertical * 14,
            width: SizeConfig.screenWidth / 3,
            child: Image.asset(
              url,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomSmallText(titletext, Color(0xff000938)),
              new Text(
                subtitletext,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300,
                  fontSize: SizeConfig.safeBlockVertical * 1.7,
                  color: Color(0xff80849c),
                ),
              ),
              Row(
                children: [
                  CustomSmallText(colortext, Color(0xff6B75FF)),
                  SizedBox(
                    width: SizeConfig.safeBlockHorizontal * 22,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person_outline,
                        size: SizeConfig.safeBlockVertical * 2.5,
                        color: Color(0xff9BABC5),
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 1,
                      ),
                      CustomSmallText(DemoLocalizations.of(context).getTranslatevalues('ticket-number'), Color(0xff9BABC5))
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}
