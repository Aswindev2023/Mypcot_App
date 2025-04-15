import 'package:flutter/material.dart';
import 'package:mypcot_app/widgets/home_app_bar.dart';
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
                    // Search icon will go here later

                    RoundIconWidgets(
                      imagePath: 'assets/icons/Group_922.svg',
                      isSvg: true,
                      isNetwork: false,
                      size: 65,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
