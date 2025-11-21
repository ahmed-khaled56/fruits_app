import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';

class customCopon extends StatelessWidget {
  const customCopon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).width * .037,
            ),
            child: Text(
              "Coupon Code",

              style: TextStyle(
                fontSize: getResponsiveFontSize(fontSize: 18, context: context),
                fontWeight: FontWeight.bold,
                color: Color(0xff292727),
              ),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * .01),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * .025,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * .037,
            vertical: MediaQuery.sizeOf(context).height * .011,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4A4A4A),
                    fontSize: getResponsiveFontSize(
                      fontSize: 16,
                      context: context,
                    ),
                  ),
                  decoration: InputDecoration(
                    hintText: "Do You Have any Coupon Code?",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4A4A4A),
                      fontSize: getResponsiveFontSize(
                        fontSize: 16,
                        context: context,
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),

              SizedBox(
                height: MediaQuery.sizeOf(context).height * .05,
                width: MediaQuery.sizeOf(context).width * .25,
                child: CustomButton2(
                  lable: "Apply",
                  onPressed: () {},
                  buttoncolor: Color(0xff204F38),
                  Textcolor: Colors.white,
                  fontSize: getResponsiveFontSize(
                    fontSize: 16,
                    context: context,
                  ),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
