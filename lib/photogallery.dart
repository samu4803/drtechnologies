import 'package:drtechnologies/sections/footer.dart';
import 'package:drtechnologies/starbackground.dart';
import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class PhotoGallery extends StatelessWidget {
  PhotoGallery({
    super.key,
    this.isMobile = false,
  });
  final controller1 = InfiniteScrollController();
  final controller2 = InfiniteScrollController();
  final controller3 = InfiniteScrollController();
  final bool isMobile;
  final architectural = [
    Image.asset(
      "assets/architectural/image1.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "assets/architectural/image2.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "assets/architectural/image3.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "assets/architectural/image4.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "assets/architectural/image5.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "assets/architectural/image6.jpg",
      fit: BoxFit.fill,
    ),
  ];
  final fabrication = [
    Image.asset(
      "assets/fabrication/image1.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "assets/fabrication/image2.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "assets/fabrication/image3.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "assets/fabrication/image4.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "assets/fabrication/image5.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "assets/fabrication/image6.jpg",
      fit: BoxFit.fill,
    ),
  ];
  final printing3d = [
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Gallery",
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
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: StarBackground(
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    Text(
                      " Architectural",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width *
                            (isMobile == true ? 0.1 : 0.065),
                        fontFamily: "Playfair_Display",
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height /
                          (isMobile ? 3 : 2),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          InfiniteCarousel.builder(
                            controller: controller1,
                            itemCount: 6,
                            itemExtent: MediaQuery.of(context).size.width /
                                (isMobile ? 1.5 : 3.5),
                            velocityFactor: 1,
                            anchor: 0.5,
                            onIndexChanged: (index) {},
                            axisDirection: Axis.horizontal,
                            loop: true,
                            itemBuilder: (context, itemIndex, realIndex) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(isMobile ? 15 : 25),
                                  child: architectural[itemIndex],
                                ),
                              );
                            },
                          ),
                          Positioned(
                            left: 0,
                            child: Card(
                              elevation: 10,
                              child: IconButton(
                                onPressed: () => controller1.previousItem(
                                    curve: Curves.bounceInOut,
                                    duration: Durations.short4),
                                icon: const Icon(
                                  Icons.arrow_back_ios_new,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Card(
                              elevation: 10,
                              child: IconButton(
                                onPressed: () => controller1.nextItem(
                                    curve: Curves.bounceInOut,
                                    duration: Durations.short4),
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      " Fabrication",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width *
                            (isMobile == true ? 0.1 : 0.065),
                        fontFamily: "Playfair_Display",
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height /
                          (isMobile ? 3 : 2),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          InfiniteCarousel.builder(
                            controller: controller2,
                            itemCount: 6,
                            itemExtent: MediaQuery.of(context).size.width /
                                (isMobile ? 1.5 : 3.5),
                            velocityFactor: 1,
                            anchor: 0.5,
                            onIndexChanged: (index) {},
                            axisDirection: Axis.horizontal,
                            loop: true,
                            itemBuilder: (context, itemIndex, realIndex) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(isMobile ? 15 : 25),
                                  child: fabrication[itemIndex],
                                ),
                              );
                            },
                          ),
                          Positioned(
                            left: 0,
                            child: Card(
                              elevation: 10,
                              child: IconButton(
                                onPressed: () => controller2.previousItem(
                                    curve: Curves.bounceInOut,
                                    duration: Durations.short4),
                                icon: const Icon(
                                  Icons.arrow_back_ios_new,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Card(
                              elevation: 10,
                              child: IconButton(
                                onPressed: () => controller2.nextItem(
                                    curve: Curves.bounceInOut,
                                    duration: Durations.short4),
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      " 3D Printing",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width *
                            (isMobile == true ? 0.1 : 0.065),
                        fontFamily: "Playfair_Display",
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height /
                          (isMobile ? 3 : 2),
                      child: Stack(alignment: Alignment.center, children: [
                        InfiniteCarousel.builder(
                          controller: controller3,
                          itemCount: 6,
                          itemExtent: MediaQuery.of(context).size.width /
                              (isMobile ? 1.5 : 3.5),
                          velocityFactor: 1,
                          anchor: 0.5,
                          onIndexChanged: (index) {},
                          axisDirection: Axis.horizontal,
                          loop: true,
                          itemBuilder: (context, itemIndex, realIndex) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(isMobile ? 15 : 25),
                                child: printing3d[itemIndex],
                              ),
                            );
                          },
                        ),
                        Positioned(
                          left: 0,
                          child: Card(
                            elevation: 10,
                            child: IconButton(
                              onPressed: () => controller3.previousItem(
                                  curve: Curves.bounceInOut,
                                  duration: Durations.short4),
                              icon: const Icon(
                                Icons.arrow_back_ios_new,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Card(
                            elevation: 10,
                            child: IconButton(
                              onPressed: () => controller3.nextItem(
                                  curve: Curves.bounceInOut,
                                  duration: Durations.short4),
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                    ),
                    Footer(
                      isMobile: isMobile,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
