import 'package:flutter/material.dart';
import 'package:mypcot_app/constants/colors.dart';
import 'package:mypcot_app/widgets/app_text_widget.dart';

class WelcomeTextSection extends StatelessWidget {
  const WelcomeTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextWidget(
          text: 'Welcome, Mypcot !!',
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: fontColor,
        ),
        SizedBox(height: 4),
        AppTextWidget(
          text: 'here is your dashboard....',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: fontColor,
        ),
      ],
    );
  }
}
