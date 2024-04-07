import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../custom widgets/bottom_navigation.dart';
import '../custom widgets/company_card.dart';
import '../custom widgets/locations_container.dart';
import '../custom widgets/search_product.dart';
import '../custom widgets/sidebar.dart';
import 'categories.dart';

class MyHomePage extends StatefulWidget {
  final title;
  const MyHomePage({super.key, this.title});

  // This widget is the home page of your application. It is stateful, meaning




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentIndex = 0;
  List<String> names = ["Prescription", "First Aid","Woman's health", "Men's health", "Anti-Natal"];
  List<String> allCategories = ["Prescription", "First Aid","Woman's health", "Men's health", "Anti-Natal", "Prescription", "First Aid","Woman's health", "Men's health", "Anti-Natal"];



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        foregroundColor: Theme.of(context).colorScheme.background,

        title: const Center(child: Text("Pharmacies")),
        actions: const [
          Icon(Icons.person)
        ],
      ),
      drawer: const SideBarMenu(),
      body:  Column(
        children: [
          const SearchProduct(),
          const LocationsContainer(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child:
                Text(
                  "Top Search",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                  ),

                )
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      color: Colors.blue
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 150,
            child: ListView.builder(
              itemCount: names.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {

                return  CompanyCard(height: 90.0, width: 150.0, name: names[index],);

              },

            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child:
                Text(
                  "All Categories",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                  ),

                )
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      color: Colors.blue
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20
              ),
              itemCount: allCategories.length,
              itemBuilder: (BuildContext context, int index) {
                return CompanyCard(height: 60.0, width: 150.0, name: allCategories[index],);
              },
            ),
          )


        ],
      ),
      bottomNavigationBar: BottomNavBar(currentIndex: _currentIndex,),
    );
  }
}