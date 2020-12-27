import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:la_daurada/UI/Authentication/login.dart';
import 'package:la_daurada/UI/Authentication/signup.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_button.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_mediumtext.dart';
import 'package:la_daurada/UI/Custom_Widget/custom_smalltext.dart';
import 'package:la_daurada/UI/Localization/demo_localization.dart';
import 'package:la_daurada/UI/Localization/language.dart';
import 'package:la_daurada/main.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  void _changeLanguage(Language language) {
    Locale _temp;
    switch(language.languageCode){
      case 'en':
      _temp=Locale(language.languageCode, 'US');
      break;
      case 'es':
      _temp=Locale(language.languageCode, 'ES');
      break;
      default:
      _temp=Locale(language.languageCode, 'US');
    }
    MyApp.setLocale(context, _temp);
    // Locale _locale = await setLocale(language.languageCode);
    // MyApp.setLocale(context, _locale);
  }
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<Language>(
              underline: SizedBox(),
              icon: Icon(
                Icons.language,
                color: Colors.white,
              ),
              onChanged: (Language language) {
                _changeLanguage(language);
              },
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (e) => DropdownMenuItem<Language>(
                      value: e,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            e.flag,
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(e.name)
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 2.0),
                  child: ClipPath(
                    clipper: ClippingClass(),
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: SizeConfig.screenHeight / 3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/welcome.png"))),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              // flex:10 hobe
              flex: 11,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: SizeConfig.safeBlockVertical * 20,
                      width: SizeConfig.safeBlockHorizontal * 60,
                      child: Image.asset(
                        "assets/app-text.png",
                        fit: BoxFit.contain,
                      )),
                  CustomSmallText(
                      DemoLocalizations.of(context).getTranslatevalues('second'), Color(0xff000938)),
                  CustomSmallText(
                       DemoLocalizations.of(context).getTranslatevalues('third'), Color(0xff000938)),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 7.5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.safeBlockHorizontal * 3,
                        right: SizeConfig.safeBlockHorizontal * 3,
                      ),
                      child: CustomButton(
                          context,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FaIcon(FontAwesomeIcons.facebook,
                                  color: Colors.white),
                              CustomMediumText("Login with Facebook")
                            ],
                          ), () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Continue with email",
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
                    height: SizeConfig.safeBlockVertical * 2.5,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child:
                                CustomSmallText("Log in", Color(0xff000938))),
                        Container(
                            height: SizeConfig.safeBlockVertical * 3.5,
                            width: 1,
                            color: Color(0xff9BABC5)),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                            child:
                                CustomSmallText("Sign up", Color(0xff000938))),
                      ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 40, size.width / 2, size.height - 40);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height - 40,
        size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
