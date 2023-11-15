import 'package:flutter/material.dart';
import 'package:interview_task/presentation/element/circles_in_separator.dart';
import 'package:interview_task/utils/app_theme.dart';

class SeparatorInCar extends StatelessWidget {
  const SeparatorInCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.03,
      decoration: BoxDecoration(
        color: AppThemeData.carSeparatorColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // color of the shadow
            spreadRadius: 5, // spread radius
            blurRadius: 7, // blur radius
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child:  Padding(
        padding: const EdgeInsets.only(top: 2, left: 5, right: 5, bottom: 2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CirclesInSeparator(),
            Container(
              alignment: Alignment.topCenter,
              child: Container(
                height: 6,
                width: 70,
                color: AppThemeData.dividerColor,
              ),
            ),
            const CirclesInSeparator(),
          ],
        ),
      ),
    );
  }
}
