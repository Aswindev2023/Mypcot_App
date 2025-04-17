import 'package:flutter/material.dart';
import 'package:mypcot_app/views/customer_info_section.dart';
import 'package:mypcot_app/views/date_section.dart';
import 'package:mypcot_app/views/order_info_section.dart';
import 'package:mypcot_app/views/subscription_info_section.dart';
import 'package:mypcot_app/widgets/home_app_bar.dart';
import 'package:mypcot_app/widgets/info_tile_wrapper.dart';
import 'package:mypcot_app/widgets/round_icon_widgets.dart';
import 'package:mypcot_app/widgets/welcome_text_section.dart';

import '../constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: HomeAppBar(),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: height20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WelcomeTextSection(),
                    // Search icon
                    RoundIconWidgets(
                      imagePath: 'assets/icons/Group_922.svg',
                      isSvg: true,
                      isNetwork: false,
                      size: 65,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height40,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    InfoTileWrapper(child: OrderInfoSection()),
                    SizedBox(width: 12),
                    InfoTileWrapper(child: SubscriptionInfoSection()),
                    SizedBox(width: 12),
                    InfoTileWrapper(child: CustomerInfoSection()),
                  ],
                ),
              ),
              SizedBox(
                width: height30,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: DateSection(),
              ),
              SizedBox(
                width: width40,
              ),
            ],
          ),
        ));
  }
}
