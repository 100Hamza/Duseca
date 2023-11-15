import 'package:flutter/material.dart';
import 'package:interview_task/presentation/element/custom_text.dart';
import 'package:interview_task/utils/app_theme.dart';

class SeatsTags extends StatelessWidget {
  Color boxColor;
  String seatTagTitle;
  SeatsTags({super.key , required this.boxColor , required this.seatTagTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: boxColor
          ),
        ),
        SizedBox(width: 8.0,),
        CustomText(text: seatTagTitle, fontSize: 12, color: AppThemeData.seatLabelsColor, )
      ],
    );
  }
}
