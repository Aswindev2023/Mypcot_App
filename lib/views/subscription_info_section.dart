import 'package:flutter/material.dart';
import 'package:mypcot_app/constants/colors.dart';
import 'package:mypcot_app/utils/enhanced_text.dart';
import 'package:mypcot_app/widgets/info_box_image_widget_icon.dart';
import 'package:mypcot_app/widgets/main_info_box_widget.dart';
import 'package:mypcot_app/widgets/round_icon_widgets.dart';

class SubscriptionInfoSection extends StatelessWidget {
  const SubscriptionInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      clipBehavior: Clip.none,
      children: [
        //Main Container with background color
        MainInfoBoxWidget(backgroundColor: yellow),
        //Main Image Section
        Positioned(
          top: 35,
          left: 25,
          child: InfoBoxImageWidgetIcon(
            imagePath: 'assets/icons/subscriptions_illustration_image.svg',
            size: 120,
          ),
        ),
        //Top container
        Positioned(
          top: -6,
          right: 50,
          child: MainInfoBoxWidget(
              backgroundColor: darkBlue,
              width: 130,
              height: 70,
              radius: 13,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: EnhancedText(
                    defaultColor: white,
                    highlightText: '03',
                    defaultFontSize: 12,
                    highlightFontSize: 18,
                    highlightColor: white,
                    suffixText: ' deliveries',
                  ),
                ),
              )),
        ),

        //Subscription Container
        Positioned(
          top: 70,
          right: 54,
          child: MainInfoBoxWidget(
              backgroundColor: white,
              width: 102,
              height: 66,
              radius: 13,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 22),
                  child: EnhancedText(
                    defaultColor: fontColor,
                    highlightText: '10',
                    defaultFontSize: 12,
                    subText: '\t Active',
                    subTextFontSize: 10,
                    highlightFontSize: 20,
                    highlightColor: fontColor,
                    suffixText: '\nSubscriptions',
                  ),
                ),
              )),
        ),
        //User's profile Images
        Positioned(
          top: 42,
          right: 120,
          child: RoundIconWidgets(
            imagePath:
                'assets/images/christopher-campbell-rDEOVtE7vOs-unsplash.jpg',
            isNetwork: false,
            isSvg: false,
            backgroundColor: darkBlue,
            size: 42,
          ),
        ),
        Positioned(
          top: 42,
          right: 97,
          child: RoundIconWidgets(
            imagePath: 'assets/images/craig-mckay-jmURdhtm7Ng-unsplash.jpg',
            isNetwork: false,
            isSvg: false,
            backgroundColor: darkBlue,
            size: 42,
          ),
        ),
        Positioned(
          top: 42,
          right: 70,
          child: RoundIconWidgets(
            imagePath: 'assets/images/girl_profile.jpg',
            isNetwork: false,
            isSvg: false,
            backgroundColor: darkBlue,
            size: 42,
          ),
        ),
        //Pending Deliveries
        Positioned(
          bottom: 40,
          right: 30,
          child: MainInfoBoxWidget(
              backgroundColor: white,
              width: 104,
              height: 66,
              radius: 13,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: EnhancedText(
                    defaultColor: fontColor,
                    highlightText: '119',
                    defaultFontSize: 12,
                    subText: '\t pending',
                    subTextFontSize: 10,
                    highlightFontSize: 20,
                    highlightColor: fontColor,
                    suffixText: '\nDeliveries',
                  ),
                ),
              )),
        ),
        //Subscription button
        Positioned(
          bottom: 25,
          left: 30,
          child: MainInfoBoxWidget(
            backgroundColor: darkBlue,
            width: 130,
            height: 35,
            radius: 13,
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: EnhancedText(
                  defaultColor: white,
                  defaultFontSize: 15,
                  prefixText: 'Subscriptions',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
