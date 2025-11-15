import 'package:flutter/material.dart';
import 'package:task_1/features/auth/presentation/views/scondLoginScreen.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_row.dart';

class CustomOptions extends StatelessWidget {
  const CustomOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRow(
          decoration: TextDecoration.underline,
          lineWidth: MediaQuery.sizeOf(context).width * 0.14,
          linehieght: MediaQuery.sizeOf(context).height * 000.001,
          ontap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Scondloginscreen()),
            );
          },
          fontsize1: 16,
          fontsize2: 16,
          color1: Colors.black,
          color2: Color(0xff004D8E),
          text1: "already member? ",
          text2: "Sign In",
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .0214),
        CustomRow(
          ontap: () {},
          fontsize1: 16,
          fontsize2: 16,
          color1: Color(0xff88909C),
          color2: Color(0xff005B96),
          text1: "By continue you agree to our ",
          text2: "Terms of service ",
        ),
        CustomRow(
          ontap: () {},
          fontsize1: 16,
          fontsize2: 16,
          color1: Color(0xff88909C),
          color2: Color(0xff005B96),
          text1: "and our ",
          text2: "Privacy Policy",
        ),
      ],
    );
  }
}
