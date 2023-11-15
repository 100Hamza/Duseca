
import 'package:flutter/material.dart';
import 'package:interview_task/presentation/element/cutstom_button.dart';
import 'package:interview_task/presentation/element/toast.dart';
import 'package:interview_task/presentation/view/pcik_ride/widget/front_seats_and_divider.dart';
import 'package:interview_task/presentation/view/pcik_ride/widget/seats_labels_container.dart';
import 'package:interview_task/presentation/view/ride_history/ride_history_view.dart';
import 'package:interview_task/utils/app_theme.dart';
import 'package:interview_task/utils/statics.dart';

class PickRideBody extends StatefulWidget {
  const PickRideBody({super.key});

  @override
  State<PickRideBody> createState() => _PickRideBodyState();
}

class _PickRideBodyState extends State<PickRideBody> {
  List<bool> tappedStates = List.generate(6, (index) => false);
  bool frontSeat1 = false, frontSeat2 = false;
  @override
  Widget build(BuildContext context) {
    var size  = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          SeatsLabelsContainer().labels(),
          SizedBox(height: size.height * 0.05,),
          SizedBox(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/car.png'),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 7, right: 10, bottom: 20),
                    margin: const EdgeInsets.only(bottom: 1, left: 1, right: 1),
                    decoration: const BoxDecoration(
                      color: AppThemeData.primaryColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child: Container(
                        width: MediaQuery.sizeOf(context).width * 1,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                            color: AppThemeData.carGreyColor),
                        child: Column(
                          children: [
                            FrontSeatsAndDivider(
                              doorSeatOnPress: () {
                              setState(() {
                                frontSeat2 = !frontSeat2;
                                frontSeat2 ? ToastMsg().toastMessage('You\'ve Select the front DoorSide Seat', AppThemeData.primaryColor): ToastMsg().toastMessage('Seat has been canceled Successfully', AppThemeData.darkGreenColor);
                              });
                            },
                            middleSeatOnPress: () async {
                              setState(() {
                                frontSeat1 = !frontSeat1;
                                frontSeat1 ? ToastMsg().toastMessage('You\'ve Select the front Middle Seat', AppThemeData.primaryColor): ToastMsg().toastMessage('Seat has been canceled Successfully' ,AppThemeData.darkGreenColor);

                              });
                            },
                              frontMiddleSeat: frontSeat1,
                              frontDoorSeat: frontSeat2,
                            ),
                            GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: const EdgeInsets.all(10),
                              itemCount: 6,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3, // number of items in each row
                                mainAxisSpacing: 25.0, // spacing between rows
                                crossAxisSpacing: 4.0, // spacing between columns
                              ),
                              itemBuilder: (context, index) {
                                return InkWell(
                                    onTap: () {
                                      setState(() {
                                        tappedStates[index] =
                                            !tappedStates[index];

                                        tappedStates[index]? ToastMsg().toastMessage('You\'ve Select the Seat no. ${index+1}', AppThemeData.primaryColor): ToastMsg().toastMessage('Seat has been canceled Successfully' ,AppThemeData.darkGreenColor);
                                        print('Index = $index , and The value ${tappedStates[index]}');
                                      });
                                    },
                                    child: Image(
                                      image: tappedStates[index]
                                          ? const AssetImage(
                                              'assets/images/red seat.png')
                                          : const AssetImage(
                                              'assets/images/green seat.png'),
                                    ));
                              },
                            ),
                            const SizedBox(
                              height: 30,
                            )
                          ],
                        )),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: size.height * 0.05,),
          CustomButton(onPress: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const RideHistoryView(),));
          } , buttonTitle: DataValues.selectSeat , fontWeight: FontWeight.w600),
          SizedBox(height: size.height * 0.05,),
        ],
      ),
    );
  }
}
