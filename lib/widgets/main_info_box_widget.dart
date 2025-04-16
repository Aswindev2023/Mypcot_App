import 'package:flutter/material.dart';

class MainInfoBoxWidget extends StatelessWidget {
  final Color backgroundColor;
  final double width;
  final double height;
  final double radius;
  final Widget? child;

  const MainInfoBoxWidget({
    super.key,
    required this.backgroundColor,
    this.width = 375,
    this.height = 250,
    this.radius = 20,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
