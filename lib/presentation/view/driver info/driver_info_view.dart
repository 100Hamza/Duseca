import 'package:flutter/material.dart';
import 'package:interview_task/presentation/element/custom_text.dart';
import 'package:interview_task/presentation/view/driver%20info/layout/driver_info_body.dart';
import 'package:interview_task/presentation/view/driver%20info/widget/custom_tab_bar.dart';
import 'package:interview_task/presentation/view/driver%20info/widget/tab_bar_view.dart';
import 'package:interview_task/utils/app_theme.dart';
import 'package:interview_task/utils/statics.dart';

class DriverInfoView extends StatelessWidget {
  const DriverInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: CustomTabBar(),
          title: const CustomText(
            text: DataValues.driverInfo,
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
                    offset: Offset(0, 3),
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
        body: CustomTabBarView(),
      ),
    );
  }
}
