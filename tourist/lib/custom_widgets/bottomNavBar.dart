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
          icon: const Icon(Icons.map),
          title: const Text("Map"),

        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.location_city),
          title: const Text("Attractions"),

        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.shopping_cart),
          title: const Text("Itemnary"),

        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.home),
          title: const Text("Trip Advisor"),

        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.settings),
          title: const Text("Settings"),

        ),

      ],
    );
  }
}
