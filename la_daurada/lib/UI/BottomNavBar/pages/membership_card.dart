import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_bigtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_smalltext.dart';
import 'package:la_daurada/UI/Localization/demo_localization.dart';

class MembershipCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.safeBlockVertical * 5,
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 4),
              child: CustomBigText(DemoLocalizations.of(context).getTranslatevalues('member-card')),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(
                              SizeConfig.safeBlockHorizontal * 4))),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(
                              SizeConfig.safeBlockHorizontal * 4)),
                          child: Image.asset(
                            "assets/card.png",
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 0.5,
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4),
              child: AspectRatio(
                aspectRatio: 1,
                child: Card(
                  elevation: 0,
                 shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                              SizeConfig.safeBlockHorizontal * 4))
                    ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(
                            SizeConfig.safeBlockHorizontal * 4))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: SizeConfig.safeBlockVertical * 1.2,
                                  backgroundColor: Color(0xff2DCE98),
                                ),
                                SizedBox(
                                  width: SizeConfig.safeBlockHorizontal * 3,
                                ),
                                CustomSmallText(DemoLocalizations.of(context).getTranslatevalues('activated'),
                                 Color(0xff000938))
                              ],
                            ),
                            CustomSmallText(DemoLocalizations.of(context).getTranslatevalues('card-time'), Color(0xff000938))
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2.5,
                        ),
                        Container(
                          height: SizeConfig.safeBlockVertical * 25,
                          width: SizeConfig.safeBlockHorizontal * 43,
                          child: Image.asset(
                            "assets/scanner.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 1.5,
                        ),
                        new Text(
                          DemoLocalizations.of(context).getTranslatevalues('card-text'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: SizeConfig.safeBlockVertical * 2,
                            color: Color(0xff000938),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
