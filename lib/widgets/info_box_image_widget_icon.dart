import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/colors.dart';

class InfoBoxImageWidgetIcon extends StatelessWidget {
  final String imagePath;
  final double size;
  final Color backgroundColor;

  const InfoBoxImageWidgetIcon({
    super.key,
    required this.imagePath,
    this.size = 36,
    this.backgroundColor = white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: SvgPicture.asset(
        imagePath,
        width: size * 1,
        height: size * 1,
        fit: BoxFit.fill,
      ),
    );
  }
}
