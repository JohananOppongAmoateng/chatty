import 'package:flutter/material.dart';

import '../custom_widgets/ProfilePageCard.dart';
import '../custom_widgets/bottomNavBar.dart';
import '../custom_widgets/custom_appbar.dart';
import '../custom_widgets/seachTextSection.dart';
import 'package:gap/gap.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(context, title: "Settings"),

      body: ListView(
        children: [
          const SearchTextSection(),
          Container(
            padding: const EdgeInsets.only(top: 150),
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/greyafricanmapbackgroud.png'),
                fit: BoxFit.fill, // Adjust as desired (e.g., BoxFit.fill, BoxFit.contain)
              ),
            ),

            child: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              radius: 50,
              child: IconButton(
                icon: const Icon(Icons.person, size: 50,),
                onPressed: () {},
              ),
            ),
            // Add your child widgets here
          ),


          const Gap(10),

          const Center(
            child: Text(
              "AlienWare",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )
            ),
          ),


          const Gap(10),

          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children:  [
                  ProfilePageCard(
                    description: 'Profile',
                    icon: Icon(
                      Icons.person,

                    ),

                  ),
                  Gap(10),

                  ProfilePageCard(
                    description: 'Payment Method',
                    icon: Icon(
                      Icons.payment,

                    ),

                  ),
                  Gap(10),

                  ProfilePageCard(
                    description: 'QR code',
                    icon: Icon(
                      Icons.qr_code,

                    ),

                  ),
                  Gap(10),

                  ProfilePageCard(
                    description: 'Categories',
                    icon: Icon(
                      Icons.local_activity,

                    ),

                  ),
                  Gap(10),

                ],
              ),
            ),
          )






        ],
      ),

      bottomNavigationBar: BottomNavBar(currentIndex: 4,),
    );
  }
}
