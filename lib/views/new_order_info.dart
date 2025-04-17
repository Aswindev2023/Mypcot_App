import 'package:flutter/material.dart';
import 'package:mypcot_app/constants/colors.dart';
import 'package:mypcot_app/widgets/app_text_widget.dart';
import 'package:mypcot_app/widgets/main_info_box_widget.dart';
import 'package:mypcot_app/widgets/order_round_icon_widget.dart';

class NewOrderInfo extends StatelessWidget {
  const NewOrderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 14,
                spreadRadius: 2,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: const MainInfoBoxWidget(
            height: 160,
            backgroundColor: white,
          ),
        ),
        const Positioned(
          bottom: 45,
          right: 35,
          child: OrderRoundIconWidget(
            imagePath: 'assets/icons/Group_900.svg',
            size: 65,
            isSvg: true,
            isNetwork: false,
            backgroundColor: lightOrange,
          ),
        ),
        const Positioned(
          top: 20,
          left: 25,
          child: AppTextWidget(
            text: 'New order created',
            fontSize: 20,
            color: fontColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Positioned(
          top: 50,
          left: 25,
          child: AppTextWidget(
            text: 'New order created with order',
            fontSize: 16,
            color: black,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Positioned(
          bottom: 48,
          left: 25,
          child: AppTextWidget(
            text: '09:00 AM',
            fontSize: 14,
            color: lightOrange,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Positioned(
            bottom: 28,
            left: 25,
            child: Icon(
              Icons.arrow_forward_rounded,
              color: lightOrange,
              size: 20,
            ))
      ],
    );
  }
}
