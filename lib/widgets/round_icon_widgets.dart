import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/colors.dart';

class RoundIconWidgets extends StatelessWidget {
  final String imagePath;
  final double size;
  final bool isSvg;
  final bool isNetwork;

  const RoundIconWidgets({
    super.key,
    required this.imagePath,
    this.size = 36,
    this.isSvg = false,
    this.isNetwork = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Container(
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: white, boxShadow: [
          BoxShadow(
            blurRadius: 8,
            spreadRadius: 2,
            color: black.withOpacity(0.1),
            offset: const Offset(0, 0),
          )
        ]),
        padding: const EdgeInsets.all(2),
        child: ClipOval(
          child: isSvg
              ? SvgPicture.asset(
                  imagePath,
                  fit: BoxFit.cover,
                )
              : isNetwork
                  ? Image.network(
                      imagePath,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
        ),
      ),
    );
  }
}
