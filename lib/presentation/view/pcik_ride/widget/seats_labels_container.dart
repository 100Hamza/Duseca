

import 'package:flutter/cupertino.dart';
import 'package:interview_task/presentation/element/seats_tags.dart';
import 'package:interview_task/utils/app_theme.dart';
import 'package:interview_task/utils/statics.dart';

class SeatsLabelsContainer{

  Widget labels(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: AppThemeData.primaryColor.withOpacity(0.3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SeatsTags(boxColor: AppThemeData.darkGreenColor, seatTagTitle: DataValues.available),
          SeatsTags(boxColor: AppThemeData.unavailableColor, seatTagTitle: DataValues.unAvailable),
          SeatsTags(boxColor: AppThemeData.primaryColor, seatTagTitle: DataValues.selected),
        ],),
    );
  }

}