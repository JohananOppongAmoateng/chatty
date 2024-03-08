import 'package:flutter/material.dart';
import 'package:tourist/custom_widgets/bottomNavBar.dart';
import 'package:tourist/custom_widgets/custom_appbar.dart';
import 'package:tourist/custom_widgets/seachTextSection.dart';

class TripAdvisorPage extends StatefulWidget {
  const TripAdvisorPage({super.key});

  @override
  State<TripAdvisorPage> createState() => _TripAdvisorPageState();
}

class _TripAdvisorPageState extends State<TripAdvisorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Trip Advisor"),

      body: const Column(
        children: [
          SearchTextSection()
        ],
      ),

      bottomNavigationBar: BottomNavBar(currentIndex: 3,),
    );
  }
}
