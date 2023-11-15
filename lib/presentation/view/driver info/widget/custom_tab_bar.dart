
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_task/presentation/element/custom_text.dart';
import 'package:interview_task/utils/app_theme.dart';
import 'package:interview_task/utils/statics.dart';

class CustomTabBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(70.0);
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.06,
      width: size.width,
      color:  AppThemeData.kChartColor.withOpacity(0.09),
      child: TabBar(tabs: const [
        Tab(text: DataValues.earning,),
        Tab(text: DataValues.rides,),
        Tab(text: DataValues.billing,),
        Tab(text: DataValues.reviews,),
      ],
      labelStyle: GoogleFonts.montserrat(
        color: AppThemeData.kTabColor,
        fontSize: 14.0,
        letterSpacing: 0.3,
        fontWeight: FontWeight.w500,
      ),
      labelPadding: const EdgeInsets.all(3),
      labelColor: AppThemeData.kTabColor,
        unselectedLabelColor: AppThemeData.kTabColor.withOpacity(0.5),
        indicatorColor: AppThemeData.kTabColor,
        overlayColor: MaterialStateProperty.all<Color>(AppThemeData.kTabColor.withOpacity(0.2),),
      )
    );
  }
}