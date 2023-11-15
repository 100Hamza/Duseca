import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontSize;
  final double letterSpacing;
  final FontWeight fontWeight;
  final TextOverflow? overflow;
  final bool softWrap;
  final TextAlign textAlign;
  final TextDecoration? decoration;
  final TextDecorationStyle? decorationStyle;

  const CustomText(
      {super.key,
        required this.text,
        this.color,
        this.overflow,
        this.decoration,
        this.softWrap = false,
        this.decorationStyle,
        this.textAlign = TextAlign.start,
        this.fontSize = 14,
        this.letterSpacing = 0.3,
        this.fontWeight = FontWeight.w500});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.montserrat(
        decorationThickness: 1,
        decoration: decoration,
        decorationStyle: decorationStyle,
        color: color,
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        fontWeight: fontWeight,
      ),
    );
  }
}
