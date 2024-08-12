import 'package:flutter/material.dart';

class TextFadeAnimation extends StatefulWidget {
  const TextFadeAnimation({
    super.key,
    required this.text,
  });
  final Text text;
  @override
  State<TextFadeAnimation> createState() => _TextFadeAnimationState();
}

class _TextFadeAnimationState extends State<TextFadeAnimation> {
  bool animationCompleted = false;
  double opacity = 0;
  @override
  Widget build(BuildContext context) {
    Future.microtask(
      () {
        if (opacity != 1) {
          opacity = 1;
          setState(() {});
        }
      },
    );
    return AnimatedOpacity(
      opacity: opacity,
      curve: Curves.easeInOut,
      duration: const Duration(
        seconds: 7,
      ),
      child: widget.text,
    );
  }
}
