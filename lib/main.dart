import 'package:drtechnologies/drtechnologies.dart';
import 'package:drtechnologies/mainpage.dart';
import 'package:drtechnologies/parallaxbackground.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MainWeb());
  DRTechnologies().initialize();
}

class MainWeb extends StatelessWidget {
  const MainWeb({super.key});
  bool checkCurrentPlatform() {
    bool isMobile = false;
    if (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS) {
      isMobile = true;
    }
    return isMobile;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ParallaxBackground(
        isMobile: checkCurrentPlatform(),
        child: Mainpage(
          isMobile: checkCurrentPlatform(),
        ),
      ),
    );
  }
}
