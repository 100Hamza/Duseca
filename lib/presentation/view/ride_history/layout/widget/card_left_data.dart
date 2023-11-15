import 'package:flutter/material.dart';
import 'package:interview_task/models/ride_history_model.dart';
import 'package:interview_task/presentation/element/custom_text.dart';
import 'package:interview_task/utils/app_theme.dart';

class CardLeftData extends StatelessWidget {
  String? name , airPortName;
  CardLeftData({super.key , this.name , this.airPortName});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
          child: Stack(
            children: [
              Container(
                width: 70,
                decoration: BoxDecoration(
                    color: AppThemeData.primaryColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: size.width * 0.188,),
                          Column(
                            children: [
                              SizedBox(height: size.height * 0.02,),
                              Icon(Icons.circle , size: size.height * 0.013, color: AppThemeData.darkGreenColor,),
                              SizedBox(height: size.height * 0.005,),
                              Container(
                                alignment: Alignment.center,
                                color: Colors.black45, height: size.height * 0.054, width: 2,),
                              SizedBox(height: size.height * 0.005,),
                              Image(image: AssetImage('assets/images/dropdown.png') , height: size.height * 0.009,)
                            ],
                          ),
                        ],
                      ),
                      Image(image: AssetImage('assets/images/van.png'), height: size.height * 0.05,),
                    ],
                  ))
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                height: size.height * 0.055,
                child: CustomText(text: name.toString() , fontSize: 14.0, color: AppThemeData.appBarTextColor, softWrap: true,)),
            SizedBox(
                height: size.height * 0.064,
                child: CustomText(text: airPortName.toString(), fontSize: 14.0, color: AppThemeData.appBarTextColor, softWrap: true,)),
          ],
        ),
      ],
    );
  }
}
