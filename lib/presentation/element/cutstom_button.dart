import 'package:flutter/material.dart';
import 'package:interview_task/presentation/element/custom_text.dart';
import 'package:interview_task/utils/app_theme.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onPress;
  String buttonTitle;
  FontWeight fontWeight;
  CustomButton({super.key , required this.onPress, required this.buttonTitle , this.fontWeight = FontWeight.w500});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: InkWell(
        onTap: onPress,
        child: Container(
          alignment: Alignment.center,
          height: size.height * 0.06,
          width: size.width * 1,
          decoration: BoxDecoration(
              color: AppThemeData.primaryColor,
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle
          ),
          child: CustomText(text: buttonTitle, fontSize: 16, color: AppThemeData.secondaryColor, fontWeight: fontWeight,),
        ),
      ),
    );
  }
}
