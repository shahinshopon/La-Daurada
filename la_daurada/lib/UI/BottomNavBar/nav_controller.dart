import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';
import 'package:la_daurada/UI/BottomNavBar/pages/eventpage.dart';
import 'package:la_daurada/UI/BottomNavBar/pages/homepage.dart';
import 'package:la_daurada/UI/BottomNavBar/pages/membership_card.dart';
import 'package:la_daurada/UI/BottomNavBar/pages/profilepage.dart';
import 'package:la_daurada/UI/BottomNavBar/pages/ticketspage.dart';
import 'package:la_daurada/UI/Localization/demo_localization.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;
  final pages = [HomePage(), Event(), Ticket(), MembershipCard(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Image.asset("assets/home-icon.png",height:SizeConfig.safeBlockVertical*3),
              title: Text(DemoLocalizations.of(context).getTranslatevalues('home')),
              selectedColor: Colors.purple,
            ),

            /// Event
            SalomonBottomBarItem(
              icon: Image.asset("assets/event-icon.png",height:SizeConfig.safeBlockVertical*3),
              title: Text(DemoLocalizations.of(context).getTranslatevalues('event')),
              selectedColor: Colors.pink,
            ),

            /// Ticket
            SalomonBottomBarItem(
              icon: Image.asset("assets/ticket-icon.png",height:SizeConfig.safeBlockVertical*3),
              title: Text(DemoLocalizations.of(context).getTranslatevalues('ticket')),
              selectedColor: Colors.blueAccent,
            ),

            /// Membership-card
            SalomonBottomBarItem(
              icon: Image.asset("assets/membership-icon.png",height:SizeConfig.safeBlockVertical*3),
              title: Text(DemoLocalizations.of(context).getTranslatevalues('membership')),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Image.asset("assets/profile-icon.png",height:SizeConfig.safeBlockVertical*3),
              title: Text(DemoLocalizations.of(context).getTranslatevalues('profile')),
              selectedColor: Colors.teal,
            ),
          ],
        ),
        body: pages[_currentIndex]);
  }
}
