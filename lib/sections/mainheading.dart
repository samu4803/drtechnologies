import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:drtechnologies/textfadeanimation.dart';
import 'package:flutter/material.dart';

class MainHeading extends StatelessWidget {
  const MainHeading({
    super.key,
    this.isMobile = false,
  });
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: isMobile == true
                ? MediaQuery.of(context).size.height * 0.15
                : MediaQuery.of(context).size.height * 0.2,
            child: SizedBox(
              height: MediaQuery.of(context).size.width *
                  (isMobile == true ? 0.5 : 0.3),
              width: MediaQuery.of(context).size.width *
                  (isMobile == true ? 0.8 : 0.68),
              child: AnimatedTextKit(
                repeatForever: false,
                totalRepeatCount: 1,
                animatedTexts: [
                  TypewriterAnimatedText(
                    "One Stop Solution For Manufacturing",
                    speed: Durations.short2,
                    textAlign: TextAlign.center,
                    cursor: "",
                    textStyle: TextStyle(
                      fontSize: MediaQuery.of(context).size.width *
                          (isMobile == true ? 0.1 : 0.065),
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
                      fontFamily: "Playfair_Display",
                      height: 0.9,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.1,
            child: SizedBox(
              width:
                  MediaQuery.of(context).size.width * (isMobile ? 0.9 : 0.65),
              child: TextFadeAnimation(
                text: Text(
                  "Your One-Stop Manufacturing Solution! With expertise in IoT, 3D Printing, and Reverse Engineering, we offer end-to-end manufacturing services for your business. From concept to production, our innovative solutions bring your ideas to life. Experience our reliable and cutting-edge capabilities.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isMobile == true ? 15 : 25,
                    fontFamily: "Lato",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
