import 'package:flutter/material.dart';
import 'package:interview_task/utils/app_theme.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          color: AppThemeData.carGreyColor,
          borderRadius: BorderRadius.circular(50)
      ),
    );
  }
}
