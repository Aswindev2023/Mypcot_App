import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/colors.dart';

class OrderRoundIconWidget extends StatelessWidget {
  final String imagePath;
  final double size;
  final bool isSvg;
  final bool isNetwork;
  final Color backgroundColor;

  const OrderRoundIconWidget({
    super.key,
    required this.imagePath,
    this.size = 36,
    this.isSvg = false,
    this.isNetwork = true,
    this.backgroundColor = white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
            boxShadow: [
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
                  fit: BoxFit.contain,
                )
              : isNetwork
                  ? Image.network(
                      imagePath,
                      fit: BoxFit.contain,
                    )
                  : Image.asset(
                      imagePath,
                      fit: BoxFit.contain,
                    ),
        ),
      ),
    );
  }
}
