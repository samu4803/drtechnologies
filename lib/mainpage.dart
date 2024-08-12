import 'package:circular_clip_route/circular_clip_route.dart';
import 'package:drtechnologies/contactus.dart';
import 'package:drtechnologies/photogallery.dart';
import 'package:drtechnologies/sections/architectural.dart';
import 'package:drtechnologies/sections/clients.dart';
import 'package:drtechnologies/sections/clientspage.dart';
import 'package:drtechnologies/sections/concepttoproduct.dart';
import 'package:drtechnologies/sections/fabrication.dart';
import 'package:drtechnologies/sections/footer.dart';
import 'package:drtechnologies/sections/functionalsections.dart';
import 'package:drtechnologies/sections/mainheading.dart';
import 'package:drtechnologies/sections/printing3d.dart';
import 'package:drtechnologies/servicesprovided.dart';
import 'package:drtechnologies/test/animatedservices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({
    super.key,
    this.isMobile = false,
  });
  final bool isMobile;
  @override
  State<Mainpage> createState() => _MainPage();
}

class _MainPage extends State<Mainpage> {
  final controller = ScrollController();
  var sectorOpacity = 0.0;
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  final footerKey = GlobalKey();
  final clientKey = GlobalKey();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    List<Widget> otherPages({
      bool isMobile = false,
      bool appBar = true,
    }) {
      if (isMobile && appBar) {
        return [];
      }
      return [
        Builder(
            builder: (c) => TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      CircularClipRoute(
                        expandFrom: c,
                        builder: (ctx) => ServicesProvided(
                          isMobile: isMobile,
                        ),
                      ),
                    );
                  },
                  style: const ButtonStyle(
                    shadowColor: WidgetStatePropertyAll(Colors.white),
                    surfaceTintColor: WidgetStatePropertyAll(Colors.white),
                    overlayColor: WidgetStatePropertyAll(
                      Color.fromARGB(20, 255, 255, 255),
                    ),
                  ),
                  child: const Text(
                    "Services",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontFamily: "Lato",
                    ),
                  ),
                )),
        Builder(
          builder: (c) => TextButton(
            onPressed: () {
              Navigator.of(context).push(
                CircularClipRoute(
                  expandFrom: c,
                  builder: (context) => PhotoGallery(
                    isMobile: isMobile,
                  ),
                ),
              );
            },
            style: const ButtonStyle(
              shadowColor: WidgetStatePropertyAll(Colors.white),
              surfaceTintColor: WidgetStatePropertyAll(Colors.white),
              overlayColor: WidgetStatePropertyAll(
                Color.fromARGB(20, 255, 255, 255),
              ),
            ),
            child: const Text(
              "Gallery",
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontFamily: "Lato",
              ),
            ),
          ),
        ),
        Builder(
            builder: (c) => TextButton(
                  onPressed: () {
                    scaffoldKey.currentState?.closeDrawer();
                    Navigator.of(context).push(CircularClipRoute(
                      expandFrom: c,
                      builder: (context) => ClientsPage(
                        isMobile: isMobile,
                      ),
                    ));
                  },
                  style: const ButtonStyle(
                    shadowColor: WidgetStatePropertyAll(Colors.white),
                    surfaceTintColor: WidgetStatePropertyAll(Colors.white),
                    overlayColor: WidgetStatePropertyAll(
                      Color.fromARGB(20, 255, 255, 255),
                    ),
                  ),
                  child: const Text(
                    "Clients",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontFamily: "Lato",
                    ),
                  ),
                )),
        Builder(
          builder: (c) => TextButton(
            onPressed: () {
              scaffoldKey.currentState?.closeDrawer();
              Navigator.of(context).push(CircularClipRoute(
                expandFrom: c,
                builder: (context) => ContactUs(
                  isMobile: isMobile,
                ),
              ));
            },
            style: const ButtonStyle(
              shadowColor: WidgetStatePropertyAll(Colors.white),
              surfaceTintColor: WidgetStatePropertyAll(Colors.white),
              overlayColor: WidgetStatePropertyAll(
                Color.fromARGB(20, 255, 255, 255),
              ),
            ),
            child: const Text(
              "Contact Us",
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontFamily: "Lato",
              ),
            ),
          ),
        ),
      ];
    }

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width * 0.09,
        backgroundColor: const Color.fromARGB(175, 15, 3, 33),
        surfaceTintColor: Colors.transparent,
        elevation: 10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/logo.svg",
              fit: BoxFit.contain,
              width: widget.isMobile
                  ? 25
                  : MediaQuery.of(context).size.width * 0.1,
              height: widget.isMobile
                  ? 35
                  : MediaQuery.of(context).size.width * 0.1,
            ),
            Text(
              "D R TECHNOLOGIES  ",
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width *
                    (widget.isMobile == true ? 0.07 : 0.04),
                decoration: TextDecoration.none,
                fontFamily: "Playfair_Display",
              ),
            ),
            ...otherPages(
              isMobile: widget.isMobile,
            ),
          ],
        ),
        leading: widget.isMobile
            ? IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () => scaffoldKey.currentState?.openDrawer(),
              )
            : null,
      ),
      drawer: widget.isMobile
          ? Drawer(
              width: MediaQuery.of(context).size.width / 2,
              backgroundColor: const Color.fromARGB(255, 15, 3, 33),
              child: Column(
                children: [
                  ...otherPages(
                    isMobile: widget.isMobile,
                    appBar: false,
                  )
                ],
              ),
            )
          : null,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.animateTo(
            0,
            duration: Durations.extralong3,
            curve: Curves.easeInOut,
          );
        },
        backgroundColor: const Color.fromARGB(255, 178, 20, 26),
        child: const Icon(
          Icons.arrow_upward,
          color: Colors.white,
          size: 35,
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: false,
        ),
        child: ScrollTransformView(
          children: [
            ScrollTransformItem(
              builder: (scrollOffset) => MainHeading(
                isMobile: widget.isMobile,
              ),
            ),
            ScrollTransformItem(
              builder: (scrollOffset) => FunctionalSections(
                isMobile: widget.isMobile,
              ),
              offsetBuilder: (scrollOffset) {
                var currentOffset =
                    MediaQuery.of(context).size.width - scrollOffset * 2.3;
                if (currentOffset <= 0) {
                  currentOffset = 0;
                }
                return Offset(currentOffset, 0);
              },
            ),
            ScrollTransformItem(
              builder: (scrollOffset) => ConceptToProduct(
                isMobile: widget.isMobile,
              ),
            ),
            ScrollTransformItem(builder: (scrollOffset) {
              return AnimatedServices(
                offset: () => scrollOffset,
                isMobile: widget.isMobile,
              );
            }),
            ScrollTransformItem(
              builder: (scrollOffset) => Printing3d(
                isMobile: widget.isMobile,
              ),
            ),
            ScrollTransformItem(
              builder: (scrollOffset) => Architectural(
                isMobile: widget.isMobile,
              ),
            ),
            ScrollTransformItem(
              builder: (scrollOffset) => Fabrication(
                isMobile: widget.isMobile,
              ),
            ),
            ScrollTransformItem(
              builder: (scrollOffset) => Clients(
                key: clientKey,
                isMobile: widget.isMobile,
              ),
            ),
            ScrollTransformItem(
              builder: (scrollOffset) => Footer(
                key: footerKey,
                isMobile: widget.isMobile,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
