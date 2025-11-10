import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
    required this.text1,
    required this.text2,
    required this.fontsize1,
    required this.fontsize2,
    required this.color1,
    required this.color2,
    required this.ontap,
    @required this.lineWidth,
    @required this.linehieght,
  });
  final String text1;
  final String text2;
  final double fontsize1;
  final double fontsize2;
  final Color color1;
  final Color color2;
  final void Function()? ontap;
  final double? lineWidth;
  final double? linehieght;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(
            fontSize: getResponsiveFontSize(fontSize: 16, context: context),
            fontWeight: FontWeight.normal,
            color: color1,
          ),
        ),

        GestureDetector(
          onTap: ontap,

          child: lineWidth != null
              ? Column(
                  children: [
                    Text(
                      text2,
                      style: TextStyle(
                        fontSize: getResponsiveFontSize(
                          fontSize: 16,
                          context: context,
                        ),
                        fontWeight: FontWeight.normal,
                        color: color2,
                      ),
                    ),

                    Container(
                      width: lineWidth,
                      height: linehieght,
                      color: Color(0xff004D8E),
                      margin: EdgeInsets.only(
                        top: MediaQuery.sizeOf(context).height * .00429,
                      ),
                    ),
                  ],
                )
              : Text(
                  text2,
                  style: TextStyle(
                    fontSize: getResponsiveFontSize(
                      fontSize: 16,
                      context: context,
                    ),
                    fontWeight: FontWeight.normal,
                    color: color2,
                  ),
                ),
        ),
      ],
    );
  }
}
