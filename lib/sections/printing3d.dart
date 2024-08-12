import 'package:drtechnologies/customcollages.dart';
import 'package:flutter/material.dart';

class Printing3d extends StatelessWidget {
  const Printing3d({
    super.key,
    this.isMobile = false,
  });
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    Widget imageCollage(List<Image> images) {
      return Wrap(
        children: [
          for (var image in images)
            Container(
              margin: const EdgeInsets.all(1),
              width: MediaQuery.of(context).size.width * 0.35,
              height: MediaQuery.of(context).size.width * 0.35,
              child: image,
            ),
        ],
      );
    }

    final data = [
      Image.asset(
        "assets/3dprinting/image1.jpg",
        fit: BoxFit.fill,
      ),
      Image.asset(
        "assets/3dprinting/image2.jpg",
        fit: BoxFit.fill,
      ),
      Image.asset(
        "assets/3dprinting/image3.jpg",
        fit: BoxFit.fill,
      ),
      Image.asset(
        "assets/3dprinting/image4.jpg",
        fit: BoxFit.fill,
      ),
      Image.asset(
        "assets/3dprinting/image5.jpg",
        fit: BoxFit.fill,
      ),
      Image.asset(
        "assets/3dprinting/image6.jpg",
        fit: BoxFit.fill,
      ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "3D Printing",
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
        isMobile == true
            ? imageCollage(data)
            : CustomCollages(
                image1: data[0],
                image2: data[1],
                image3: data[2],
                image4: data[3],
                image5: data[4],
                image6: data[5],
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.57,
              ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
      ],
    );
  }
}
