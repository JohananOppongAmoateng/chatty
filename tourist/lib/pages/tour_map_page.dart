import 'package:flutter/material.dart';
import 'package:tourist/custom_widgets/bottomNavBar.dart';
import 'package:tourist/custom_widgets/custom_appbar.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:tourist/custom_widgets/seachTextSection.dart';
import 'package:gap/gap.dart';


class TourMapPage extends StatefulWidget {
  const TourMapPage({super.key});

  @override
  State<TourMapPage> createState() => _TourMapPageState();
}

class _TourMapPageState extends State<TourMapPage> {

  MapController mapController = MapController(
    // initMapWithUserPosition: const UserTrackingOption(
    //
    // ),
    initPosition: GeoPoint(latitude: 37.7749, longitude: -122.4194), // San Francisco
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Tour Map"),

      body: Stack(
        children: [
          OSMFlutter(
              controller:mapController,
              osmOption: OSMOption(
                userTrackingOption: const UserTrackingOption(
                  enableTracking: true,
                  unFollowUser: false,
                ),
                zoomOption: const ZoomOption(
                  initZoom: 8,
                  minZoomLevel: 3,
                  maxZoomLevel: 19,
                  stepZoom: 1.0,
                ),
                userLocationMarker: UserLocationMaker(
                  personMarker: const MarkerIcon(
                    icon: Icon(
                      Icons.location_history_rounded,
                      color: Colors.red,
                      size: 48,
                    ),
                  ),
                  directionArrowMarker: const MarkerIcon(
                    icon: Icon(
                      Icons.double_arrow,
                      size: 48,
                    ),
                  ),
                ),
                roadConfiguration: const RoadOption(
                  roadColor: Colors.yellowAccent,
                ),
                markerOption: MarkerOption(
                    defaultMarker: const MarkerIcon(
                      icon: Icon(
                        Icons.person_pin_circle,
                        color: Colors.blue,
                        size: 56,
                      ),
                    )
                ),
              )
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                const SearchTextSection(),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                    
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(8),
                            child:  Row(
                              children: [
                                Icon(
                                  Icons.restaurant,
                                  color: Theme.of(context).primaryColor,
                                ),
                    
                                Gap(10),
                                Text(
                                  "Restaurants",
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                  )
                                )
                              ],
                            ),
                          ),
                        ),
                        const Gap(10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                    
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(8),
                            child:  Row(
                              children: [
                                Icon(
                                  Icons.shopping_cart_rounded,
                                  color: Theme.of(context).primaryColor,
                                ),
                    
                                const Gap(10),
                                Text(
                                  "Groceries",
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                  )
                                )


                              ],
                            ),
                          ),
                        ),

                        const Gap(10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),

                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(8),
                            child:  Row(
                              children: [
                                Icon(
                                  Icons.coffee,
                                  color: Theme.of(context).primaryColor,
                                ),

                                const Gap(10),
                                Text(
                                    "Coffee",
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                    )
                                )


                              ],
                            ),
                          ),
                        ),

                        const Gap(10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),

                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(8),
                            child:  Row(
                              children: [
                                Icon(
                                  Icons.house,
                                  color: Theme.of(context).primaryColor,
                                ),

                                const Gap(10),
                                Text(
                                    "Housing",
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                    )
                                )


                              ],
                            ),
                          ),
                        ),
                    
                      ],
                    ),
                  ),
                )
              ],
            )
          ),
        ],
      ),

      bottomNavigationBar: BottomNavBar(currentIndex: 0,),
    );
  }
}
