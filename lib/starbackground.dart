import 'package:flutter/material.dart';

class StarBackground extends StatelessWidget {
  const StarBackground({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
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
          child,
        ],
      ),
    );
  }
}
