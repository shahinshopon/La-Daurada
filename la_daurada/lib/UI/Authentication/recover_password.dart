import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_bigtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_button.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_mediumtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_smalltext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_textfield.dart';
import 'package:la_daurada/UI/Localization/demo_localization.dart';

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
                    CustomBigText(DemoLocalizations.of(context).getTranslatevalues('recover-pass'))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomSmallText(DemoLocalizations.of(context).getTranslatevalues('email'), Color(0xff000938)),
                      SizedBox(
                        height: SizeConfig.safeBlockVertical * 1,
                      ),
                      CustomTextfield(
                          DemoLocalizations.of(context).getTranslatevalues('enter-email'), TextInputType.emailAddress, Color(0xff000938)),
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
                    context, CustomMediumText(DemoLocalizations.of(context).getTranslatevalues('recover-pass')), () {}),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 2,
                ),
                Center(
                  child: new Text(
                    DemoLocalizations.of(context).getTranslatevalues('sent-email'),
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
                   DemoLocalizations.of(context).getTranslatevalues('recover-text'),
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
