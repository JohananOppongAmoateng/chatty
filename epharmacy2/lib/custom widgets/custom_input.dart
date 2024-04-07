
import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final content;
  const CustomInput({super.key, this.content});

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Container(
            // width: 200,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                  color: Colors.black,
                  width: 2
              ),
            ),
            child:  TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.content,
              ),
            ),
          )
      ),
    );
  }
}
