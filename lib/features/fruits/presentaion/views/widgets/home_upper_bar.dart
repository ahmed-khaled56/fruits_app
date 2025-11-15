import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class HomeUpperBar extends StatelessWidget {
  const HomeUpperBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.sizeOf(context).width * .03,
            right: MediaQuery.sizeOf(context).width * .03,
            top: MediaQuery.sizeOf(context).height * .015,
          ),
          child: Row(
            children: [
              Text(
                'Fruit Market',
                style: TextStyle(
                  color: const Color(0xff204F38),
                  fontSize: getResponsiveFontSize(
                    fontSize: 24,
                    context: context,
                  ),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const Image(image: AssetImage("assets/images/search.png")),
              SizedBox(width: MediaQuery.sizeOf(context).width * .04),
              const Image(image: AssetImage("assets/images/settings.png")),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.sizeOf(context).height * .0166,
          ),
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.001,
            width: MediaQuery.sizeOf(context).width,
            color: Color(0xffDEDFDF),
          ),
        ),
      ],
    );
  }
}
