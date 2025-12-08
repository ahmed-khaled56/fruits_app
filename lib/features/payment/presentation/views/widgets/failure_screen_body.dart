import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/payment/presentation/views/failure_screen.dart';

class FailureScreenBody extends StatelessWidget {
  const FailureScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // CustomUpperbar(title: "Checkout"),
            SizedBox(height: portraitHeight(context) * .12),
            Image(image: AssetImage("assets/images/failure.png")),
            SizedBox(height: portraitHeight(context) * .06),
            Text(
              "OPS!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffFF4A4A),
                fontSize: getResponsiveFontSize(fontSize: 26, context: context),

                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: portraitHeight(context) * .02),

            Text(
              textAlign: TextAlign.center,
              "Error while confirming your payment/order",

              style: TextStyle(
                color: Color(0xff656565),
                fontSize: getResponsiveFontSize(fontSize: 18, context: context),

                fontWeight: FontWeight.normal,
              ),
            ),

            SizedBox(height: portraitHeight(context) * .06),

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
              hieght: portraitHeight(context) * .0547,
              width: portraitWidth(context) * .8069,
            ),
            SizedBox(height: portraitHeight(context) * .02),
          ],
        ),
      ),
    );
  }
}
