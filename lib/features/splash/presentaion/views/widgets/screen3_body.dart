import 'package:flutter/material.dart';
import 'package:task_1/features/auth/presentation/views/login_screen.dart';
import 'package:task_1/features/splash/presentaion/views/widgets/custom_button.dart';
import 'package:task_1/features/splash/presentaion/views/widgets/Custom_skipe.dart';

class Screen3Body extends StatelessWidget {
  const Screen3Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.08154),
        custom_skip(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.06545),

        Image(
          image: AssetImage("assets/images/screen1.png"),

          height: MediaQuery.of(context).size.height * .2932,
          width: MediaQuery.of(context).size.width * .6630,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02648),

        Text(
          "Delivery Arrived",

          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,

            color: Color(0xff2F2E41),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.018),
        Text(
          "Order is arrived at your Place",

          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 17,

            color: Color(0xff78787C),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.056),
        Image(
          image: AssetImage("assets/images/dot.png"),

          height: MediaQuery.of(context).size.height * .01287,
          width: MediaQuery.of(context).size.width * .14418,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.0933),
        CustomButton(
          lable: "Get Started",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
        ),
        Expanded(
          child: SizedBox(height: MediaQuery.of(context).size.height * 0.197),
        ),
      ],
    );
  }
}
