import 'package:flutter/material.dart';
import 'package:tourist/custom_widgets/seachTextSection.dart';

import '../custom_widgets/bottomNavBar.dart';
import '../custom_widgets/custom_appbar.dart';
import '../custom_widgets/shop_and_item_card.dart';
import 'package:gap/gap.dart';

class ShopAndItemsPage extends StatelessWidget {
  const ShopAndItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Shop and Items"),

      body: Column(
        children: [
          const SearchTextSection(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: const [
                  Center(
                    child: Text(
                      "Items Purchased",
                      style: TextStyle(
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
            
                  Gap(10),
                  ShopAndItemCard(),
            
                  Gap(20),
                  ShopAndItemCard(),
                  Gap(20),
                  ShopAndItemCard(),
            
            
            
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavBar(currentIndex: 2,),
    );
  }
}
