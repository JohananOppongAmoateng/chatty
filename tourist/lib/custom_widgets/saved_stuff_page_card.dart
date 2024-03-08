import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SavedStuffPageCard extends StatelessWidget {

  const SavedStuffPageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(235, 249, 235, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )
      ),
      child: Row(

        children: [
          ClipRRect(

              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),

            child: Image.asset(


              "assets/images/IMG-20240305-WA0019.jpg",
              fit: BoxFit.cover,
              width: 100,

            ),
          ),

          const Gap(10),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  child: const Text(
                    "Jamestown LightHouse",
                    style: TextStyle(
                      // fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Gap(10),

                const Text(
                  "Saved: 2 days ago"
                )
              ],


            ),
          )
        ],

      ),

    );
  }
}
