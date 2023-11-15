import 'package:flutter/material.dart';
import 'package:interview_task/phone_field_package/intl_phone_field.dart';
import 'package:interview_task/presentation/element/custom_text_field.dart';
import 'package:interview_task/utils/statics.dart';

import '../../../element/custom_text.dart';

class SignUpFields extends StatelessWidget {
  const SignUpFields({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: DataValues.yourName,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(hintText: 'e.g John Doe', isPasswordField: false),
        const SizedBox(
          height: 15,
        ),
        const CustomText(
          text: DataValues.yourEmail,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(
            hintText: 'e.g youremail@gmail.com', isPasswordField: false),
        const SizedBox(
          height: 15,
        ),
        const CustomText(
          text: DataValues.phoneNo,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        const SizedBox(
          height: 10,
        ),
        IntlPhoneField(
          initialCountryCode: 'IN',
          onChanged: (phone) {
            print(phone.completeNumber);
          },
        ),
        const SizedBox(
          height: 15,
        ),
        const CustomText(
          text: DataValues.pass,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(hintText: '●●●●●●●', isPasswordField: true , obscureText: true),
        const SizedBox(
          height: 15,
        ),
        const CustomText(
          text: DataValues.confirmPass,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(hintText: '●●●●●●●', isPasswordField: true , obscureText: true,),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
