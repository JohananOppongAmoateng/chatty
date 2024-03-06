import 'package:flutter/material.dart';
import 'package:tourist/custom_widgets/seachTextSection.dart';

import '../custom_widgets/bottomNavBar.dart';
import '../custom_widgets/custom_appbar.dart';

class RegionsInGhanaPage extends StatefulWidget {
  const RegionsInGhanaPage({super.key});

  @override
  State<RegionsInGhanaPage> createState() => _RegionsInGhanaPageState();
}

class _RegionsInGhanaPageState extends State<RegionsInGhanaPage> {
  var regions = [
    {
      "region": "Region name",
      "picture": "IMG-20240305-WA0015.jpg",
    },
    {
      "region": "Region name",
      "picture": "IMG-20240305-WA0016.jpg",
    },
    {
      "region": "Region name",
      "picture": "IMG-20240305-WA0017.jpg",
    },
    {
      "region": "Region name",
      "picture": "IMG-20240305-WA0018.jpg",
    },
    {
      "region": "Region name",
      "picture": "IMG-20240305-WA0019.jpg",
    },
    {
      "region": "Region name",
      "picture": "IMG-20240305-WA0020.jpg",
    },
    {
      "region": "Region name",
      "picture": "IMG-20240305-WA0021.jpg",
    },
    {
      "region": "Region name",
      "picture": "IMG-20240305-WA0024.jpg",
    },
    {
      "region": "Region name",
      "picture": "IMG-20240305-WA0026.jpg",
    },
    {
      "region": "Region name",
      "picture": "IMG-20240305-WA0027.jpg",
    },
    {
      "region": "Region name",
      "picture": "IMG-20240305-WA0028.jpg",
    },
    {
      "region": "Region name",
      "picture": "IMG-20240305-WA0029.jpg",
    },
    {
      "region": "Region name",
      "picture": "IMG-20240305-WA0033.jpg",
    },
    {
      "region": "Region name",
      "picture": "IMG-20240305-WA0038.jpg",
    },
    {
      "region": "Region name",
      "picture": "IMG-20240305-WA0040.jpg",
    },
    {
      "region": "Region name",
      "picture": "IMG-20240305-WA0042.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Tourist Attraction"),
      body: Column(
        children: [
          const SearchTextSection(),
          const Text("Region in Ghana"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: regions.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GridTile(
                      footer: Text(
                        regions[index]["region"]!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/${regions[index]["picture"]!}",
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
      
      bottomNavigationBar: BottomNavBar(currentIndex: 0,),
    );
  }
}
