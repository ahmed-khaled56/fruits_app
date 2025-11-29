import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class customCopon extends StatelessWidget {
  const customCopon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: portraitWidth(context) * .037),
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
        const SizedBox(height: 10),

        Container(
          height: portraitHeight(context) * .0547,
          width: portraitWidth(context) * .9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),

          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: portraitWidth(context) * .0418,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Do You Have any Coupon Code?",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Color(0xff4A4A4A),
                        fontSize: getResponsiveFontSize(
                          fontSize: 16,
                          context: context,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: portraitWidth(context) * .0218),
                child: Container(
                  height: portraitHeight(context) * .0364,
                  width: portraitWidth(context) * .1976,

                  decoration: BoxDecoration(
                    color: const Color(0xFF204F38),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Apply",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: getResponsiveFontSize(
                        fontSize: 16,
                        context: context,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
