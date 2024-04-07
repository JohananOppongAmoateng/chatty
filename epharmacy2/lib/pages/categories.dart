import 'package:carousel_slider/carousel_slider.dart';
import 'package:epharmacy/custom%20widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../custom widgets/company_card.dart';
import '../custom widgets/locations_container.dart';
import '../custom widgets/search_product.dart';
import '../custom widgets/sidebar.dart';
import 'categories.dart';
import 'homepage.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  var _currentIndex = 1;
  List<String> names = ["Prescription", "First Aid", "Woman's health", "Men's health", "Anti-Natal"];
  List<String> allCategories = ["Prescription", "First Aid","Woman's health", "Men's health", "Anti-Natal", "Prescription", "First Aid","Woman's health", "Men's health", "Anti-Natal"];



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        foregroundColor: Theme.of(context).colorScheme.background,

        title: const Center(child: Text("Companies")),
        actions: const [
          Icon(Icons.person)
        ],
      ),
      drawer: const SideBarMenu(),
      body:  Column(
        children: [
          const SearchProduct(),



          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 150,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return const CompanyCard(height: 70.0, width: double.infinity, name: "Company Name",);

                    },
                  );
                }).toList(),
              ),
            ),
          ),


          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10
              ),
              itemCount: allCategories.length,
              itemBuilder: (BuildContext context, int index) {
                return const CompanyCard(height: 70.0, width: 100.0, name: "Company Name",);
              },
            ),
          )

        ],
      ),
      bottomNavigationBar: BottomNavBar(currentIndex: _currentIndex,),
    );
  }
}
