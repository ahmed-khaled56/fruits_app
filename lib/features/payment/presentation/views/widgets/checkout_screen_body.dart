import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/payment/presentation/views/checkout_address_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Custom_upperbar.dart';
import 'package:task_1/features/payment/presentation/views/widgets/select_time.dart';
import 'package:task_1/features/payment/presentation/views/widgets/steper_chseckOut.dart';

class CheckoutScreenBody extends StatefulWidget {
  const CheckoutScreenBody({super.key});

  @override
  State<CheckoutScreenBody> createState() => _CheckoutScreenBodyState();
}

class _CheckoutScreenBodyState extends State<CheckoutScreenBody> {
  @override
  int curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomUpperbar(title: "Checkout"),
          SizedBox(height: portraitHeight(context) * .01),
          SteperCheckout(
            active1: true,
            active2: false,
            active3: false,

            Dactive1: curentIndex >= 0,
            Dactive2: curentIndex >= 1,
            Dactive3: curentIndex >= 2,
          ),
          SizedBox(height: portraitHeight(context) * .01),
          Padding(
            padding: EdgeInsets.only(bottom: portraitHeight(context) * .016),
            child: Container(
              height: portraitHeight(context) * 0.001,
              width: MediaQuery.sizeOf(context).width,
              color: Color(0xffBFBFBF),
            ),
          ),

          SizedBox(height: portraitHeight(context) * .001),

          SelectTime(),
          SizedBox(height: portraitHeight(context) * .27),
          CustomButton2(
            Textcolor: Colors.white,

            lable: "Continue",
            buttoncolor: Color(0xff204F38),
            fontSize: getResponsiveFontSize(fontSize: 18, context: context),
            fontWeight: FontWeight.bold,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutAddressScreen(),
                ),
              );
            },
            hieght: portraitHeight(context) * .0547,
            width: portraitWidth(context) * .8069,
          ),
        ],
      ),
    );
  }
}
