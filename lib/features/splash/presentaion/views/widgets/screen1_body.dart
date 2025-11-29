import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/splash/presentaion/views/screen2.dart';
import 'package:task_1/features/splash/presentaion/views/widgets/Custom_skipe.dart';
import 'package:task_1/features/splash/presentaion/views/widgets/custom_button.dart';

class Screen1Body extends StatelessWidget {
  const Screen1Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: portraitHeight(context) * 0.08154),
          custom_skip(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screen2()),
              );
            },
          ),
          SizedBox(height: portraitHeight(context) * 0.06545),

          Image(
            image: AssetImage("assets/images/screen1.png"),

            height: portraitHeight(context) * .2932,
            width: portraitWidth(context) * .6630,
          ),
          SizedBox(height: portraitHeight(context) * 0.02648),

          Text(
            "E Shopping",

            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getResponsiveFontSize(fontSize: 22, context: context),

              color: Color(0xff2F2E41),
            ),
          ),
          SizedBox(height: portraitHeight(context) * 0.018),
          Text(
            "Explore op organic fruits & grab them",

            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: getResponsiveFontSize(fontSize: 17, context: context),

              color: Color(0xff78787C),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.056),
          Image(
            image: AssetImage("assets/images/dot.png"),

            height: portraitHeight(context) * .01287,
            width: portraitWidth(context) * .14418,
          ),
          SizedBox(height: portraitHeight(context) * 0.0933),
          CustomButton(
            lable: "Next",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screen2()),
              );
            },
          ),
          SizedBox(height: portraitHeight(context) * 0.197),
        ],
      ),
    );
  }
}
