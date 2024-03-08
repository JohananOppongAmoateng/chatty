import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ShopAndItemCard extends StatelessWidget {
  const ShopAndItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.only(top: 8, left: 15, right: 15, bottom:8),
        color: const Color.fromRGBO(217, 217, 217, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
            Center(
              child: const Text(
                'Local Shirt',

                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,

                ),

              ),
            ),

            Gap(10),

            Row(
              children: [
                const Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Available: 54",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(151, 71, 255, 1)
                        ),
                      ),

                      Text(
                        "See More",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(151, 71, 255, 1)
                        ),
                      ),
                    ],
                  ),
                ),

                const Gap(20),

                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        "GHS 45",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(151, 71, 255, 1)
                        ),
                      ),

                      

                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.black,
                        
                          child: const Text(
                            "Buy",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
      
          ],
        ),
      ),
    );
  }
}
