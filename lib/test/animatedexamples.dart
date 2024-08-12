import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AnimatedExamples extends StatelessWidget {
  const AnimatedExamples({
    super.key,
    required this.offset,
    this.isMobile = false,
  });
  final bool isMobile;
  final double Function() offset;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * (isMobile ? 0.6 : 1.3),
      width: MediaQuery.of(context).size.width,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          physics: const NeverScrollableScrollPhysics(),
        ),
        child: ScrollTransformView(
          children: [
            ScrollTransformItem(
              builder: (scrollOffset) => Text(
                "Example",
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
                width: MediaQuery.of(context).size.shortestSide,
                height: MediaQuery.of(context).size.shortestSide,
                child: Image.asset(
                  "assets/fabrication/image1.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              scaleBuilder: isMobile
                  ? (scrollOffset) => 0.7
                  : (scrollOffset) {
                      var scale = 0.0002 * offset();
                      if (scale >= 1.0) {
                        scale = 1.0;
                      }
                      return scale;
                    },
            ),
            ScrollTransformItem(
              builder: (scrollOffset) => SizedBox(
                width: MediaQuery.of(context).size.shortestSide * 0.3,
                height: MediaQuery.of(context).size.shortestSide * 0.3,
                child: Image.asset(
                  "assets/3dprinting/image1.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              offsetBuilder: isMobile
                  ? (scrollOffset) => Offset(
                        -MediaQuery.of(context).size.width * 0.3,
                        -MediaQuery.of(context).size.width,
                      )
                  : (scrollOffset) {
                      var offset = MediaQuery.of(context).size.width -
                          (this.offset() / 2.2);
                      if (offset <= -MediaQuery.of(context).size.width * 0.16) {
                        offset = -MediaQuery.of(context).size.width * 0.16;
                      }
                      return Offset(
                          offset, -MediaQuery.of(context).size.height);
                    },
            ),
            ScrollTransformItem(
              builder: (scrollOffset) => SizedBox(
                width: MediaQuery.of(context).size.shortestSide * 0.3,
                height: MediaQuery.of(context).size.shortestSide * 0.3,
                child: Image.asset(
                  "assets/architectural/image1.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              offsetBuilder: isMobile
                  ? (scrollOffset) => Offset(
                        MediaQuery.of(context).size.width * 0.3,
                        -MediaQuery.of(context).size.height * 0.35,
                      )
                  : (scrollOffset) {
                      var offset = -MediaQuery.of(context).size.width +
                          (this.offset() / 2.2);
                      if (offset >= MediaQuery.of(context).size.width * 0.16) {
                        offset = MediaQuery.of(context).size.width * 0.16;
                      }
                      return Offset(
                          offset, -MediaQuery.of(context).size.height * 0.6);
                    },
            ),
          ],
        ),
      ),
    );
  }
}
