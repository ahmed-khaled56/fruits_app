import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/splash/presentaion/views/screen2.dart';
import 'package:task_1/features/splash/presentaion/views/widgets/custom_button.dart';
import 'package:task_1/features/splash/presentaion/views/widgets/Custom_skipe.dart';

class Screen1Body extends StatelessWidget {
  const Screen1Body({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orenationDiriction = MediaQuery.of(context).orientation;
    print(orenationDiriction);

    final realHeight = size.height > size.width ? size.height : size.width;
    final realWidth = size.width < size.height ? size.width : size.height;
    return Column(
      children: [
        SizedBox(height: realHeight * 0.08154),
        custom_skip(),
        SizedBox(height: realHeight * 0.06545),

        Image(
          image: AssetImage("assets/images/screen1.png"),

          height: realHeight * .2932,
          width: realWidth * .6630,
        ),
        SizedBox(height: realHeight * 0.02648),

        Text(
          "E Shopping",

          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: getResponsiveFontSize(fontSize: 22, context: context),

            color: Color(0xff2F2E41),
          ),
        ),
        SizedBox(height: realHeight * 0.018),
        Text(
          "Explore op organic fruits & grab them",

          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: getResponsiveFontSize(fontSize: 17, context: context),

            color: Color(0xff78787C),
          ),
        ),
        SizedBox(height: realHeight * 0.056),
        Image(
          image: AssetImage("assets/images/dot.png"),

          height: realHeight * .01287,
          width: realWidth * .14418,
        ),
        SizedBox(height: realHeight * 0.0933),
        CustomButton(
          lable: "Nexet",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Screen2()),
            );
          },
        ),
        Expanded(child: SizedBox(height: realHeight * 0.197)),
      ],
    );
  }
}
