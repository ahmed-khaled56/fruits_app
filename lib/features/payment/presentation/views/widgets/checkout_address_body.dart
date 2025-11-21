import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/payment/presentation/views/checkout_address_screen.dart';
import 'package:task_1/features/payment/presentation/views/checkout_payment_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Custom_upperbar.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/basket_lower_bar.dart';
import 'package:task_1/features/payment/presentation/views/widgets/custom_add_address.dart';
import 'package:task_1/features/payment/presentation/views/widgets/steper_chseckOut.dart';

class CheckoutAddressBody extends StatefulWidget {
  const CheckoutAddressBody({super.key});

  @override
  State<CheckoutAddressBody> createState() => _CheckoutAddressBodyState();
}

class _CheckoutAddressBodyState extends State<CheckoutAddressBody> {
  @override
  bool CustSelected = false;
  int curentIndex = 1;
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomUpperbar(title: "Checkout"),

        SizedBox(height: MediaQuery.sizeOf(context).height * .01),
        SteperCheckout(
          active1: false,
          active2: true,
          active3: false,

          Dactive1: curentIndex == 0,
          Dactive2: curentIndex >= 1,
          Dactive3: curentIndex >= 2,
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * .01),
        Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.sizeOf(context).height * .016,
          ),
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.001,
            width: MediaQuery.sizeOf(context).width,
            color: Color(0xffBFBFBF),
          ),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * .001),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).width * .037,
            ),
            child: Text(
              "Select Delivery Address",

              style: TextStyle(
                fontSize: getResponsiveFontSize(fontSize: 18, context: context),
                fontWeight: FontWeight.bold,
                color: Color(0xff292727),
              ),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * .01),

        custom_add_address(),
        SizedBox(height: MediaQuery.sizeOf(context).height * .024),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * .0049,
          ),
          child: Column(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * .2,
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * .037,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * .037,
                  vertical: MediaQuery.sizeOf(context).height * .02,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xffE3E3E3)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.sizeOf(context).height * .01,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                CustSelected = !CustSelected;
                              });
                            },
                            child: Row(
                              children: [
                                Icon(Icons.location_on_outlined),
                                Text(
                                  "Address 1",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,

                                    color: Color(0xff4A4A4A),
                                    fontSize: getResponsiveFontSize(
                                      fontSize: 16,
                                      context: context,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustSelected
                            ? Icon(Icons.check_circle, color: Color(0xff204F38))
                            : Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.sizeOf(context).width * .0049,
                                ),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * .06046,
                                  height:
                                      MediaQuery.sizeOf(context).height *
                                      .02875,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                      ],
                    ),

                    Text(
                      "John Doe",

                      style: TextStyle(
                        fontSize: getResponsiveFontSize(
                          fontSize: 16,
                          context: context,
                        ),
                        color: Color(0xff4A4A4A),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.sizeOf(context).height * .003,
                              ),
                              child: Text(
                                "+000-11-1234567",

                                style: TextStyle(
                                  fontSize: getResponsiveFontSize(
                                    fontSize: 16,
                                    context: context,
                                  ),
                                  color: Color(0xff4A4A4A),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),

                        Text(
                          "Room # 1 - Ground Floor, Al Najoum Building, 24 B Street, Dubai - United Arab Emirates ",

                          maxLines: 2,
                          style: TextStyle(
                            color: Color(0xff9F9F9F),

                            fontSize: getResponsiveFontSize(
                              fontSize: 16,
                              context: context,
                            ),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * .27),
        CustomButton2(
          Textcolor: Colors.white,

          lable: "Continue",
          buttoncolor: Color(0xff204F38),
          fontSize: getResponsiveFontSize(fontSize: 18, context: context),
          fontWeight: FontWeight.bold,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CheckoutPaymentScreen()),
            );
          },
          hieght: MediaQuery.sizeOf(context).height * .0547,
          width: MediaQuery.sizeOf(context).width * .8069,
        ),
        Expanded(child: SizedBox(height: MediaQuery.sizeOf(context).height)),
        BasketLowerBar(),
      ],
    );
  }
}
