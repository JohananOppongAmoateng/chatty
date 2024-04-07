import 'package:flutter/material.dart';

class LocationsContainer extends StatefulWidget {
  const LocationsContainer({super.key});

  @override
  State<LocationsContainer> createState() => _LocationsContainerState();
}

class _LocationsContainerState extends State<LocationsContainer> {

  List<String> locations = ["Location", 'Location A', 'Location B', 'Location C', 'Location D'];

  String? selectedLocation = "Location";
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.circular(16.0),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 2,
        //     blurRadius: 5,
        //     offset: const Offset(0, 3), // changes position of shadow
        //   ),
        // ],
      ),
      child: DropdownButton<String>(
        value: null,
        icon: const Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.black),
        underline: Container(
          height: 2,
          color: Colors.grey,
        ),
        // onChanged: (String newValue) {
        //   setState(() {
        //     selectedLocation = newValue;
        //   });
        // },
        items: locations.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? value) {  },
      ),
    );;
  }
}
