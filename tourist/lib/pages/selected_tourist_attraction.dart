import 'package:flutter/material.dart';
import 'package:tourist/custom_widgets/custom_appbar.dart';

import '../custom_widgets/seachTextSection.dart';
import 'package:gap/gap.dart';

class SelectedRegionTouristAttractionPage extends StatefulWidget {
  const SelectedRegionTouristAttractionPage({super.key});

  @override
  State<SelectedRegionTouristAttractionPage> createState() => _SelectedRegionTouristAttractionPageState();
}

class _SelectedRegionTouristAttractionPageState extends State<SelectedRegionTouristAttractionPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBar(context, title: "Tourist Attraction"),


      body:  ListView(
          children: [

            ClipRRect(
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),

              child: Container(
                height: 300,
                width: double.infinity,
                // color: Colors.black,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/IMG-20240305-WA0017.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Column(
                  children: [
                    SearchTextSection(),

                    Text(
                      "Greater Accra Region",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),

                    Text(
                      "Tourist Attractions",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Gap(10),

            const Center(
              child: Text(
                "Accra Metropolitan Area",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const Gap(10),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(235, 249, 235, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )
                    ),
                    child: Row(

                      children: [
                        ClipRRect(

                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),

                          child: Image.asset(


                            "assets/images/IMG-20240305-WA0019.jpg",
                            fit: BoxFit.cover,
                            width: 100,

                          ),
                        ),

                        const Gap(10),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                child: const Text(
                                  "Jamestown LightHouse",
                                  style: TextStyle(
                                    // fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Gap(10),

                              const Text(
                                  "Location: Downtown Accra"
                              )
                            ],


                          ),
                        )
                      ],

                    ),

                  ),
                  Gap(10),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(235, 249, 235, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )
                    ),
                    child: Row(

                      children: [
                        ClipRRect(

                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),

                          child: Image.asset(


                            "assets/images/IMG-20240305-WA0019.jpg",
                            fit: BoxFit.cover,
                            width: 100,

                          ),
                        ),

                        const Gap(10),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                child: const Text(
                                  "Jamestown LightHouse",
                                  style: TextStyle(
                                    // fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Gap(10),

                              const Text(
                                  "Location: Downtown Accra"
                              )
                            ],


                          ),
                        )
                      ],

                    ),

                  ),
                ],
              ),
            ),


            const Center(
              child: Text(
                "Tema Municipal Area",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(235, 249, 235, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )
                    ),
                    child: Row(

                      children: [
                        ClipRRect(

                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),

                          child: Image.asset(


                            "assets/images/IMG-20240305-WA0019.jpg",
                            fit: BoxFit.cover,
                            width: 100,

                          ),
                        ),

                        const Gap(10),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                child: const Text(
                                  "Jamestown LightHouse",
                                  style: TextStyle(
                                    // fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Gap(10),

                              const Text(
                                  "Location: Downtown Accra"
                              )
                            ],


                          ),
                        )
                      ],

                    ),

                  ),
                  const Gap(10),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(235, 249, 235, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )
                    ),
                    child: Row(

                      children: [
                        ClipRRect(

                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),

                          child: Image.asset(


                            "assets/images/IMG-20240305-WA0019.jpg",
                            fit: BoxFit.cover,
                            width: 100,

                          ),
                        ),

                        const Gap(10),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                child: const Text(
                                  "Jamestown LightHouse",
                                  style: TextStyle(
                                    // fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Gap(10),

                              const Text(
                                  "Location: Downtown Accra"
                              )
                            ],


                          ),
                        )
                      ],

                    ),

                  ),
                ],
              ),
            ),






          ],
      )
    );
  }
}
