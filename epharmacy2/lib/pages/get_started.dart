import 'package:epharmacy/pages/login_page.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(

            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/get_started.png",
                )
            )
        ),
        child: Column(
          children: [

            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08),
                child: const Center(
                  child: Text(
                    "E-Pharmacy",
                    style: TextStyle(
                      fontFamily: "Titan One",
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      height: 81/50,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.65),
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal, // Background color
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) =>   const LoginPage()),
                      );

                    },
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,

                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
