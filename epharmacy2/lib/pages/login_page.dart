import 'package:epharmacy/custom%20widgets/background_template.dart';
import 'package:epharmacy/pages/sign_uppage.dart';
import 'package:flutter/material.dart';

import '../custom widgets/custom_button.dart';
import '../custom widgets/custom_input.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BackgroundTemplate(
        content: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Welcome",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                  // height: 79/30,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Please Login",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                  // height: 79/30,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Please login with your Username and Password",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8e8888),
                  // height: 38/17,
                ),
                textAlign: TextAlign.center,
              ),

              const CustomInput(content: "Email"),
              const CustomInput(content: "Password"),
              CustomButton(
                content: "Login",
                onButtonPressed: (){

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) =>   const MyHomePage(title: '',)),
                  );

                },
              ),

              const Text(
                "OR",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8e8888),
                  // height: 38/17,
                ),
                textAlign: TextAlign.center,
              ),

              OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) =>   const SignUpPage()),
                  );
                },
                child: const Text(
                  "Sign up",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,

                  ),
                  textAlign: TextAlign.center,
                ),

              )


            ],
          ),
        ),
      ),
    );
  }
}
