import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/payment/presentation/views/failure_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Custom_upperbar.dart';

class DoneScreenBody extends StatelessWidget {
  const DoneScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomUpperbar(title: "Checkout"),
        SizedBox(height: MediaQuery.sizeOf(context).height * .08),
        Image(image: AssetImage("assets/images/done.png")),
        SizedBox(height: MediaQuery.sizeOf(context).height * .06),
        Text(
          "YOUR ORDER IS CONFIRMED!",

          style: TextStyle(
            color: Color(0xff204F38),
            fontSize: getResponsiveFontSize(fontSize: 26, context: context),

            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * .02),

        Text(
          "Your order code: #243188",

          style: TextStyle(
            color: Color(0xff656565),
            fontSize: getResponsiveFontSize(fontSize: 20, context: context),

            fontWeight: FontWeight.normal,
          ),
        ),
        Text(
          "Thank you for choosing our products!",

          style: TextStyle(
            color: Color(0xff656565),
            fontSize: getResponsiveFontSize(fontSize: 20, context: context),

            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * .04),

        CustomButton2(
          Textcolor: Colors.white,

          lable: "Continue Shopping",
          buttoncolor: Color(0xff204F38),
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
        CustomButton2(
          Textcolor: Color(0xff204F38),

          lable: "Track Order",
          buttoncolor: Colors.white,
          fontSize: getResponsiveFontSize(fontSize: 18, context: context),
          fontWeight: FontWeight.bold,
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => DoneScreen()),
            // );
          },
          hieght: MediaQuery.sizeOf(context).height * .0547,
          width: MediaQuery.sizeOf(context).width * .8069,
        ),
        //Expanded(child: SizedBox(height: MediaQuery.sizeOf(context).height)),
      ],
    );
  }
}
