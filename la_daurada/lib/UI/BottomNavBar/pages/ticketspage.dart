import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_bigtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_smalltext.dart';

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
            CustomBigText("Tickets"),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 2.5,
            ),
            ReusebleCard("assets/scanner.png", "Loco Lunes",
                "LUN, 31 OCT 2020 | 23:59 - 06:00", "GRATIS"),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 3.5,
            ),
            ReusebleCard("assets/scanner.png", "Un Jueves Tonto",
                "SÁB, 31 OCT 2020 | 23:59 - 06:00", "15€       "),
          ],
        ),
      )),
    );
  }
}

Widget ReusebleCard(
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
                      CustomSmallText("1", Color(0xff9BABC5))
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
