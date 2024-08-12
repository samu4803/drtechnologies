import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/web_symbols_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    this.isMobile = false,
  });
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 178, 20, 26),
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      child: isMobile
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "D R TECHNOLOGIES",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: "Playfair_Display",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/logo.svg",
                      height: 75,
                      width: 75,
                    ),
                  ],
                ),
                const Column(
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
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/logo.svg",
                      height: 300,
                      width: 300,
                    ),
                    const Text(
                      "D R TECHNOLOGIES",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 75,
                        fontFamily: "Playfair_Display",
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
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
                    const Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
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
                          ],
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Connect with us: ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: "Playfair_Display",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () async {
                                    try {
                                      await launchUrl(Uri.parse(
                                          "https://maps.app.goo.gl/Z6pErWN6ssufBjnVA"));
                                    } catch (e) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              "Maps is not installed on the device"),
                                        ),
                                      );
                                    }
                                  },
                                  icon: const Icon(
                                    WebSymbols.location,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () async {
                                    try {
                                      await launchUrl(Uri.parse(
                                          "https://wa.me/9113844031"));
                                    } catch (e) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              "WhatsApp is not installed on the device"),
                                        ),
                                      );
                                    }
                                  },
                                  icon: const Icon(
                                    FontAwesome.whatsapp,
                                    color: Color.fromARGB(255, 16, 194, 69),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () async {
                                    try {
                                      await launchUrl(Uri.parse(
                                          "https://www.linkedin.com/company/d-r-technologies/?originalSubdomain=in"));
                                    } catch (e) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              "Linkedin is not installed on the device"),
                                        ),
                                      );
                                    }
                                  },
                                  icon: const Icon(
                                    FontAwesome.linkedin,
                                    color: Color.fromARGB(255, 10, 102, 194),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Text(
                          "Mail: ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "Playfair_Display",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          "support@drtechnologies.in",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "Lato",
                          ),
                        ),
                        const Text(
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
    );
  }
}
