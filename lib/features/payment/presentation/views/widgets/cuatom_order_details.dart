import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/payment/presentation/views/widgets/price_row_text.dart';

class customOrderDetails extends StatelessWidget {
  const customOrderDetails({super.key, required this.isTotal});

  final bool isTotal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * .037,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: portraitHeight(context) * .02),
              child: Text(
                "Order Details",

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
          ),
          Row(
            children: [
              Text(
                "Total Items",
                style: TextStyle(
                  fontSize: getResponsiveFontSize(
                    fontSize: isTotal ? 18 : 16,
                    context: context,
                  ),
                  fontWeight: isTotal ? FontWeight.bold : FontWeight.w400,
                  color: isTotal ? const Color(0xff2A5934) : Colors.black,
                ),
              ),
              Spacer(),
              Text(
                "4 Items in cart",
                style: TextStyle(
                  fontSize: getResponsiveFontSize(
                    fontSize: 16,
                    context: context,
                  ),
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff656565),
                ),
              ),
            ],
          ),
          SizedBox(height: portraitHeight(context) * .01),
          PriceRowText(isTotal: false, title: "Subtotal", value: "36.00 "),
          SizedBox(height: portraitHeight(context) * .01),
          PriceRowText(
            isTotal: false,
            title: "Shipping Charges",
            value: "1.50  ",
          ),
          SizedBox(height: portraitHeight(context) * .001),
          Padding(
            padding: EdgeInsets.only(bottom: portraitHeight(context) * .0098),
            child: Center(
              child: Container(
                height: portraitHeight(context) * 0.001,
                width: MediaQuery.sizeOf(context).width,
                color: Color(0xffD9D9D9),
              ),
            ),
          ),
          PriceRowText(isTotal: true, title: "Bag Total", value: "37.50 "),
        ],
      ),
    );
  }
}
