import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final content;
  final VoidCallback onButtonPressed;
  const CustomButton({super.key, required this.content, required this.onButtonPressed});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.06,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal, // Background color
          ),
          onPressed: () {
            widget.onButtonPressed();

          },
          child: Text(
            widget.content,
            style: const TextStyle(
              fontFamily: "Inter",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,

            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
