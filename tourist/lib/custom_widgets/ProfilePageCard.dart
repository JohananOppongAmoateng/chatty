import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfilePageCard extends StatelessWidget {
  final String description;
  final Widget icon;
  const ProfilePageCard({super.key, required this.description, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(20),
        color: const Color.fromRGBO(215, 217, 250, 1),
      
        child:  Row(
          children: [
            icon,
      
            const Gap(20),
      
            Text(
              description,
              style: const TextStyle(
                fontSize: 20,
                // fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}
