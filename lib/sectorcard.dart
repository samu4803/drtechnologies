import 'package:flutter/material.dart';

class SectorCard extends StatelessWidget {
  const SectorCard({
    super.key,
    required this.title,
    required this.content,
    required this.image,
    required this.width,
    required this.height,
  });
  final String title;
  final String content;
  final Image image;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width,
            height: width * 0.7,
            child: image,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.08,
              fontFamily: "Playfair_Display",
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.04,
              fontFamily: "Lato",
              overflow: TextOverflow.fade,
            ),
          ),
        ],
      ),
    );
  }
}
