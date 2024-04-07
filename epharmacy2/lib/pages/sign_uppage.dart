import 'package:epharmacy/pages/create_password.dart';
import 'package:epharmacy/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../custom widgets/background_template.dart';
import '../custom widgets/custom_button.dart';
import '../custom widgets/custom_input.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundTemplate(
        content: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Create an Account",
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
                "Please fill in the following",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8e8888),
                  // height: 38/17,
                ),
                textAlign: TextAlign.center,
              ),

              const CustomInput(content: "Fullname"),
              const CustomInput(content: "Email"),
              const CustomInput(content: "Phone number"),
              const CustomInput(content: "Date of Birth"),
              CustomButton(
                content: "Sign Up",
                onButtonPressed: () {

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) =>   const CreatePassword()),
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
                    MaterialPageRoute(builder: (context) =>   const LoginPage()),
                  );
                },
                child: const Text(
                  "Login",
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
