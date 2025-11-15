import 'package:flutter/material.dart';

class SplashViewBodyPhoneLayout extends StatelessWidget {
  const SplashViewBodyPhoneLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    final h = size.height;
    final w = size.width;

    return Column(
      children: [
        SizedBox(height: isPortrait ? h * .21 : h * 0.08),

        SizedBox(
          width: w * .9,
          height: isPortrait ? h * .2398 : h * 35,
          child: FittedBox(
            child: Image.asset(
              "assets/images/Group_2856.png",
              fit: BoxFit.fitWidth,
            ),
          ),
        ),

        SizedBox(height: isPortrait ? h * 0.12 : h * 0.04),

        Expanded(
          child: Image.asset(
            "assets/images/3434341.png",
            fit: BoxFit.cover,
            width: w,
          ),
        ),
      ],
    );
  }
}
