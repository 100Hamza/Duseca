import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/utils/app_theme.dart';

class BarChartUsers extends StatelessWidget {
  const BarChartUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: BarChart(BarChartData(
          borderData: FlBorderData(border: Border.all(width: 0)),
          groupsSpace: 10,
          titlesData: FlTitlesData(
              show: true,
              bottomTitles: SideTitles(
                  showTitles: true,
                  margin: 5,
                  getTitles: (double value) {
                    if (value == 1) {
                      return 'Sat';
                    }
                    if (value == 2) {
                      return 'Sun';
                    }
                    if (value == 3) {
                      return 'Mon';
                    }
                    if (value == 4) {
                      return 'Tue';
                    }
                    if (value == 5) {
                      return 'Tue';
                    }
                    if (value == 6) {
                      return 'Wed';
                    }
                    if (value == 7) {
                      return 'Fri';
                    } else {
                      return '';
                    }
                  }),
              leftTitles: SideTitles(
                  showTitles: false,
                  margin: 12,
                  getTitles: (double value) {
                    if (value == 2) {
                      return '1K';
                    }
                    if (value == 6) {
                      return '2K';
                    }
                    if (value == 10) {
                      return '3K';
                    }
                    if (value == 14) {
                      return '4K';
                    } else {
                      return '';
                    }
                  })),
          barGroups: [
            BarChartGroupData(x: 1, barRods: [
              BarChartRodData(
                  y: 10,
                  width: 18,
                  colors: [
                    AppThemeData.kChartColor1,
                    AppThemeData.kChartColor,
                  ],
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12)))
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(
                  y: 3,
                  width: 18,
                  colors: [
                    AppThemeData.kChartColor1,
                    AppThemeData.kChartColor,
                  ],
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12))),
            ]),
            BarChartGroupData(x: 3, barRods: [
              BarChartRodData(
                  y: 12,
                  width: 18,
                  colors: [
                    AppThemeData.kChartColor1,
                    AppThemeData.kChartColor,
                  ],
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12))),
            ]),
            BarChartGroupData(x: 4, barRods: [
              BarChartRodData(
                  y: 8,
                  width: 18,
                  colors: [
                    AppThemeData.kChartColor1,
                    AppThemeData.kChartColor,
                  ],
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12)))
            ]),
            BarChartGroupData(x: 5, barRods: [
              BarChartRodData(
                  y: 6,
                  width: 18,
                  colors: [
                    AppThemeData.kChartColor1,
                    AppThemeData.kChartColor,
                  ],
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12)))
            ]),
            BarChartGroupData(x: 6, barRods: [
              BarChartRodData(
                  y: 10,
                  width: 18,
                  colors: [
                    AppThemeData.kChartColor1,
                    AppThemeData.kChartColor,
                  ],
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12)))
            ]),
            BarChartGroupData(x: 7, barRods: [
              BarChartRodData(
                  y: 16,
                  width: 18,
                  colors: [
                    AppThemeData.kChartColor1,
                    AppThemeData.kChartColor,
                  ],
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12)))
            ]),
          ])),
    );
  }
}
