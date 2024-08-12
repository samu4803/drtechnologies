import 'package:drtechnologies/sections/footer.dart';
import 'package:drtechnologies/servicecard.dart';
import 'package:drtechnologies/starbackground.dart';
import 'package:flutter/material.dart';

class ServicesProvided extends StatelessWidget {
  const ServicesProvided({
    super.key,
    this.isMobile = false,
  });
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(175, 15, 3, 33),
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        title: const Text(
          "Services",
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontFamily: "Playfair_Display",
          ),
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          decoration: TextDecoration.none,
          fontFamily: "Playfair_Display",
        ),
      ),
      body: StarBackground(
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Wrap(
                    children: [
                      ServiceCard(
                        title: "Automation",
                        content:
                            "Industrial automation involves using machinery, robotics, and control systems to automate manufacturing and industrial processes. It improves productivity, quality, and safety while reducing costs and human intervention.",
                        assetImage: Image.asset(
                          "assets/3dprinter.jpg",
                          fit: BoxFit.fill,
                        ),
                        width: MediaQuery.of(context).size.width *
                            (isMobile ? 0.85 : 0.3),
                        height: MediaQuery.of(context).size.height *
                            (isMobile ? 0.5 : 0.7),
                      ),
                      ServiceCard(
                        title: "Fabrication",
                        content:
                            "We offer top-notch metal fabrication services. Our skilled Partners utilizes advanced techniques and state-of-the-art equipment to deliver precision-crafted metal components and structures.",
                        assetImage: Image.asset(
                          "assets/iot.jpg",
                          fit: BoxFit.fill,
                        ),
                        width: MediaQuery.of(context).size.width *
                            (isMobile ? 0.85 : 0.3),
                        height: MediaQuery.of(context).size.height *
                            (isMobile ? 0.5 : 0.7),
                      ),
                      ServiceCard(
                        title: "Designing",
                        content:
                            "Our expert team crafts innovative designs using cutting-edge CAD software, backed by advanced simulation tools. From product design , machine componentsto system layouts, we turn your ideas into reality with precision and efficiency.",
                        assetImage: Image.asset(
                          "assets/fabrication.jpg",
                          fit: BoxFit.fill,
                        ),
                        width: MediaQuery.of(context).size.width *
                            (isMobile ? 0.85 : 0.3),
                        height: MediaQuery.of(context).size.height *
                            (isMobile ? 0.5 : 0.7),
                      ),
                      ServiceCard(
                        title: "3D Printing",
                        content:
                            "Our expert team crafts innovative designs using cutting-edge CAD software, backed by advanced simulation tools. From product design , machine components system layouts, we turn your ideas into reality with precision and efficiency.",
                        assetImage: Image.asset(
                          "assets/designing.jpg",
                          fit: BoxFit.fill,
                        ),
                        width: MediaQuery.of(context).size.width *
                            (isMobile ? 0.85 : 0.3),
                        height: MediaQuery.of(context).size.height *
                            (isMobile ? 0.5 : 0.7),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                  Footer(
                    isMobile: isMobile,
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
