
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_task/presentation/element/custom_text.dart';
import 'package:interview_task/utils/statics.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: size.height * 0.1,
        ),
        Center(
            child: Image.asset(
              'assets/images/logo.png',
              scale: 3,
            )),
        const SizedBox(
          height: 20,
        ),
         const Center(
          child: CustomText(
            text: DataValues.signUpToday,
            fontSize: 18,
            letterSpacing: 2,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Center(
            child: Text(
              DataValues.provideUs,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(fontSize: 16),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
