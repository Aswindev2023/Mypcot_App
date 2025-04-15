// widgets/orange_circle_num.dart
import 'package:flutter/material.dart';
import 'package:mypcot_app/constants/colors.dart';
import 'package:mypcot_app/widgets/app_text_widget.dart';

class OrangeCircleNum extends StatelessWidget {
  final String count;
  final double size;

  const OrangeCircleNum({
    super.key,
    this.size = 17.0,
    this.count = '2',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: darkOrange,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: AppTextWidget(
        text: count,
        color: white,
        fontWeight: FontWeight.w500,
        fontSize: size * 0.8,
        textAlign: TextAlign.center,
        textHeight: 1.0,
      ),
    );
  }
}
