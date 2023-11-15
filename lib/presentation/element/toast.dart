import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:interview_task/utils/app_theme.dart';


class ToastMsg {
  void toastMessage(String msg, Color bgColor) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        textColor: AppThemeData.secondaryColor,
        backgroundColor: bgColor,
        fontSize: 16.0,
        gravity: ToastGravity.TOP
    );
  }
}
