import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      this.text = "",
      this.fontsize,
      this.color,
      this.alignment,
      this.fontWeight,
      this.letterSpacing});

  final String text;
  final double? fontsize;
  final Color? color;
  final Alignment? alignment;
  final FontWeight? fontWeight;
  final double? letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontsize,
          letterSpacing: letterSpacing,
        ),
      ),
    );
  }
}
