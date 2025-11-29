import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Custom_upperbar.dart';
import 'package:task_1/features/payment/presentation/views/failure_screen.dart';

class DoneScreenBody extends StatelessWidget {
  const DoneScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          // horizontal: MediaQuery.sizeOf(context).width * .04,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomUpperbar(title: "Checkout"),

            SizedBox(height: portraitHeight(context) * .08),

            Image(image: AssetImage("assets/images/done.png")),

            SizedBox(height: portraitHeight(context) * .06),

            Text(
              "YOUR ORDER IS CONFIRMED!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff204F38),
                fontSize: getResponsiveFontSize(fontSize: 26, context: context),
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: portraitHeight(context) * .02),

            Text(
              "Your order code: #243188",
              style: TextStyle(
                color: Color(0xff656565),
                fontSize: getResponsiveFontSize(fontSize: 20, context: context),
              ),
            ),

            SizedBox(height: portraitHeight(context) * .01),

            Text(
              "Thank you for choosing our products!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff656565),
                fontSize: getResponsiveFontSize(fontSize: 20, context: context),
              ),
            ),

            SizedBox(height: portraitHeight(context) * .05),

            /// زرار Continue Shopping
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
              hieght: portraitHeight(context) * .0547,
              width: portraitWidth(context) * .8069,
            ),

            SizedBox(height: portraitHeight(context) * .02),

            CustomButton2(
              Textcolor: Color(0xff204F38),
              lable: "Track Order",
              buttoncolor: Colors.white,
              fontSize: getResponsiveFontSize(fontSize: 18, context: context),
              fontWeight: FontWeight.bold,
              onPressed: () {},
              hieght: portraitHeight(context) * .0547,
              width: portraitWidth(context) * .8069,
            ),

            SizedBox(height: portraitHeight(context) * .04),
          ],
        ),
      ),
    );
  }
}
