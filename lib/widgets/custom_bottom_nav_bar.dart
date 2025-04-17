import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot_app/constants/colors.dart';
import 'package:mypcot_app/widgets/app_text_widget.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      color: const Color.fromARGB(255, 240, 240, 240),
      elevation: 8,
      child: SizedBox(
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem('assets/icons/Group_910.svg', 'Home'),
            _buildNavItem('assets/icons/Group_912.svg', 'Customers'),
            const SizedBox(width: 40),
            _buildNavItem('assets/icons/Group_913.svg', 'Khata'),
            _buildNavItem('assets/icons/Group_914.svg', 'Orders'),
          ],
        ),
      ),
    );
  }

  // Function to create an icon with its title
  Widget _buildNavItem(String assetPath, String title) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          assetPath,
          height: 24,
          width: 24,
        ),
        AppTextWidget(
          text: title,
          color: grey,
          fontSize: 12,
        ),
      ],
    );
  }
}
