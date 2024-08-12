import 'package:drtechnologies/clientshowcase.dart';
import 'package:flutter/material.dart';

class Clients extends StatelessWidget {
  const Clients({
    super.key,
    this.isMobile = false,
  });
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    final data = [
      Image.asset("assets/clients/hul.png"),
      Image.asset("assets/clients/itc1.png"),
      Image.asset("assets/clients/autoaxles.png"),
      Image.asset("assets/clients/p5.png"),
      Image.asset("assets/clients/cftri.jpeg"),
      Image.asset("assets/clients/nie.jpeg"),
      Image.asset("assets/clients/picture1.png"),
      Image.asset("assets/clients/picture2.jpg"),
      Image.asset("assets/clients/picture3.jpg"),
      Image.asset("assets/clients/picture4.jpg"),
      Image.asset("assets/clients/picture5.jpg"),
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Our Clients",
          style: TextStyle(
            color: Colors.white,
            shadows: const [
              Shadow(
                color: Color.fromARGB(255, 178, 20, 26),
                blurRadius: 5,
              ),
              Shadow(
                color: Color.fromARGB(255, 178, 20, 26),
                blurRadius: 5,
              ),
              Shadow(
                color: Colors.black,
                blurRadius: 5,
              ),
              Shadow(
                color: Colors.black,
                blurRadius: 5,
              ),
              Shadow(
                color: Colors.black,
                blurRadius: 5,
              ),
            ],
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
            decorationThickness: 2,
            fontSize: MediaQuery.of(context).size.width *
                (isMobile == true ? 0.1 : 0.065),
            fontFamily: "Playfair_Display",
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
        ClientShowCase(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height *
              (isMobile == true ? 0.4 : 0.6),
          images: data,
        ),
      ],
    );
  }
}
