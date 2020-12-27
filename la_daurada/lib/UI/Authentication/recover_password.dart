import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_bigtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_button.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_mediumtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_smalltext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_textfield.dart';

class RecoverPassword extends StatefulWidget {
  @override
  _RecoverPasswordState createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    SizedBox(
                      width: SizeConfig.safeBlockHorizontal * 3,
                    ),
                    CustomBigText("Recover password")
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomSmallText("Email*", Color(0xff000938)),
                      SizedBox(
                        height: SizeConfig.safeBlockVertical * 1,
                      ),
                      CustomTextfield(
                          "Enter your email", TextInputType.emailAddress, Color(0xff000938)),
                      SizedBox(
                        height: SizeConfig.safeBlockVertical * 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 3,
                ),
                CustomButton(
                    context, CustomMediumText("Recover password"), () {}),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 2,
                ),
                Center(
                  child: new Text(
                    "We have sent you an email to ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.safeBlockVertical * 2.2,
                      color: Color(0xff2dce98),
                    ),
                  ),
                ),
                Center(
                  child: new Text(
                    "recover your password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.safeBlockVertical * 2.2,
                      color: Color(0xff2dce98),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(),
          ),
        ],
      )),
    );
  }
}
