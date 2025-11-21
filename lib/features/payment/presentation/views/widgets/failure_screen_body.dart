import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/payment/presentation/views/failure_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Custom_upperbar.dart';

class FailureScreenBody extends StatelessWidget {
  const FailureScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomUpperbar(title: "Checkout"),
        SizedBox(height: MediaQuery.sizeOf(context).height * .12),
        Image(image: AssetImage("assets/images/failure.png")),
        SizedBox(height: MediaQuery.sizeOf(context).height * .06),
        Text(
          "OPS!",

          style: TextStyle(
            color: Color(0xffFF4A4A),
            fontSize: getResponsiveFontSize(fontSize: 26, context: context),

            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * .02),

        Text(
          "Error while confirming your payment/order",

          style: TextStyle(
            color: Color(0xff656565),
            fontSize: getResponsiveFontSize(fontSize: 18, context: context),

            fontWeight: FontWeight.normal,
          ),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * .06),

        CustomButton2(
          Textcolor: Colors.white,

          lable: "Back",
          buttoncolor: Color(0xffFF4A4A),
          fontSize: getResponsiveFontSize(fontSize: 18, context: context),
          fontWeight: FontWeight.bold,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FailureScreen()),
            );
          },
          hieght: MediaQuery.sizeOf(context).height * .0547,
          width: MediaQuery.sizeOf(context).width * .8069,
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * .02),
      ],
    );
  }
}
