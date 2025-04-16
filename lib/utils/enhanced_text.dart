import 'package:flutter/material.dart';
import '../constants/colors.dart';

class EnhancedText extends StatelessWidget {
  final String? prefixText;
  final String? highlightText;
  final String? suffixText;
  final String? subText;
  final double? subTextFontSize;
  final Color highlightColor;
  final double highlightFontSize;
  final Color subTextColor;
  final Color defaultColor;
  final double defaultFontSize;
  final double? suffixFontSize;
  final double? prefixFontSize;

  const EnhancedText({
    super.key,
    this.prefixText,
    this.highlightText,
    this.suffixText,
    this.highlightColor = white,
    this.subTextColor = fontColor,
    this.highlightFontSize = 20,
    this.defaultColor = white,
    this.defaultFontSize = 16,
    this.subTextFontSize,
    this.prefixFontSize,
    this.suffixFontSize,
    this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: defaultFontSize,
          color: defaultColor,
          fontWeight: FontWeight.w400,
        ),
        children: [
          if (prefixText != null)
            TextSpan(
                text: prefixText,
                style: TextStyle(
                  fontSize: prefixFontSize ?? defaultFontSize,
                )),
          if (highlightText != null)
            TextSpan(
              text: highlightText,
              style: TextStyle(
                fontSize: highlightFontSize,
                fontWeight: FontWeight.bold,
                color: highlightColor,
              ),
            ),
          if (subText != null)
            TextSpan(
                text: subText,
                style: TextStyle(
                  fontSize: subTextFontSize ?? (defaultFontSize * 0.85),
                  color: subTextColor.withOpacity(0.8),
                  fontWeight: FontWeight.w400,
                )),
          if (suffixText != null)
            TextSpan(
                text: suffixText,
                style: TextStyle(
                  fontSize: suffixFontSize ?? defaultFontSize,
                )),
        ],
      ),
    );
  }
}
