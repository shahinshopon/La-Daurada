import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:la_daurada/UI/BottomNavBar/pages/eventpage.dart';
import 'package:la_daurada/UI/BottomNavBar/pages/homepage.dart';
import 'package:la_daurada/UI/BottomNavBar/pages/membership_card.dart';
import 'package:la_daurada/UI/BottomNavBar/pages/profilepage.dart';
import 'package:la_daurada/UI/BottomNavBar/pages/ticketspage.dart';
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
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.purple,
            ),

            /// Event
            SalomonBottomBarItem(
              icon: Icon(Icons.event),
              title: Text("Event"),
              selectedColor: Colors.pink,
            ),

            /// Ticket
            SalomonBottomBarItem(
              icon: FaIcon(FontAwesomeIcons.ticketAlt),
              title: Text("Ticket"),
              selectedColor: Colors.blueAccent,
            ),

            /// Membership-card
            SalomonBottomBarItem(
              icon: Icon(Icons.star_outline),
              title: Text("Membership"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person_outline),
              title: Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
        body: pages[_currentIndex]);
  }
}
