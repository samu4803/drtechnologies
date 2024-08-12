import 'package:drtechnologies/drtechnologies.dart';
import 'package:flutter/material.dart';

class ParallaxBackground extends StatefulWidget {
  const ParallaxBackground({
    super.key,
    required this.child,
    this.isMobile = false,
  });
  final Widget child;
  final bool isMobile;
  @override
  State<ParallaxBackground> createState() => _ParallaxBackgroundState();
}

class _ParallaxBackgroundState extends State<ParallaxBackground> {
  double parallax1 = 0;
  double parallax2 = 0;
  double parallax3 = 0;
  double parallax4 = 0;
  double parallax5 = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: NotificationListener(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            DRTechnologies.instance.scrollPosition = notification.scrollDelta!;
            parallax1 -= notification.scrollDelta! / 7;
            parallax2 -= notification.scrollDelta! / 9;
            parallax3 -= notification.scrollDelta! / 11;
            parallax4 -= notification.scrollDelta! / 13;
            parallax5 -= notification.scrollDelta! / 14.48;
            setState(() {});
          }
          return true;
        },
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Color.fromARGB(255, 15, 2, 30),
                      Color.fromARGB(255, 15, 9, 45),
                    ],
                    center: Alignment.bottomCenter,
                    radius: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: parallax5,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  widget.isMobile == true
                      ? "assets/parallax/pimage5.png"
                      : "assets/parallax/image5.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: parallax4,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  widget.isMobile == true
                      ? "assets/parallax/pimage4.png"
                      : "assets/parallax/image4.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: parallax3,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  widget.isMobile == true
                      ? "assets/parallax/pimage3.png"
                      : "assets/parallax/image3.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: parallax2,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  widget.isMobile == true
                      ? "assets/parallax/pimage2.png"
                      : "assets/parallax/image2.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: parallax1,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  widget.isMobile == true
                      ? "assets/parallax/pimage1.png"
                      : "assets/parallax/image1.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            widget.child,
          ],
        ),
      ),
    );
  }
}
