import 'package:flutter/material.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';

class CustomButtons extends StatefulWidget {
  const CustomButtons({super.key});

  @override
  State<CustomButtons> createState() => _CustomButtonsState();
}

class _CustomButtonsState extends State<CustomButtons> {
  @override
  double portraitWidth(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width < size.height ? size.width : size.height;
  }

  double portraitHeight(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.height > size.width ? size.height : size.width;
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton2(
          fontSize: 13,
          width: portraitWidth(context) * 0.76,
          hieght: portraitHeight(context) * 0.054721,

          imageLink: "assets/images/Icon material-local-phone.png",
          buttoncolor: Colors.white,

          lable: "Sign in with Phone Number",
          onPressed: () {},
          Textcolor: Color(0xff242729),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .0214),

        CustomButton2(
          fontSize: 13,
          width: portraitWidth(context) * 0.76,
          hieght: portraitHeight(context) * 0.054721,
          imageLink: "assets/images/google.png",
          buttoncolor: Colors.white,

          lable: "Sign in with Google",
          onPressed: () {},
          Textcolor: Color(0xff242729),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .0214),
        CustomButton2(
          fontSize: 13,
          width: portraitWidth(context) * 0.76,
          hieght: portraitHeight(context) * 0.054721,
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
