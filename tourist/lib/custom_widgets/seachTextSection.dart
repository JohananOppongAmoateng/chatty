import 'package:flutter/material.dart';

class SearchTextSection extends StatefulWidget {

  const SearchTextSection({super.key});

  @override
  State<SearchTextSection> createState() => _SearchTextSectionState();
}

class _SearchTextSectionState extends State<SearchTextSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor, // Set your desired background color
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),

      child:  Padding(
        padding: const EdgeInsets.only(
          left: 30.0,
          right: 30.0,
          bottom: 8.0,
        ),
        child: Container(
          padding: const EdgeInsets.only(
            left: 10,
            right: 5,
          ),
          decoration: const BoxDecoration(
            color: Colors.white, // Set your desired background color
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),

          child: const Row(
            children: [
              Icon(Icons.search, color: Colors.grey),

              SizedBox(width: 10.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        color: Colors.grey
                    ),
                    hintText: "Search...",
                    border: InputBorder.none, // Remove default border
                  ),
                ),
              ),
            ],
          ),
        ),
      )
      ,
      // Add your child widgets here
    );
  }
}
