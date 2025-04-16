import 'package:flutter/material.dart';
import 'package:mypcot_app/constants/colors.dart';
import 'package:mypcot_app/utils/mini_graph_painter.dart';
import 'package:mypcot_app/widgets/app_text_widget.dart';

class GraphCardWidget extends StatelessWidget {
  const GraphCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 75,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top: 1.8% + Arrow
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppTextWidget(
                  text: '1.8%',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: black,
                ),
                SizedBox(width: 4),
                Icon(
                  Icons.arrow_upward,
                  color: green,
                  size: 25,
                ),
              ],
            ),
          ),

          const SizedBox(height: 4),

          // Bottom:  mini-graph
          Expanded(
            child: CustomPaint(
              painter: MiniGraphPainter(),
              size: const Size(double.infinity, 30),
            ),
          ),
        ],
      ),
    );
  }
}
