import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const dashWidth = 6.0;
        const dashSpace = 4.0;
        final count = (constraints.maxWidth / (dashWidth + dashSpace)).floor();

        return Row(
          children: List.generate(count, (index) {
            return Container(
              width: dashWidth,
              height: 2,
              margin: const EdgeInsets.only(right: dashSpace),
              color: const Color(0xff9F9F9F),
            );
          }),
        );
      },
    );
  }
}
