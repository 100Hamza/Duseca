import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_task/presentation/element/custom_text.dart';
import 'package:interview_task/presentation/view/pcik_ride/layout/pic_ride_body.dart';
import 'package:interview_task/utils/app_theme.dart';
import 'package:interview_task/utils/statics.dart';

class PickRideView extends StatelessWidget {
  const PickRideView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: CustomText(text: DataValues.bookSeat , fontWeight: FontWeight.w600),
      centerTitle: true,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
    ),
      body: const PickRideBody()
    );
  }
}
