import 'package:drtechnologies/sectorcard.dart';
import 'package:flutter/material.dart';

class FunctionalSections extends StatelessWidget {
  const FunctionalSections({
    super.key,
    this.isMobile = false,
  });
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    final data = [
      Image.asset(
        "assets/3dprinter.jpg",
        fit: BoxFit.fill,
      ),
      Image.asset(
        "assets/iot.jpg",
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
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: isMobile == true ? 10 : 100,
          ),
          child: Text(
            "Functional Sections",
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
        Container(
          padding: EdgeInsets.symmetric(vertical: isMobile == true ? 10 : 100),
          margin: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: isMobile == true ? 0 : 10,
          ),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 5, 3, 24),
          ),
          child: isMobile == true
              ? Wrap(
                  children: [
                    SectorCard(
                      title: "3-D Printing",
                      // content:"Revolutionize manufacturing with our 3D printing technology. Precision, speed, and quality for rapid prototyping to end-use products.",
                      content: "",
                      image: data[0],
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.5,
                    ),
                    SectorCard(
                      title: "IOT",
                      // content:                                "Empower your business with our IoT product development. Connect, optimize, and innovate seamlessly with our customized solution.",
                      content: "",
                      image: data[1],
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.5,
                    ),
                    SectorCard(
                      title: "Fabrication",
                      // content:                                "Elevate manufacturing with D R Technologies. Metal fabrication, machining, and process optimization for superior result.",
                      content: "",
                      image: data[2],
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.5,
                    ),
                    SectorCard(
                      title: "Designing",
                      // content:                                "Innovate with our professional CAD designing services. Optimize manufacturing, product development, and enhance quality.",
                      content: "",
                      image: data[3],
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.5,
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SectorCard(
                      title: "3-D Printing",
                      content:
                          "Revolutionize manufacturing with our 3D printing technology. Precision, speed, and quality for rapid prototyping to end-use products.",
                      image: data[0],
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                    SectorCard(
                      title: "IOT",
                      content:
                          "Empower your business with our IoT product development. Connect, optimize, and innovate seamlessly with our customized solution.",
                      image: data[1],
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                    SectorCard(
                      title: "Fabrication",
                      content:
                          "Elevate manufacturing with D R Technologies. Metal fabrication, machining, and process optimization for superior result.",
                      image: data[2],
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                    SectorCard(
                      title: "Designing",
                      content:
                          "Innovate with our professional CAD designing services. Optimize manufacturing, product development, and enhance quality.",
                      image: data[3],
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
