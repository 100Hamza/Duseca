import 'package:flutter/material.dart';
import 'package:interview_task/models/ride_history_model.dart';
import 'package:interview_task/presentation/element/custom_text.dart';

import '../../../../../utils/app_theme.dart';

class CardRightData extends StatelessWidget {
  String? fare, city;
  CardRightData({super.key , this.fare, this.city});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(text:  fare.toString(), fontSize: 18.0, fontWeight: FontWeight.w500, color: AppThemeData.textFullDarkGrey, softWrap: true),
          SizedBox(height: size.height * 0.014, ),
          CustomText(text: city.toString(), fontSize: 14.0, color: AppThemeData.seatLabelsColor , softWrap: true,),
        ],
      ),
    );
  }
}
