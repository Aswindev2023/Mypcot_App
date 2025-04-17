import 'package:flutter/material.dart';
import 'package:mypcot_app/constants/colors.dart';
import 'package:mypcot_app/utils/enhanced_text.dart';
import 'package:mypcot_app/widgets/graph_card_widget.dart';
import 'package:mypcot_app/widgets/info_box_image_widget_icon.dart';
import 'package:mypcot_app/widgets/main_info_box_widget.dart';
import 'package:mypcot_app/widgets/round_icon_widgets.dart';

class CustomerInfoSection extends StatelessWidget {
  const CustomerInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      clipBehavior: Clip.none,
      children: [
        //Main Container with background color
        MainInfoBoxWidget(backgroundColor: green),
        //Main Image Section
        Positioned(
          top: 35,
          left: 25,
          child: InfoBoxImageWidgetIcon(
            imagePath: 'assets/icons/customers_illustration_image.svg',
            size: 120,
          ),
        ),
        //Top container
        Positioned(
          top: -6,
          right: 50,
          child: MainInfoBoxWidget(
              backgroundColor: purpleRed,
              width: 140,
              height: 70,
              radius: 13,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: EnhancedText(
                    defaultColor: white,
                    highlightText: '15',
                    defaultFontSize: 12,
                    highlightFontSize: 18,
                    highlightColor: white,
                    suffixText: ' New customers',
                  ),
                ),
              )),
        ),
        // Graph Container
        Positioned(
          top: 70,
          right: 25,
          child: GraphCardWidget(),
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
            backgroundColor: lightBlue,
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
            backgroundColor: lightBlue,
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
            backgroundColor: lightBlue,
            size: 42,
          ),
        ),
        //Add Icon
        Positioned(
          top: 54,
          right: 60,
          child: CircleAvatar(
            radius: 11,
            backgroundColor: white,
            child: Icon(
              Icons.add,
              size: 14,
              color: black,
            ),
          ),
        ),
        //Active Customers
        Positioned(
          bottom: 23,
          right: 65,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              MainInfoBoxWidget(
                  backgroundColor: white,
                  width: 106,
                  height: 70,
                  radius: 13,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: EnhancedText(
                        defaultColor: fontColor,
                        highlightText: '10',
                        defaultFontSize: 14,
                        subText: '\t Active',
                        subTextFontSize: 10,
                        highlightFontSize: 20,
                        highlightColor: fontColor,
                        suffixText: '\n Customers',
                      ),
                    ),
                  )),
              //User profile Row
              Positioned(
                bottom: 22,
                right: -9,
                child: RoundIconWidgets(
                  imagePath:
                      'assets/images/christopher-campbell-rDEOVtE7vOs-unsplash.jpg',
                  isNetwork: false,
                  isSvg: false,
                  backgroundColor: lightBlue,
                  size: 24,
                ),
              ),
              Positioned(
                bottom: 22,
                right: -28,
                child: RoundIconWidgets(
                  imagePath:
                      'assets/images/craig-mckay-jmURdhtm7Ng-unsplash.jpg',
                  isNetwork: false,
                  isSvg: false,
                  backgroundColor: lightBlue,
                  size: 24,
                ),
              ),
              Positioned(
                bottom: 22,
                right: -43,
                child: RoundIconWidgets(
                  imagePath: 'assets/images/girl_profile.jpg',
                  isNetwork: false,
                  isSvg: false,
                  backgroundColor: lightBlue,
                  size: 24,
                ),
              ),
            ],
          ),
        ),
        //Subscription button
        Positioned(
          bottom: 25,
          left: 27,
          child: MainInfoBoxWidget(
            backgroundColor: purpleRed,
            width: 140,
            height: 33,
            radius: 13,
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(3),
                child: EnhancedText(
                  defaultColor: white,
                  defaultFontSize: 15,
                  prefixText: 'View Customers',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
