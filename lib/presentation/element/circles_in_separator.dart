import 'package:flutter/material.dart';
import 'package:interview_task/presentation/element/circular_container.dart';
import 'package:interview_task/utils/app_theme.dart';

class CirclesInSeparator extends StatelessWidget {
  const CirclesInSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(2.0),
      child: Row(
        children: [
          CircularContainer(),
          SizedBox(width: 3,),
          CircularContainer()
        ],
      ),
    );
  }
}
