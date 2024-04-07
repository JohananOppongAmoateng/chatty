import 'package:flutter/material.dart';

class SideBarMenu extends StatefulWidget {

  const SideBarMenu({super.key,});

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  bool _loggingOut = false;



  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(50, 50, 50, 0.6)
              ),
              child: const Text('widget.user.name',
                style: TextStyle(color: Colors.white),
              ),
            ),
            accountEmail:  Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(50, 50, 50, 0.6)
                ),
                child: const Text('widget.user.email', 
                    style: TextStyle(color: Colors.white
                    )
                )
            ),
            currentAccountPicture: const CircleAvatar(
              child: Icon(Icons.person_3_rounded),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://www.goldmansachs.com/intelligence/pages/articles/pharmaceutical-companies-have-700-billion-for-acquisition-and-investment/800x450.jpg"
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) =>  MyMapWidget2(user: widget.user, touristSites: widget.touristSites,)));
            },
          ),
          ListTile(
            leading: const Icon(Icons.medical_information),
            title: const Text('Drugs'),
            onTap: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) =>  TouristSiteListPage(touristSites: widget.touristSites, user: widget.user,)));
            },
          ),
          ListTile(
            leading: const Icon(Icons.local_pharmacy),
            title: const Text('Pharmacies'),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ResetPassword(user: widget.user))
              // );
            },
          ),
          ListTile(
            leading: const Icon(Icons.category),
            title: const Text('Categories'),
            onTap: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => const AboutMain()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) =>  const DeveloperInfo()));
            },
          ),
          const SizedBox(
            height: 150,
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app_rounded),
            title: const Text('Log Out'),
            onTap: () async {
              _loggingOut = false;
              setState(() {

              });
              // await widget.user.logout();



              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) =>  Login(user: widget.user,)));


            },
          ),
          // Full-screen overlay when logging out
          if (_loggingOut)
            Container(
              color: Colors.black.withOpacity(0.5), // Semi-transparent overlay
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.macro_off_outlined,
                      color: Colors.black,
                      size: 48,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Logging Out...',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
