import 'package:flutter/material.dart';
import 'package:interview_task/presentation/view/signup/layout/sign_up_body.dart';
import '../../../utils/style_manager.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: StyleManager().getNoneAppBar(context),
        body:  const SignUpBody()
      ),
    );
  }
}
