import 'package:flutter/material.dart';
import 'package:tourist/custom_widgets/save_page_top_buttons.dart';
import 'package:tourist/custom_widgets/seachTextSection.dart';

import '../custom_widgets/custom_appbar.dart';

class SavedStuffPage extends StatefulWidget {
  const SavedStuffPage({super.key});

  @override
  State<SavedStuffPage> createState() => _SavedStuffPageState();
}

class _SavedStuffPageState extends State<SavedStuffPage> {
  List buttonContents = [
    "Attractions",
    "Restaurants",
    "Trips",
    "Locations",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Saved"),
      body: Column(
        children: [
          const SearchTextSection(),

          Gap()

          Container(
            height: 30,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: buttonContents.length,
              itemBuilder: (BuildContext context, int index) {
                return SavedPageTopButton(
                    content: buttonContents[index],
                    isSelected: index == 0 ? true : false);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 10);
              },
            ),
          )
        ],
      ),
    );
  }
}
