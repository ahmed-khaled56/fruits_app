import 'package:flutter/material.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton2(
          fontSize: 13,
          width: MediaQuery.of(context).size.width * 0.76,
          hieght: MediaQuery.of(context).size.height * 0.066,

          imageLink: "assets/images/Icon material-local-phone.png",
          buttoncolor: Colors.white,

          lable: "Sign in with Phone Number",
          onPressed: () {},
          Textcolor: Color(0xff242729),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .0214),

        CustomButton2(
          fontSize: 13,
          width: MediaQuery.of(context).size.width * 0.76,
          hieght: MediaQuery.of(context).size.height * 0.066,
          imageLink: "assets/images/google.png",
          buttoncolor: Colors.white,

          lable: "Sign in with Google",
          onPressed: () {},
          Textcolor: Color(0xff242729),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .0214),
        CustomButton2(
          fontSize: 13,
          width: MediaQuery.of(context).size.width * 0.76,
          hieght: MediaQuery.of(context).size.height * 0.066,
          imageLink: "assets/images/feacbok.png",
          buttoncolor: Color(0xff235C95),

          lable: "Sign in with Facebook",
          onPressed: () {},
          Textcolor: Colors.white,
        ),
      ],
    );
  }
}
