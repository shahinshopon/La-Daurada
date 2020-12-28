import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';
import 'package:la_daurada/UI/UserInformation/user_info.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_bigtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_smalltext.dart';
import 'package:la_daurada/UI/Localization/demo_localization.dart';

class Profile extends StatelessWidget {
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
            padding:
                EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 3.5),
            child: CustomBigText(DemoLocalizations.of(context).getTranslatevalues('profile')),
          ),
          SizedBox(
            height: SizeConfig.safeBlockVertical * 4,
          ),
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: SizeConfig.safeBlockVertical * 12,
                  child: Image.asset(
                    "assets/profile.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 2,
                ),
                new Text(
                  DemoLocalizations.of(context).getTranslatevalues('gmail-id'),
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: SizeConfig.safeBlockVertical * 2,
                    color: Color(0xff9babc5),
                  ),
                ),
              ],
            ),
          ),
           SizedBox(
                  height: SizeConfig.safeBlockVertical * 6,
                ),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 6),
            child: Column(
              children: [
                ReusebleRow("assets/chat.png", DemoLocalizations.of(context).getTranslatevalues('message'), Color(0xff000938)),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 2,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UserInformation()));
                  },
                  child: ReusebleRow("assets/user.png", DemoLocalizations.of(context).getTranslatevalues('user-info'), Color(0xff000938))),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 2,
                ),
                ReusebleRow("assets/privacy.png",DemoLocalizations.of(context).getTranslatevalues('privacy-policy'), Color(0xff000938)),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 2,
                ),
                ReusebleRow("assets/device.png", DemoLocalizations.of(context).getTranslatevalues('device-id'), Color(0xff9BABC5)),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 2,
                ),
                ReusebleRow("assets/version.png", DemoLocalizations.of(context).getTranslatevalues('app-version'), Color(0xff9BABC5)),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 2,
                ),
                ReusebleRow("assets/logout.png", DemoLocalizations.of(context).getTranslatevalues('log-out'), Color(0xff9BABC5)),
              ],
            ),
          )
        ],
      )),
    );
  }
}

Widget ReusebleRow(String url, String text, color) {
  return Row(
    children: [
      Image.asset(
        url,
        height: SizeConfig.safeBlockVertical * 3.5,
        
      ),
      SizedBox(
        width: SizeConfig.safeBlockHorizontal * 4,
      ),
      CustomSmallText(text, color)
    ],
  );
}
