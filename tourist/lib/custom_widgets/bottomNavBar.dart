import 'package:flutter/material.dart';
import "package:salomon_bottom_bar/salomon_bottom_bar.dart";

class BottomNavBar extends StatefulWidget {
  int currentIndex;
  BottomNavBar({super.key, required  this.currentIndex});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: widget.currentIndex,
      items: [

        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),

        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),

        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),

        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),

        ),

      ],
    );
  }
}
