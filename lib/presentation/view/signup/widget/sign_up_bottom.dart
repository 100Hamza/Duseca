import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_task/presentation/element/custom_text.dart';
import 'package:interview_task/presentation/element/cutstom_button.dart';
import 'package:interview_task/presentation/view/pcik_ride/pick_ride_view.dart';
import 'package:interview_task/utils/statics.dart';

class SignUpBottom extends StatefulWidget {
  const SignUpBottom({super.key});

  @override
  State<SignUpBottom> createState() => _SignUpBottomState();
}

class _SignUpBottomState extends State<SignUpBottom> {
  bool isPassenger = true, isDriver = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    isPassenger = true;
                    isDriver = false;
                  });
                },
                child: Row(
                  children: [
                    isPassenger
                        ? Image.asset(
                            'assets/images/bullet.png',
                            scale: 2.5,
                          )
                        : const Icon(
                            Icons.circle_outlined,
                            color: Colors.black,
                          ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomText(
                      text: DataValues.passenger,
                      fontSize: 14,
                      color: isPassenger ? Colors.red : Colors.black,
                    ),
                  ],
                )),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isPassenger = false;
                  isDriver = true;
                  print('IsPassender = $isPassenger and IsDriver = $isDriver');
                });
              },
              child: Row(
                children: [
                  isDriver
                      ? Image.asset(
                          'assets/images/bullet.png',
                          scale: 2.5,
                        )
                      : const Icon(
                          Icons.circle_outlined,
                          color: Colors.black,
                        ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomText(
                    text: DataValues.driver,
                    fontSize: 14,
                    color: isDriver ? Colors.red : Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.check_circle,
              color: Colors.greenAccent,
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: size.width * 0.8,
              child: Text(
                DataValues.passwordMustBe,
                textAlign: TextAlign.start,
                style: GoogleFonts.montserrat(
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        CustomButton(
            onPress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PickRideView(),));
            },
            buttonTitle: DataValues.createAccount,
            fontWeight: FontWeight.w600),
      ],
    );
  }
}
