import 'package:flutter/material.dart';

class CustomCollages extends StatelessWidget {
  const CustomCollages({
    super.key,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.image5,
    required this.image6,
    required this.width,
    required this.height,
    this.leftOriented = true,
  });
  final Image image1;
  final Image image2;
  final Image image3;
  final Image image4;
  final Image image5;
  final Image image6;
  final double width;
  final double height;
  final bool leftOriented;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(),
      child: leftOriented == true
          ? Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: SizedBox(
                    width: (width - height) / 2,
                    height: height,
                    child: image1,
                  ),
                ),
                Positioned(
                  left: (width - height) / 2,
                  top: 0,
                  child: SizedBox(
                    width: (width - height) / 2,
                    height: height,
                    child: image2,
                  ),
                ),
                Positioned(
                  right: height * 0.5,
                  top: 0,
                  child: SizedBox(
                    width: height / 2,
                    height: height / 2,
                    child: image3,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: SizedBox(
                    width: height / 2,
                    height: height / 2,
                    child: image4,
                  ),
                ),
                Positioned(
                  right: height * 0.5,
                  bottom: 0,
                  child: SizedBox(
                    width: height / 2,
                    height: height / 2,
                    child: image5,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: SizedBox(
                    width: height / 2,
                    height: height / 2,
                    child: image6,
                  ),
                ),
              ],
            )
          : Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 0,
                  child: SizedBox(
                    width: (width - height) / 2,
                    height: height,
                    child: image1,
                  ),
                ),
                Positioned(
                  right: (width - height) / 2,
                  top: 0,
                  child: SizedBox(
                    width: (width - height) / 2,
                    height: height,
                    child: image2,
                  ),
                ),
                Positioned(
                  left: height * 0.5,
                  top: 0,
                  child: SizedBox(
                    width: height / 2,
                    height: height / 2,
                    child: image3,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: SizedBox(
                    width: height / 2,
                    height: height / 2,
                    child: image4,
                  ),
                ),
                Positioned(
                  left: height * 0.5,
                  bottom: 0,
                  child: SizedBox(
                    width: height / 2,
                    height: height / 2,
                    child: image5,
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: SizedBox(
                    width: height / 2,
                    height: height / 2,
                    child: image6,
                  ),
                ),
              ],
            ),
    );
  }
}
