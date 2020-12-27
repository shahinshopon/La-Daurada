import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';
import 'package:la_daurada/UI/Authentication/recover_password.dart';
import 'package:la_daurada/UI/BottomNavBar/nav_controller.dart';
import 'package:la_daurada/UI/BottomNavBar/pages/homepage.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_bigtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_button.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_mediumtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_smalltext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_textfield.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passwordVisible = true;

  @override
  void initState() {
    _passwordVisible = true;
  }

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
                    CustomBigText("Log in")
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
                      CustomSmallText("Password", Color(0xff000938)),
                      SizedBox(
                        height: SizeConfig.safeBlockVertical * 1,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: !_passwordVisible,
                        decoration: InputDecoration(
                            hintText: "Enter your password",
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
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 3,
                ),
                CustomButton(context, CustomMediumText("Log in"), () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNavController()));
                }),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecoverPassword()));
                  },
                  child: Center(
                    child: new Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.safeBlockVertical * 2,
                        color: Color(0xff9babc5),
                      ),
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
