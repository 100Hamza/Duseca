import 'package:flutter/material.dart';
import 'package:interview_task/models/ride_history_model.dart';
import 'package:interview_task/presentation/element/custom_text.dart';
import 'package:interview_task/presentation/view/driver%20info/driver_info_view.dart';
import 'package:interview_task/presentation/view/ride_history/layout/widget/card_left_data.dart';
import 'package:interview_task/presentation/view/ride_history/layout/widget/card_right_data.dart';
import 'package:interview_task/utils/app_theme.dart';

class RideHistoryBody extends StatelessWidget {
  const RideHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: rideHistory.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DriverInfoView(),));
                  },
                  child: Container(
                    height: size.height * 0.19,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppThemeData.rideHistoryContainerBorderColor)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardLeftData(name: rideHistory[index].name, airPortName: rideHistory[index].airport,),
                        CardRightData(fare: '\$ ${rideHistory[index].fare.toString()}', city: rideHistory[index].cityName,)
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
