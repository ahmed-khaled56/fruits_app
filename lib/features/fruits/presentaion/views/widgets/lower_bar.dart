import 'package:flutter/material.dart';

class LowerBar extends StatelessWidget {
  const LowerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 0.067596,
      decoration: BoxDecoration(
        color: Color(0xff204F38),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),

      child: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.sizeOf(context).width * .03488,
          right: MediaQuery.sizeOf(context).width * .0116,
        ),
        child: Row(
          children: [
            Image(image: AssetImage("assets/images/IconBar1.png")),
            Spacer(),
            Image(image: AssetImage("assets/images/iconBar2.png")),
            Spacer(),
            Image(image: AssetImage("assets/images/IconBar3.png")),
            Spacer(),
            Image(image: AssetImage("assets/images/IconBar4.png")),
            Spacer(),
            Image(image: AssetImage("assets/images/iconBar5.png")),
          ],
        ),
      ),
    );
  }
}
