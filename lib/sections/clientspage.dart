import 'package:drtechnologies/sections/footer.dart';
import 'package:drtechnologies/starbackground.dart';
import 'package:flutter/material.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({
    super.key,
    this.isMobile = false,
  });
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    final data = [
      Image.asset(
        "assets/clients/hul.png",
        fit: BoxFit.contain,
      ),
      Image.asset(
        "assets/clients/itc1.png",
        fit: BoxFit.contain,
      ),
      Image.asset(
        "assets/clients/autoaxles.png",
        fit: BoxFit.contain,
      ),
      Image.asset(
        "assets/clients/p5.png",
        fit: BoxFit.contain,
      ),
      Image.asset(
        "assets/clients/cftri.jpeg",
        fit: BoxFit.contain,
      ),
      Image.asset(
        "assets/clients/nie.jpeg",
        fit: BoxFit.contain,
      ),
      Image.asset(
        "assets/clients/picture1.png",
        fit: BoxFit.contain,
      ),
      Image.asset(
        "assets/clients/picture2.jpg",
        fit: BoxFit.contain,
      ),
      Image.asset(
        "assets/clients/picture3.jpg",
        fit: BoxFit.contain,
      ),
      Image.asset(
        "assets/clients/picture4.jpg",
        fit: BoxFit.contain,
      ),
      Image.asset(
        "assets/clients/picture5.jpg",
        fit: BoxFit.contain,
      ),
    ];
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
            "Clients",
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
        body: CustomScrollView(slivers: [
          SliverPadding(
            padding:
                EdgeInsets.all(MediaQuery.of(context).size.longestSide * 0.05),
            sliver: SliverGrid(
              delegate: SliverChildListDelegate([
                for (var partner in data) partner,
              ]),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: MediaQuery.of(context).size.longestSide * 0.1,
                mainAxisSpacing: MediaQuery.of(context).size.longestSide * 0.1,
                maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.15,
                mainAxisExtent: MediaQuery.of(context).size.height * 0.25,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Footer(
                  isMobile: isMobile,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
