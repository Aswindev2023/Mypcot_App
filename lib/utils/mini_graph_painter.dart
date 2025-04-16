import 'package:flutter/material.dart';
import 'package:mypcot_app/constants/colors.dart';

class MiniGraphPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Line paint
    final linePaint = Paint()
      ..color = green // your custom green or Colors.green
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    // Fill paint (area below the line)
    final fillPaint = Paint()
      ..color = green.withOpacity(0.4)
      ..style = PaintingStyle.fill;

    final path = Path();
    final fillPath = Path();

    // Define points for the graph
    final points = [
      Offset(0, size.height * 2.5),
      Offset(size.width * 0.18, size.height * 0.5),
      Offset(size.width * 0.4, size.height * 1),
      Offset(size.width * 0.6, size.height * 0.01),
      Offset(size.width * 0.8, size.height * 0.6),
      Offset(size.width * 0.9, size.height * 0.01),
      Offset(size.width, size.height * 0.6),
    ];

    // Create line path
    path.moveTo(points[0].dx, points[0].dy);
    for (var point in points.skip(1)) {
      path.lineTo(point.dx, point.dy);
    }

    // Create fill path
    fillPath.addPath(path, Offset.zero);
    fillPath.lineTo(size.width, size.height); // bottom-right corner
    fillPath.lineTo(0, size.height); // bottom-left corner
    fillPath.close();

    // Draw the filled area first
    canvas.drawPath(fillPath, fillPaint);

    // Draw the line graph on top
    canvas.drawPath(path, linePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
