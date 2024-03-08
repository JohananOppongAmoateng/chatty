import 'package:flutter/material.dart';
import 'package:tourist/custom_widgets/save_page_top_buttons.dart';
import 'package:tourist/custom_widgets/saved_stuff_page_card.dart';
import 'package:tourist/custom_widgets/seachTextSection.dart';

import '../custom_widgets/custom_appbar.dart';
import "package:gap/gap.dart";

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

          const Gap(10),

          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(

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
                  return const Gap(10);
                },
              ),
            ),
          ),
          
          const Gap(10),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: const [

                  SavedStuffPageCard(),
                  Gap(10),
                  SavedStuffPageCard(),
                  Gap(10),
                  SavedStuffPageCard(),
                  Gap(10),
                  SavedStuffPageCard(),
                  Gap(10),
                  SavedStuffPageCard(),
                  Gap(10),
                  SavedStuffPageCard(),
                  Gap(10),
                  SavedStuffPageCard(),
                  Gap(10),
                  SavedStuffPageCard(),
                  Gap(10),
                  SavedStuffPageCard(),
                  Gap(10),
                  SavedStuffPageCard(),

                ],

              ),
            ),
          )
        ],
      ),
    );
  }
}
