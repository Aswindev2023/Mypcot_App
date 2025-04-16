import 'package:flutter/material.dart';
import 'package:mypcot_app/constants/colors.dart';

class InfoTileWrapper extends StatelessWidget {
  final Widget child;
  const InfoTileWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: child,
    );
  }
}
