import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_bigtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_smalltext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_textfield.dart';

class UserInformation extends StatefulWidget {
  @override
  _UserInformationState createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  List<String> _first = ['Male', 'Female'];
  String _selectedFirst;

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
                CustomBigText("User information")
              ],
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSmallText("First Name", Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  CustomTextfield("Enter your first name", TextInputType.text,
                      Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  CustomSmallText("Last name", Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  CustomTextfield("Enter your last name", TextInputType.text,
                      Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  CustomSmallText("Email*", Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  CustomTextfield("Enter your email",
                      TextInputType.emailAddress, Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  CustomSmallText("Date of birth*", Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  CustomTextfield(
                      "DD/MM/YYYY", TextInputType.number, Color(0xff9BABC5)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  CustomSmallText("Gender*", Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  //Gender-textfield
                  TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(
                              right: SizeConfig.safeBlockHorizontal * 4,
                              left: SizeConfig.safeBlockHorizontal * 4),
                          child: DropdownButtonFormField(
                            icon: Image.asset(
                              "assets/arrow-down.png",
                              height: SizeConfig.safeBlockVertical * 3.4,
                            ), // Not necessary for Option 1
                            value: _selectedFirst,
                            hint: Text("Select your gender"),

                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent))),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedFirst = newValue;
                              });
                            },
                            items: _first.map((location) {
                              return DropdownMenuItem(
                                child: new Text(location),
                                value: location,
                              );
                            }).toList(),
                          ),
                        ),
                        hintText: "Select your gender",
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
                  CustomSmallText("ID Number", Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  CustomTextfield(
                      "XXXXXXXXA", TextInputType.number, Color(0xff9BABC5)),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
