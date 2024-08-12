import 'package:drtechnologies/servicecard.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AnimatedServices extends StatelessWidget {
  const AnimatedServices({
    super.key,
    required this.offset,
    this.isMobile = false,
  });
  final bool isMobile;
  final double Function() offset;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * (isMobile ? 0.7 : 1.7),
      width: MediaQuery.of(context).size.width,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          physics: const NeverScrollableScrollPhysics(),
        ),
        child: ScrollTransformView(
          children: [
            ScrollTransformItem(
              builder: (scrollOffset) => Text(
                "Services",
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
            ScrollTransformItem(
              builder: (scrollOffset) => SizedBox(
                width: MediaQuery.of(context).size.width,
                height:
                    MediaQuery.of(context).size.height * (isMobile ? 0.6 : 1.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ServiceCard(
                      title: "Automation",
                      content: isMobile == true
                          ? ""
                          : "Industrial automation involves using machinery, robotics, and control systems to automate manufacturing and industrial processes. It improves productivity, quality, and safety while reducing costs and human intervention.",
                      assetImage: Image.asset(
                        "assets/automation.png",
                        fit: BoxFit.fill,
                      ),
                      width: MediaQuery.of(context).size.width *
                          (isMobile == true ? 0.45 : 0.3),
                      height: MediaQuery.of(context).size.height *
                          (isMobile == true ? 0.3 : 0.7),
                    ),
                    ServiceCard(
                      title: "Fabrication",
                      content: isMobile == true
                          ? ""
                          : "We offer top-notch metal fabrication services. Our skilled Partners utilizes advanced techniques and state-of-the-art equipment to deliver precision-crafted metal components and structures.",
                      assetImage: Image.asset(
                        "assets/fabrication.jpg",
                        fit: BoxFit.fill,
                      ),
                      width: MediaQuery.of(context).size.width *
                          (isMobile == true ? 0.45 : 0.3),
                      height: MediaQuery.of(context).size.height *
                          (isMobile == true ? 0.3 : 0.7),
                    ),
                  ],
                ),
              ),
              offsetBuilder: isMobile
                  ? (scrollOffset) =>
                      Offset(MediaQuery.of(context).size.width * 0.01, 0)
                  : (scrollOffset) {
                      var offset = (-MediaQuery.of(context).size.width) +
                          (this.offset() / 1.6);
                      if (offset >= MediaQuery.of(context).size.width / 8) {
                        offset = MediaQuery.of(context).size.width / 8;
                      }
                      return Offset(offset, 0);
                    },
            ),
            ScrollTransformItem(
              builder: (scrollOffset) => SizedBox(
                width: MediaQuery.of(context).size.width,
                height:
                    MediaQuery.of(context).size.height * (isMobile ? 0.6 : 1.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ServiceCard(
                      title: "Designing",
                      content: isMobile == true
                          ? ""
                          : "Our expert team crafts innovative designs using cutting-edge CAD software, backed by advanced simulation tools. From product design , machine componentsto system layouts, we turn your ideas into reality with precision and efficiency.",
                      assetImage: Image.asset(
                        "assets/designing.jpg",
                        fit: BoxFit.fill,
                      ),
                      width: MediaQuery.of(context).size.width *
                          (isMobile == true ? 0.45 : 0.3),
                      height: MediaQuery.of(context).size.height *
                          (isMobile == true ? 0.3 : 0.7),
                    ),
                    ServiceCard(
                      title: "3D Printing",
                      content: isMobile == true
                          ? ""
                          : "Our expert team crafts innovative designs using cutting-edge CAD software, backed by advanced simulation tools. From product design , machine components system layouts, we turn your ideas into reality with precision and efficiency.",
                      assetImage: Image.asset(
                        "assets/completed3dprinting.jpg",
                        fit: BoxFit.fill,
                      ),
                      width: MediaQuery.of(context).size.width *
                          (isMobile == true ? 0.45 : 0.3),
                      height: MediaQuery.of(context).size.height *
                          (isMobile == true ? 0.3 : 0.7),
                    ),
                  ],
                ),
              ),
              offsetBuilder: isMobile
                  ? (scrollOffset) => Offset(
                      -MediaQuery.of(context).size.width * 0.01,
                      -MediaQuery.of(context).size.height * 0.6)
                  : (scrollOffset) {
                      var offset = MediaQuery.of(context).size.width -
                          (this.offset() / 1.6);
                      if (offset <= -MediaQuery.of(context).size.width / 8) {
                        offset = -MediaQuery.of(context).size.width / 8;
                      }
                      return Offset(
                          offset, -MediaQuery.of(context).size.height * 1.5);
                    },
            ),
          ],
        ),
      ),
    );
  }
}
