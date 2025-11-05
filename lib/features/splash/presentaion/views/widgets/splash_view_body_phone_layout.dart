import 'package:flutter/material.dart';

class SplashViewBodyPhoneLayout extends StatelessWidget {
  const SplashViewBodyPhoneLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orenationDiriction = MediaQuery.of(context).orientation;
    print(orenationDiriction);

    final realHeight = size.height > size.width ? size.height : size.width;
    final realWidth = size.width < size.height ? size.width : size.height;

    return Column(
      children: [
        SizedBox(height: realHeight * .21),

        /// الصورة الأولى
        FittedBox(
          child: Image.asset(
            "assets/images/Group_2856.png",
            fit: BoxFit.fitWidth,
            width: realWidth * .9,
            height: realHeight * .2398,
          ),
        ),

        SizedBox(height: realHeight * 0.1716),

        /// الصورة الثانية
        Expanded(
          child: Image.asset(
            "assets/images/3434341.png",
            fit: BoxFit.cover,
            width: realWidth,
          ),
        ),
      ],
    );
  }
}
