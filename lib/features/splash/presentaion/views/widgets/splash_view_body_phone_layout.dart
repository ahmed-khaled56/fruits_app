import 'package:flutter/material.dart';

class SplashViewBodyPhoneLayout extends StatelessWidget {
  const SplashViewBodyPhoneLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * .21),
        FittedBox(
          child: Image(
            image: AssetImage("assets/images/Group_2856.png"),
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width * .9,
            height: MediaQuery.of(context).size.height * .2398,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1716),

        Expanded(
          child: Image(
            fit: BoxFit.cover,
            width: double.infinity,

            // height: MediaQuery.of(context).size.height * .3345,
            image: AssetImage("assets/images/3434341.png"),
          ),
        ),
      ],
    );
  }
}
