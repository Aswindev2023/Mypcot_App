import 'package:flutter/material.dart';
import 'package:mypcot_app/constants/colors.dart';
import 'package:mypcot_app/utils/enhanced_text.dart';
import 'package:mypcot_app/widgets/info_box_image_widget_icon.dart';
import 'package:mypcot_app/widgets/main_info_box_widget.dart';
import 'package:mypcot_app/widgets/round_icon_widgets.dart';

class OrderInfoSection extends StatelessWidget {
  const OrderInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      clipBehavior: Clip.none,
      children: [
        //Main Container with background color
        MainInfoBoxWidget(backgroundColor: lightBlue),
        //Main Image Section
        Positioned(
          top: 35,
          left: 25,
          child: InfoBoxImageWidgetIcon(
            imagePath: 'assets/icons/orders_illustration_image.svg',
            size: 120,
          ),
        ),
        //Top container "You have 3 ..."
        Positioned(
          top: -6,
          right: 50,
          child: MainInfoBoxWidget(
              backgroundColor: darkOrange,
              width: 140,
              height: 80,
              radius: 13,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: EnhancedText(
                    defaultColor: white,
                    prefixText: 'You have ',
                    highlightText: '3',
                    defaultFontSize: 14,
                    highlightFontSize: 18,
                    highlightColor: white,
                    suffixText: ' active\n     orders from',
                  ),
                ),
              )),
        ),
        //User's profile Images
        Positioned(
          top: 42,
          right: 130,
          child: RoundIconWidgets(
            imagePath:
                'assets/images/christopher-campbell-rDEOVtE7vOs-unsplash.jpg',
            isNetwork: false,
            isSvg: false,
            backgroundColor: darkOrange,
            size: 42,
          ),
        ),
        Positioned(
          top: 42,
          right: 103,
          child: RoundIconWidgets(
            imagePath: 'assets/images/craig-mckay-jmURdhtm7Ng-unsplash.jpg',
            isNetwork: false,
            isSvg: false,
            backgroundColor: darkOrange,
            size: 42,
          ),
        ),
        Positioned(
          top: 42,
          right: 75,
          child: RoundIconWidgets(
            imagePath: 'assets/images/girl_profile.jpg',
            isNetwork: false,
            isSvg: false,
            backgroundColor: darkOrange,
            size: 42,
          ),
        ),
        //02 pending container:
        Positioned(
          bottom: 60,
          right: 50,
          child: MainInfoBoxWidget(
              backgroundColor: white,
              width: 120,
              height: 80,
              radius: 13,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: EnhancedText(
                    defaultColor: fontColor,
                    highlightText: '02',
                    defaultFontSize: 15,
                    subText: '\t Pending',
                    subTextFontSize: 10,
                    highlightFontSize: 20,
                    highlightColor: fontColor,
                    suffixText: '\nOrders from',
                  ),
                ),
              )),
        ),
        //User's profile Images
        Positioned(
          bottom: 42,
          right: 110,
          child: RoundIconWidgets(
            imagePath: 'assets/images/sergio-de-paula-c_GmwfHBDzk-unsplash.jpg',
            isNetwork: false,
            isSvg: false,
            backgroundColor: darkOrange,
            size: 42,
          ),
        ),
        Positioned(
          bottom: 42,
          right: 80,
          child: RoundIconWidgets(
            imagePath:
                'assets/images/stefan-stefancik-QXevDflbl8A-unsplash.jpg',
            isNetwork: false,
            isSvg: false,
            backgroundColor: darkOrange,
            size: 42,
          ),
        ),
        //Order Button
        Positioned(
          bottom: 30,
          left: 32,
          child: MainInfoBoxWidget(
            backgroundColor: darkOrange,
            width: 110,
            height: 35,
            radius: 12,
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: EnhancedText(
                  defaultColor: white,
                  defaultFontSize: 15,
                  prefixText: 'Orders',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
