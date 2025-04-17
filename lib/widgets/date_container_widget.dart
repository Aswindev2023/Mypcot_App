import 'package:flutter/material.dart';
import 'package:mypcot_app/constants/colors.dart';
import 'package:mypcot_app/widgets/main_info_box_widget.dart';

class DateContainerWidget extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final double radius;

  const DateContainerWidget({
    super.key,
    required this.child,
    this.height = 50,
    this.width = 100,
    this.radius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(radius),
      child: MainInfoBoxWidget(
        backgroundColor: white,
        radius: radius,
        height: height,
        width: width,
        child: child,
      ),
    );
  }
}
