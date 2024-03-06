
import 'package:flutter/material.dart';





class CategoryScreen extends StatelessWidget {
  final List<String> categories = [
    'food and drink',
    'restaurant',
    'Drinks',
    'Clubs',
    'Pubs',
    'Activities',
    'Attractions',
    'Parks',
    'Weddings',
    'Gyms',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CATEGORIES'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search CATEGORIES',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: categories[index] == 'food and drink'
                      ? Icon(Icons.restaurant, color: Colors.green)
                      : null,
                  title: Text(categories[index]),
                );
              },
            ),
          ),
          Container(
            color: Colors.green,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.restaurant, color: Colors.white),
                SizedBox(width: 8),
                Text(
                  'Restuarant',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


