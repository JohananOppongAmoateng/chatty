import 'package:flutter/material.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({super.key});

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Set the width as needed
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inversePrimary,
        borderRadius: const BorderRadius.only(

          bottomLeft: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child:  TextField(
        decoration: InputDecoration(

          hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.background
          ),
          hintText: 'Search for product',
          icon: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.background
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
