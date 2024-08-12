import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class ClientShowCase extends StatelessWidget {
  const ClientShowCase({
    super.key,
    required this.images,
    required this.width,
    required this.height,
    this.forMobile = false,
  });
  final List<Image> images;
  final double width;
  final double height;
  final bool forMobile;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: forMobile == true
          ? Wrap(
              children: [
                for (var image in images)
                  Container(
                    margin: const EdgeInsets.all(17),
                    child: AvatarGlow(
                      glowCount: 2,
                      glowRadiusFactor: 0.1,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: width * 0.07,
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          width: width * 0.15,
                          height: width * 0.15,
                          child: image,
                        ),
                      ),
                    ),
                  ),
              ],
            )
          : Wrap(
              children: [
                for (var image in images)
                  Container(
                    margin: const EdgeInsets.all(17),
                    child: AvatarGlow(
                      glowCount: 2,
                      glowRadiusFactor: 0.1,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: width / (images.length * 2),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          width: width / (images.length * 1.3),
                          height: width / (images.length * 1.3),
                          child: image,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
    );
  }
}
