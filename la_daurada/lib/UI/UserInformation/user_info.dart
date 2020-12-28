import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_bigtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_smalltext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_textfield.dart';
import 'package:la_daurada/UI/Localization/demo_localization.dart';

class UserInformation extends StatefulWidget {
  @override
  _UserInformationState createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  @override
  Widget build(BuildContext context) {
    List<String> _first = [
      DemoLocalizations.of(context).getTranslatevalues('male'),
      DemoLocalizations.of(context).getTranslatevalues('female')
    ];
    String _selectedFirst;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
                CustomBigText(DemoLocalizations.of(context)
                    .getTranslatevalues('user-info'))
              ],
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSmallText(
                      DemoLocalizations.of(context)
                          .getTranslatevalues('info-name'),
                      Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  CustomTextfield(
                      DemoLocalizations.of(context)
                          .getTranslatevalues('enter-first-name'),
                      TextInputType.text,
                      Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  CustomSmallText(
                      DemoLocalizations.of(context)
                          .getTranslatevalues('last-name'),
                      Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  CustomTextfield(
                      DemoLocalizations.of(context)
                          .getTranslatevalues('enter-last-name'),
                      TextInputType.text,
                      Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  CustomSmallText(
                      DemoLocalizations.of(context).getTranslatevalues('email'),
                      Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  CustomTextfield(
                      DemoLocalizations.of(context)
                          .getTranslatevalues('enter-email'),
                      TextInputType.emailAddress,
                      Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  CustomSmallText(
                      DemoLocalizations.of(context)
                          .getTranslatevalues('date-of-birth'),
                      Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  CustomTextfield(
                      DemoLocalizations.of(context)
                          .getTranslatevalues('hint-date'),
                      TextInputType.number,
                      Color(0xff9BABC5)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  CustomSmallText(
                      DemoLocalizations.of(context)
                          .getTranslatevalues('gender'),
                      Color(0xff000938)),
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
                            hint: Text(DemoLocalizations.of(context)
                                .getTranslatevalues('select-gender')),

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
                        hintText: DemoLocalizations.of(context)
                            .getTranslatevalues('select-gender'),
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
                  CustomSmallText(
                      DemoLocalizations.of(context)
                          .getTranslatevalues('id-number'),
                      Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  CustomTextfield(
                      DemoLocalizations.of(context)
                          .getTranslatevalues('hint-id-number'),
                      TextInputType.number,
                      Color(0xff9BABC5)),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
