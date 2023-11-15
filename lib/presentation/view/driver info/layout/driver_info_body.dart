import 'package:flutter/material.dart';
import 'package:interview_task/presentation/element/custom_text.dart';
import 'package:interview_task/presentation/element/cutstom_button.dart';
import 'package:interview_task/presentation/view/driver%20info/widget/bar_chart_users.dart';
import 'package:interview_task/presentation/view/driver%20info/widget/custom_tab_bar.dart';
import 'package:interview_task/utils/statics.dart';

class DriverInfoBody extends StatefulWidget {
  String? chartName;
  DriverInfoBody({super.key , this.chartName});

  @override
  State<DriverInfoBody> createState() => _DriverInfoBodyState();
}

class _DriverInfoBodyState extends State<DriverInfoBody> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
         Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: widget.chartName.toString(),
                color: Color(0xffA3AED0),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_drop_up_sharp,
                      color: Colors.red,
                    ),
                    CustomText(
                      text: "This Week",
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: SizedBox(
              height: size.height * 0.3, child: const BarChartUsers()),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: '200.68.00 zł',
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
              Container(
                  width: 150 ,
                  child: CustomButton(onPress: (){}, buttonTitle: DataValues.withdraw, ))
            ],
          ),
        )
      ],
    );
  }
}
