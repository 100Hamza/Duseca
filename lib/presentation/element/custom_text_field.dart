// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_task/utils/app_theme.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    Key? key,
    required this.hintText,
    // required this.controller,
    required this.isPasswordField,
    this.obscureText = false,
    this.controller,
    this.validator,
    this.color = const Color(0xffC3C7E5),
    this.fontSize = 14,
    this.keyBoardType = TextInputType.text,
    this.maxLines = 1,
    this.isEnabled = true,
    this.isPrefixIcon = false,
    this.fillColor = Colors.white,
    this.prefixIcon,
  }) : super(key: key);
  final String hintText;
  TextEditingController? controller;
  final FormFieldValidator? validator;
  final double fontSize;
  final TextInputType keyBoardType;
  final bool isPrefixIcon;
  final IconData? prefixIcon;
  final Color color;
  final Color fillColor;

  // final TextEditingController controller;
  final bool isPasswordField;
  bool obscureText;
  bool isEnabled;
  final int maxLines;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextFormField(
        maxLines: widget.maxLines,
        keyboardType: widget.keyBoardType,
        validator: widget.validator,
        obscureText: widget.obscureText,
        enabled: widget.isEnabled,
        controller: widget.controller,
        obscuringCharacter: '●',
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
                  BorderSide(color: AppThemeData.kBorderColor, width: 1.3),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
                  BorderSide(color: AppThemeData.kBorderColor, width: 1.3),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
                  BorderSide(color: AppThemeData.kBorderColor, width: 1.3),
            ),
            fillColor: widget.fillColor,
            filled: true,
            isDense: true,
            prefixIcon: widget.isPrefixIcon
                ? Icon(
                    widget.prefixIcon,
                    color: Theme.of(context).colorScheme.primary,
                  )
                : null,
            suffixIcon: widget.isPasswordField
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.obscureText = !widget.obscureText;
                      });
                    },
                    child: widget.obscureText
                        ? const Icon(
                            Icons.visibility_off_outlined,
                            size: 20,
                          )
                        : const Icon(
                            Icons.visibility_outlined,
                            size: 20,
                          ),
                  )
                : null,
            hintText: widget.hintText,
            hintStyle: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                color: widget.color,
                fontSize: widget.fontSize)),
      ),
    );
  }
}
