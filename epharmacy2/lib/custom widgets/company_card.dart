
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

class CompanyCard extends StatefulWidget {
  final height;
  final width;
  final name;
  const CompanyCard({super.key, required this.name, required this.height, required this.width});

  @override
  State<CompanyCard> createState() => _CompanyCardState();
}

class _CompanyCardState extends State<CompanyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),

              // child: ImageNetwork(
              //   image: "https://afrikta.com/wp-content/uploads/2022/04/Top-10-Biggest-Pharmaceutical-Companies-in-Ghana.jpg",
              //   height: widget.height,
              //   width: widget.width,
              //   duration: 1500,
              //   curve: Curves.easeIn,
              //   onPointer: true,
              //   debugPrint: false,
              //   fullScreen: false,
              //   fitAndroidIos: BoxFit.cover,
              //   fitWeb: BoxFitWeb.cover,
              //   borderRadius: BorderRadius.circular(70),
              //   onLoading: CircularProgressIndicator(
              //     color: Theme.of(context).colorScheme.inversePrimary,
              //   ),
              //   onError: const Icon(
              //     Icons.error,
              //     color: Colors.red,
              //   ),
              //   onTap: () {
              //     debugPrint("©gabriel_patrick_souza");
              //   },
              // )

            child: Image.asset(
              "assets/images/company.jpg",
              height: widget.height,
              width: widget.width,
              fit: BoxFit.cover,



            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
