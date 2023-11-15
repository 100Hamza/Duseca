import 'package:flutter/material.dart';
import 'package:interview_task/presentation/view/driver%20info/layout/driver_info_body.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      DriverInfoBody(chartName: 'Your Earnings'),
      DriverInfoBody(chartName: 'Your Rides'),
      DriverInfoBody(chartName: 'Billings'),
      DriverInfoBody(chartName: 'Reviews'),
    ]);
  }
}
