import 'package:drtechnologies/servicecard.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({
    super.key,
    this.isMobile = false,
  });
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    final data = [
      Image.asset(
        "assets/automation.png",
        fit: BoxFit.fill,
      ),
      Image.asset(
        "assets/fabrication.jpg",
        fit: BoxFit.fill,
      ),
      Image.asset(
        "assets/designing.jpg",
        fit: BoxFit.fill,
      ),
      Image.asset(
        "assets/completed3dprinting.jpg",
        fit: BoxFit.fill,
      ),
    ];
    final serviceCards = [
      ServiceCard(
        title: "Automation",
        content: isMobile == true
            ? ""
            : "Industrial automation involves using machinery, robotics, and control systems to automate manufacturing and industrial processes. It improves productivity, quality, and safety while reducing costs and human intervention.",
        assetImage: data[0],
        width:
            MediaQuery.of(context).size.width * (isMobile == true ? 0.45 : 0.3),
        height:
            MediaQuery.of(context).size.height * (isMobile == true ? 0.3 : 0.7),
      ),
      ServiceCard(
        title: "Fabrication",
        content: isMobile == true
            ? ""
            : "We offer top-notch metal fabrication services. Our skilled Partners utilizes advanced techniques and state-of-the-art equipment to deliver precision-crafted metal components and structures.",
        assetImage: data[1],
        width:
            MediaQuery.of(context).size.width * (isMobile == true ? 0.45 : 0.3),
        height:
            MediaQuery.of(context).size.height * (isMobile == true ? 0.3 : 0.7),
      ),
      ServiceCard(
        title: "Designing",
        content: isMobile == true
            ? ""
            : "Our expert team crafts innovative designs using cutting-edge CAD software, backed by advanced simulation tools. From product design , machine componentsto system layouts, we turn your ideas into reality with precision and efficiency.",
        assetImage: data[2],
        width:
            MediaQuery.of(context).size.width * (isMobile == true ? 0.45 : 0.3),
        height:
            MediaQuery.of(context).size.height * (isMobile == true ? 0.3 : 0.7),
      ),
      ServiceCard(
        title: "3D Printing",
        content: isMobile == true
            ? ""
            : "Our expert team crafts innovative designs using cutting-edge CAD software, backed by advanced simulation tools. From product design , machine components system layouts, we turn your ideas into reality with precision and efficiency.",
        assetImage: data[3],
        width:
            MediaQuery.of(context).size.width * (isMobile == true ? 0.45 : 0.3),
        height:
            MediaQuery.of(context).size.height * (isMobile == true ? 0.3 : 0.7),
      ),
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 100,
          ),
          child: Text(
            "Service",
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
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [serviceCards[0], serviceCards[1]],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [serviceCards[2], serviceCards[3]],
        ),
      ],
    );
  }
}
