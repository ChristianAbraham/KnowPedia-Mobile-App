import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:knowpedia/Pages/homepage.dart';
import 'Pages/likepage.dart';
import 'Pages/explore.dart';
import 'Pages/write.dart';
import 'Pages/profile.dart';
import 'Components/colors.dart';

// ignore: must_be_immutable
class Navbar extends StatefulWidget {
  int currentIndex = 0;
  List pages = [
    HomePage(),
    const Favorite(),
    const Write(),
    const Explore(),
    const Profile()
  ];

  Navbar(this.currentIndex, {super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages[widget.currentIndex],
      bottomNavigationBar: GNav(
          iconSize: 15,
          gap: 4,
          backgroundColor: warnaUngu,
          color: Colors.white,
          activeColor: warnaOren,
          tabBorderRadius: 30,
          haptic: true,
          tabBackgroundColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 25),
          onTabChange: (index) {
            setState(() {
              widget.currentIndex = index;
            });
          },
          selectedIndex: 0,
          tabs: const [
            GButton(icon: Icons.home, text: "Home"),
            GButton(icon: Icons.favorite, text: "Like"),
            GButton(icon: Icons.add_box_rounded, text: "Write"),
            GButton(icon: Icons.explore, text: "Explore"),
            GButton(icon: Icons.person, text: "Profile"),
          ]),
    );
  }
}
