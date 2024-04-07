import 'package:epharmacy/pages/get_started.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {





  Future<void> loadPreferences() async {

    Future.delayed(const Duration(seconds:   3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>   const GetStarted()),
      );
    });




  }

  @override
  Widget build(BuildContext context) {

    print('launchpage');


    return FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {



        return  Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'E-pharmacy',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary, // Set the text color to white

                  ),
                ),
                const SizedBox(height: 30),
                const CircularProgressIndicator(
                  color: Colors.green,
                ),
              ],
            ),
          ),
        );
      },
      future: loadPreferences(),

    );

  }

}
