import 'package:flutter/material.dart';

class ConceptToProduct extends StatelessWidget {
  const ConceptToProduct({
    super.key,
    this.isMobile = false,
  });
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 100,
          ),
          child: Text(
            "Concept to Product",
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
        isMobile
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.width * 0.5,
                    child: Image.asset(
                      "assets/concept.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      "At D R Technologies, we offer a comprehensive concept-to-product solution to turn your innovative ideas into fully realized products. We provide services in every aspect of a product development. Designing, Prototyping, Manufacturing, Testing, Marketing. We are one-stop solution for your requirements.With years of experience in 3D printing, engineering, and marketing, we are dedicated to exceeding your expectations and bringing your vision to life.",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Lato",
                        fontSize: isMobile == true
                            ? 15
                            : MediaQuery.of(context).size.width * 0.017,
                      ),
                    ),
                  ),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Image.asset(
                      "assets/concept.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "At D R Technologies, we offer a comprehensive concept-to-product solution to turn your innovative ideas into fully realized products. We provide services in every aspect of a product development. Designing, Prototyping, Manufacturing, Testing, Marketing. We are one-stop solution for your requirements.With years of experience in 3D printing, engineering, and marketing, we are dedicated to exceeding your expectations and bringing your vision to life.",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Lato",
                        fontSize: isMobile == true
                            ? 15
                            : MediaQuery.of(context).size.width * 0.017,
                      ),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
