import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';
import 'package:la_daurada/UI/BottomNavBar/pages/user_info.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_bigtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_smalltext.dart';

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
            child: CustomBigText("Profile"),
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
                  "alexa@gmail.com",
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
                ReusebleRow("assets/chat.png", "Message", Color(0xff000938)),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 2,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UserInformation()));
                  },
                  child: ReusebleRow("assets/user.png", "User information", Color(0xff000938))),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 2,
                ),
                ReusebleRow("assets/privacy.png", "Privacy policy", Color(0xff000938)),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 2,
                ),
                ReusebleRow("assets/device.png", "Device ID: 1206354", Color(0xff9BABC5)),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 2,
                ),
                ReusebleRow("assets/version.png", "App version: 1.0.1", Color(0xff9BABC5)),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 2,
                ),
                ReusebleRow("assets/logout.png", "Log out", Color(0xff9BABC5)),
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
