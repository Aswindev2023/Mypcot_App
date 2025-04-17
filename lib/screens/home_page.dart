import 'package:flutter/material.dart';
import 'package:mypcot_app/constants/colors.dart';
import 'package:mypcot_app/views/customer_info_section.dart';
import 'package:mypcot_app/views/date_section.dart';
import 'package:mypcot_app/views/new_order_info.dart';
import 'package:mypcot_app/views/order_info_section.dart';
import 'package:mypcot_app/views/subscription_info_section.dart';
import 'package:mypcot_app/widgets/custom_bottom_nav_bar.dart';
import 'package:mypcot_app/widgets/home_app_bar.dart';
import 'package:mypcot_app/widgets/info_tile_wrapper.dart';
import 'package:mypcot_app/widgets/round_icon_widgets.dart';
import 'package:mypcot_app/widgets/welcome_text_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final height10 = screenHeight * 0.012;
    final height20 = screenHeight * 0.025;
    final height30 = screenHeight * 0.037;
    final height40 = screenHeight * 0.05;

    return Scaffold(
      backgroundColor: white,
      appBar: const HomeAppBar(),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.02),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height20),

              // Top section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const WelcomeTextSection(),
                    RoundIconWidgets(
                      imagePath: 'assets/icons/Group_922.svg',
                      isSvg: true,
                      isNetwork: false,
                      size: screenWidth * 0.14, // responsive icon
                    ),
                  ],
                ),
              ),

              SizedBox(height: height40),

              // Info box section
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                child: Row(
                  children: [
                    const InfoTileWrapper(child: OrderInfoSection()),
                    SizedBox(width: screenWidth * 0.03),
                    const InfoTileWrapper(child: SubscriptionInfoSection()),
                    SizedBox(width: screenWidth * 0.03),
                    const InfoTileWrapper(child: CustomerInfoSection()),
                  ],
                ),
              ),

              SizedBox(height: height20),

              // Date Section
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.02),
                child: const DateSection(),
              ),

              SizedBox(height: height30),

              // New order section
              const NewOrderInfo(),

              SizedBox(height: height10),
            ],
          ),
        ),
      ),

      // Floating Action Button
      floatingActionButton: SizedBox(
        height: screenHeight * 0.07,
        width: screenHeight * 0.07,
        child: const FloatingActionButton(
          onPressed: null,
          backgroundColor: fontColor,
          elevation: 4,
          shape: CircleBorder(),
          child: Icon(
            Icons.add,
            color: white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
