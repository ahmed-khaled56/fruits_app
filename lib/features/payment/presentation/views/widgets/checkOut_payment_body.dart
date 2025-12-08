import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/payment/presentation/views/widgets/cuatom_order_details.dart';
import 'package:task_1/features/payment/presentation/views/widgets/Custom_copon.dart';
import 'package:task_1/features/payment/presentation/views/widgets/custom_payment.dart';

class CheckoutPaymentBody extends StatefulWidget {
  const CheckoutPaymentBody({super.key, this.currentIndex, this.onPressed});
  final int? currentIndex;
  final void Function()? onPressed;
  @override
  @override
  State<CheckoutPaymentBody> createState() => _CheckoutPaymentBodyState();
}

class _CheckoutPaymentBodyState extends State<CheckoutPaymentBody> {
  @override
  int curentIndex = 2;
  bool isTotal = false;
  bool CustSelected1 = false;
  bool CustSelected2 = false;
  bool CustSelected3 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customCopon(),
        SizedBox(height: portraitHeight(context) * .02),
        Column(
          children: [
            customOrderDetails(isTotal: isTotal),
            SizedBox(height: portraitHeight(context) * .02),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: portraitWidth(context) * .037,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Payement",

                      style: TextStyle(
                        fontSize: getResponsiveFontSize(
                          fontSize: 18,
                          context: context,
                        ),
                        fontWeight: FontWeight.bold,
                        color: Color(0xff292727),
                      ),
                    ),
                  ),
                  CustomPayment(
                    CustSelected: CustSelected1,
                    title: "Credit Card/Debit card",
                    imageLink: "assets/images/cridet.png",
                    onTap: () {
                      setState(() {
                        CustSelected1 = true;
                        CustSelected2 = false;
                        CustSelected3 = false;
                      });
                    },
                  ),
                  CustomPayment(
                    CustSelected: CustSelected2,
                    title: "Cash of Delivery",
                    imageLink: "assets/images/cash.png",
                    onTap: () {
                      setState(() {
                        CustSelected1 = false;
                        CustSelected2 = true;
                        CustSelected3 = false;
                      });
                    },
                  ),
                  CustomPayment(
                    CustSelected: CustSelected3,
                    title: "Knet",
                    imageLink: "assets/images/kenet.png",
                    onTap: () {
                      setState(() {
                        CustSelected1 = false;
                        CustSelected2 = false;
                        CustSelected3 = true;
                      });
                    },
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      top: portraitHeight(context) * .03197,
                    ),
                    child: CustomButton2(
                      Textcolor: Colors.white,
                      lable: widget.currentIndex == 2
                          ? "Place Order"
                          : "Continue",
                      buttoncolor: Color(0xff204F38),
                      fontSize: getResponsiveFontSize(
                        fontSize: 18,
                        context: context,
                      ),
                      fontWeight: FontWeight.bold,
                      onPressed: widget.onPressed!,
                      hieght: portraitHeight(context) * .0547,
                      width: portraitWidth(context) * .8,
                    ),
                  ),
                  // CustomButton2(
                  //   Textcolor: Colors.white,

                  //   lable: "Place Order",
                  //   buttoncolor: Color(0xff204F38),
                  //   fontSize: getResponsiveFontSize(
                  //     fontSize: 18,
                  //     context: context,
                  //   ),
                  //   fontWeight: FontWeight.bold,
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => DoneScreen()),
                  //     );
                  //   },
                  //   hieght: portraitHeight(context) * .0547,
                  //   width: portraitWidth(context) * .8069,
                  // ),
                ],
              ),
            ),
          ],
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * .01),
        // BasketLowerBar(),
      ],
    );
  }
}
