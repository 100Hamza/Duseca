import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StyleManager{

  static BoxShadow kPrimaryShadow = BoxShadow(
      color: const Color(0xff8E9699).withOpacity(0.12),
      blurRadius: 14,
      spreadRadius: 0,
      offset: const Offset(0, 3.1));

  getNoneAppBar(BuildContext context,
      {Function? function, String? icon, IconData? iconData, Color? color}) {
    color ??= Theme.of(context).scaffoldBackgroundColor;
    return AppBar(
      toolbarHeight: 0,
      forceMaterialTransparency: true,
      elevation: 0,
      backgroundColor: color,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [lighten(color, 0.5), color]),
        ),
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        systemNavigationBarColor: color,
        statusBarColor: color,
        systemNavigationBarIconBrightness: Theme.of(context).brightness,
      ),
    );
  }

  Color lighten(Color color, [double amount = 0.04]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }
}