import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.title,
    required this.content,
    required this.assetImage,
    required this.width,
    required this.height,
    this.fontSize = 50,
  });
  final String title;
  final String content;
  final Image assetImage;
  final double width;
  final double height;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: width / 4,
            child: Container(
              height: height * (content == "" ? 0.45 : 0.7),
              width: width / 1.1,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(content == "" ? 15 : 25),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 3,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
                gradient: const RadialGradient(
                  colors: [
                    Color.fromARGB(255, 2, 28, 39),
                    Color.fromARGB(255, 2, 24, 34),
                    Color.fromARGB(255, 1, 17, 23),
                  ],
                  center: Alignment.topLeft,
                  radius: 4,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.1,
                      fontFamily: "Playfair_Display",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: width,
                    height: content == "" ? 0 : height / 2.9,
                    child: Text(
                      content,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.037,
                        fontFamily: "Lato",
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: SizedBox(
              height: width * 0.5,
              width: width * 0.8,
              child: assetImage,
            ),
          ),
        ],
      ),
    );
  }
}
