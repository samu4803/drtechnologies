import 'package:drtechnologies/starbackground.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({
    super.key,
    this.isMobile = false,
  });
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return StarBackground(
      child: Scaffold(
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
            "Contact Us",
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
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/logo.svg",
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.shortestSide * 0.45,
                height: MediaQuery.of(context).size.shortestSide * 0.4,
              ),
              Text(
                "D R TECHNOLOGIES  ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width *
                      (isMobile == true ? 0.1 : 0.065),
                  decoration: TextDecoration.none,
                  fontFamily: "Playfair_Display",
                ),
              ),
              isMobile
                  ? const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone No: ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Playfair_Display",
                              ),
                            ),
                            Text(
                              "9113844031",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontFamily: "Lato",
                              ),
                            ),
                            Text(
                              "9036978187 ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontFamily: "Lato",
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address: ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Playfair_Display",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "CA-01, University Layout,\nDattagalli Ring Road, Lingabudhi Road,\nMysuru- 570008",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontFamily: "Lato",
                              ),
                            ),
                            Text(
                              "Mail: ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Playfair_Display",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "support@drtechnologies.in",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontFamily: "Lato",
                              ),
                            ),
                            Text(
                              "drtechmys@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontFamily: "Lato",
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone No: ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Playfair_Display",
                              ),
                            ),
                            Text(
                              "9113844031",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "Lato",
                              ),
                            ),
                            Text(
                              "9036978187 ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "Lato",
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address: ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: "Playfair_Display",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "CA-01, University Layout,\nDattagalli Ring Road, Lingabudhi Road,\nMysuru- 570008",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "Lato",
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mail: ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: "Playfair_Display",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "support@drtechnologies.in",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "Lato",
                              ),
                            ),
                            Text(
                              "drtechmys@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "Lato",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
