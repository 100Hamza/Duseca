import 'package:flutter/material.dart';
import 'package:interview_task/presentation/view/signup/widget/sign_up_bottom.dart';
import 'package:interview_task/presentation/view/signup/widget/sign_up_fields.dart';
import 'package:interview_task/presentation/view/signup/widget/signup_header.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SignUpHeader(),
            SignUpFields(),
            SignUpBottom(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
