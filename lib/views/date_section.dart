import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot_app/constants/colors.dart';
import 'package:mypcot_app/constants/constants.dart';
import 'package:mypcot_app/widgets/app_text_widget.dart';
import 'package:mypcot_app/widgets/date_container_widget.dart';

class DateSection extends StatefulWidget {
  const DateSection({super.key});

  @override
  State<DateSection> createState() => _DateSectionState();
}

class _DateSectionState extends State<DateSection> {
  int selectedIndex = 3;

  final days = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
  final dates = [20, 21, 22, 23, 24, 25, 26];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Low-opacity date
                  Text(
                    "January, 23 2021",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                  const SizedBox(height: 6),

                  // "Today" text
                  const Text(
                    "Today",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                width: 10,
              ),

              // Timeline Container
              const DateContainerWidget(
                width: 140,
                height: 50,
                radius: 30,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 35,
                    ),
                    child: Row(
                      children: [
                        AppTextWidget(
                          text: 'TIMELINE ',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: fontColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 24,
                          color: fontColor,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              // Calendar & Text
              DateContainerWidget(
                width: 120,
                height: 50,
                radius: 30,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/Group_911.svg',
                          width: 20,
                          height: 20,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        const AppTextWidget(
                          text: 'JAN, 2021 ',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: fontColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: height30),

        // Full width week list
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(days.length, (index) {
            final isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Column(
                children: [
                  AppTextWidget(
                    text: days[index],
                    color: isSelected ? darkGreen : darkGreen.withOpacity(0.3),
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(height: 4),
                  AppTextWidget(
                    text: dates[index].toString(),
                    color: isSelected ? darkGreen : black,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 6),
                  if (isSelected)
                    const CircleAvatar(
                      radius: 3,
                      backgroundColor: darkGreen,
                    ),
                ],
              ),
            );
          }),
        ),
      ],
    );
  }
}
