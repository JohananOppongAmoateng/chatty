import 'package:flutter/material.dart';
import 'package:tourist/pages/mappage.dart';
import 'package:tourist/pages/recently_searched_page.dart';
import 'package:tourist/pages/tour_map_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bra Fie',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(86, 203, 91, 1),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(86, 203, 91, 1)),
        useMaterial3: true,
      ),
      home: const TourMapPage(),
    );
  }
}