import 'package:flutter/material.dart';
import 'package:interview_task/presentation/element/separater_in_car.dart';

class FrontSeatsAndDivider extends StatelessWidget {
  VoidCallback middleSeatOnPress, doorSeatOnPress;
  bool frontMiddleSeat, frontDoorSeat;

  FrontSeatsAndDivider(
      {super.key,
      required this.middleSeatOnPress,
      required this.doorSeatOnPress,
      this.frontDoorSeat = false,
      this.frontMiddleSeat = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Expanded(
                  child:
                      Image(image: AssetImage('assets/images/grey seat.png'))),
              InkWell(
                  onTap: middleSeatOnPress,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: SizedBox(
                        height: 40,
                        child: Image(
                          image: frontMiddleSeat
                              ? const AssetImage('assets/images/red seat.png')
                              : const AssetImage(
                                  'assets/images/green seat.png'),
                        )),
                  )),
              InkWell(
                  onTap: doorSeatOnPress,
                  child: SizedBox(
                      height: 48,
                      child: Image(
                          image: frontDoorSeat
                              ? const AssetImage('assets/images/red seat.png')
                              : const AssetImage(
                                  'assets/images/green seat.png')))),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const SeparatorInCar(),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
