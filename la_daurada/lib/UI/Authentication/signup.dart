import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';
import 'package:la_daurada/UI/Authentication/login.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_bigtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_button.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_mediumtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_smalltext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_textfield.dart';
import 'package:la_daurada/UI/Localization/demo_localization.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _passwordVisible = true;

  @override
  void initState() {
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.safeBlockVertical * 5,
            ),
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
                CustomBigText( DemoLocalizations.of(context).getTranslatevalues('sign-up'))
              ],
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSmallText(DemoLocalizations.of(context).getTranslatevalues('first-name'), Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  CustomTextfield(DemoLocalizations.of(context).getTranslatevalues('enter-first-name'), TextInputType.text,
                      Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  CustomSmallText(DemoLocalizations.of(context).getTranslatevalues('last-name'), Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  CustomTextfield(DemoLocalizations.of(context).getTranslatevalues('enter-last-name'), TextInputType.text,
                      Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  CustomSmallText(DemoLocalizations.of(context).getTranslatevalues('email'), Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  CustomTextfield(DemoLocalizations.of(context).getTranslatevalues('enter-email'),
                      TextInputType.emailAddress, Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  CustomSmallText(DemoLocalizations.of(context).getTranslatevalues('password'), Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                        hintText: DemoLocalizations.of(context).getTranslatevalues('enter-pass'),
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            !_passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Color(0xff9BABC5),
                            size: SizeConfig.safeBlockVertical * 3.4,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        hintStyle: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: SizeConfig.safeBlockVertical * 2.1,
                          color: Color(0xff000938),
                        ),
                        filled: true,
                        fillColor: Color(0xffEEF2FD),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(
                                SizeConfig.safeBlockHorizontal * 2.5)),
                            borderSide: BorderSide.none)),
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  RichText(
                      text: TextSpan(
                          text: DemoLocalizations.of(context).getTranslatevalues('register-text'),
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: SizeConfig.safeBlockVertical * 1.8,
                            color: Color(0xff9BABC5),
                          ),
                          children: [
                        TextSpan(
                          text: DemoLocalizations.of(context).getTranslatevalues('privacy'),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                            },
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: SizeConfig.safeBlockVertical * 1.8,
                            color: Color(0xff6B75FF),
                          ),
                        )
                      ])),
                  RichText(
                      text: TextSpan(
                          text: DemoLocalizations.of(context).getTranslatevalues('policy'),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                            },
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: SizeConfig.safeBlockVertical * 1.8,
                            color: Color(0xff6B75FF),
                          ),
                          children: [
                        TextSpan(
                          text: DemoLocalizations.of(context).getTranslatevalues('and-the'),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                            },
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: SizeConfig.safeBlockVertical * 1.8,
                            color: Color(0xff9BABC5),
                          ),
                        ),
                        TextSpan(
                          text: DemoLocalizations.of(context).getTranslatevalues('terms & condition'),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                            },
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: SizeConfig.safeBlockVertical * 1.8,
                            color: Color(0xff6B75FF),
                          ),
                        )
                      ])),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            CustomButton(context, CustomMediumText(DemoLocalizations.of(context).getTranslatevalues('registration')), () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            }),
          ],
        ),
      )),
    );
  }
}
