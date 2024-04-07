
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../pages/categories.dart';
import '../pages/homepage.dart';

class BottomNavBar extends StatelessWidget {
  final currentIndex;
  const BottomNavBar({Key? key, required this.currentIndex,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SalomonBottomBar(
      currentIndex: currentIndex,
      onTap: (i) {
        if(i != currentIndex){
          switch(i){
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>   const MyHomePage(title: 'title')),
              );

              break;
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>   const Categories()),
              );

              break;
          }

        }

        print(i);

      },
      items: [
        /// Home
        SalomonBottomBarItem(
          icon: const Icon(Icons.home),
          title: const Text("Home"),
          selectedColor: Theme.of(context).colorScheme.inversePrimary,
        ),

        /// Likes
        SalomonBottomBarItem(
          icon: const Icon(Icons.category),
          title: const Text("Categories"),
          selectedColor: Theme.of(context).colorScheme.inversePrimary,
        ),

        /// Search
        SalomonBottomBarItem(
          icon: const Icon(Icons.shopping_cart),
          title: const Text("Search"),
          selectedColor: Theme.of(context).colorScheme.inversePrimary,
        ),

        /// Profile
        SalomonBottomBarItem(
          icon: const Icon(Icons.person),
          title: const Text("Profile"),
          selectedColor: Theme.of(context).colorScheme.inversePrimary,
        ),
      ],
    );
  }
}
