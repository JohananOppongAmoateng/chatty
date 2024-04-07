import 'package:flutter/material.dart';

class BackgroundTemplate extends StatelessWidget {
  final content;
  const BackgroundTemplate({super.key, this.content});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png")

          )

      ),
      child: Center(
        child: content,
      ),

    );
  }
}
