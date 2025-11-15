import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class custom_skip extends StatelessWidget {
  const custom_skip({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orenationDiriction = MediaQuery.of(context).orientation;
    print(orenationDiriction);

    final realHeight = size.height > size.width ? size.height : size.width;
    final realWidth = size.width < size.height ? size.width : size.height;
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,

          child: Padding(
            padding: EdgeInsets.only(right: realWidth * 0.086),
            child: Text(
              "Skip",
              style: TextStyle(
                // decoration: TextDecoration.underline,
                // decorationColor: Colors.grey[700], // لون الخط
                // decorationThickness: 2,
                color: Color(0xff656565),
                fontSize: getResponsiveFontSize(fontSize: 14, context: context),
              ),
            ),
          ),
        ),
        SizedBox(height: 2),

        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.only(right: realWidth * 0.08139),
            child: Container(
              width: realWidth * 0.07511,
              height: realHeight * .001,
              color: Color(0xff656565),
              margin: EdgeInsets.only(top: realHeight * .00429),
            ),
          ),
        ),
      ],
    );
  }
}
