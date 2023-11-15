import 'package:flutter/material.dart';
import 'package:interview_task/presentation/element/custom_text.dart';
import 'package:interview_task/presentation/view/ride_history/layout/ride_history_body.dart';
import 'package:interview_task/utils/app_theme.dart';
import 'package:interview_task/utils/statics.dart';
import 'package:interview_task/utils/style_manager.dart';

class RideHistoryView extends StatelessWidget {
  const RideHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: DataValues.rideHistory,
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppThemeData.unavailableColor.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            margin: const EdgeInsets.only(left: 10),
            child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.red,
                  ),
                )),
          ),
        ),
      ),
      body: const RideHistoryBody(),
    );
  }
}
