import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var dashWidth = portraitHeight(context) * .00643;
        var dashSpace = portraitWidth(context) * .0093;
        final count = (constraints.maxWidth / (dashWidth + dashSpace)).floor();

        return Row(
          children: List.generate(count, (index) {
            return Container(
              width: dashWidth,
              height: portraitHeight(context) * .0021459,
              margin: EdgeInsets.only(right: dashSpace),
              color: const Color(0xff9F9F9F),
            );
          }),
        );
      },
    );
  }
}
