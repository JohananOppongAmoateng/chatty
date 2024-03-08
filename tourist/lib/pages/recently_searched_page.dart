import 'package:flutter/material.dart';
import 'package:tourist/custom_widgets/bottomNavBar.dart';
import 'package:tourist/custom_widgets/seachTextSection.dart';

import '../custom_widgets/custom_appbar.dart';
import 'package:gap/gap.dart';

class RecentlySearchedPage extends StatelessWidget {
  const RecentlySearchedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Recently Searched Places"),
      body: Column(
        children: [
          const SearchTextSection(),
          Expanded(
            child: ListView.separated(
              itemCount: 5,
              separatorBuilder: (BuildContext context, int index) {
                return const Gap(10);
              },
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const Icon(Icons.location_on),
                  title: const Text("Boabeng-Fiema Monkey Sanctuary"),
                  trailing: Container(
                    width: 30,
                    // height: 50,

                    alignment: Alignment.center,
                      decoration:  BoxDecoration(
                        shape: BoxShape.circle,

                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        )
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Icon(Icons.minimize, size: 15,),
                      )),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 0,
      ),
    );
  }
}
