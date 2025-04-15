import 'package:flutter/material.dart';
import 'package:mypcot_app/constants/colors.dart';
import 'package:mypcot_app/constants/constants.dart';
import 'package:mypcot_app/widgets/round_icon_widgets.dart';
import 'package:mypcot_app/widgets/orange_circle_num.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: white,
      leading: const Center(
        child: Padding(
          padding: EdgeInsets.only(left: 15),
          child: RoundIconWidgets(
            imagePath: 'assets/icons/leading_menu_icon.svg',
            isSvg: true,
            isNetwork: false,
            size: 40,
          ),
        ),
      ),
      actions: const [
        RoundIconWidgets(
          imagePath: 'assets/icons/Group_921.svg',
          isSvg: true,
          isNetwork: false,
          size: 40,
        ),
        SizedBox(width: appbarWidth25),
        Stack(
          clipBehavior: Clip.none,
          children: [
            RoundIconWidgets(
              imagePath: 'assets/icons/Trailing_bell_icon_1.svg',
              isSvg: true,
              isNetwork: false,
              size: 40,
            ),
            Positioned(
              top: 4,
              right: 4,
              child: OrangeCircleNum(count: '2'),
            ),
          ],
        ),
        SizedBox(width: appbarWidth25),
        RoundIconWidgets(
          imagePath: 'assets/icons/profile_img.jpeg',
          isSvg: false,
          isNetwork: false,
          size: 42,
        ),
        SizedBox(width: appbarWidth15),
      ],
    );
  }
}
