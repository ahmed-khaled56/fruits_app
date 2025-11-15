import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Dots_inducator.dart';

class ScrollDotsIndicator extends StatelessWidget {
  const ScrollDotsIndicator({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.sizeOf(context).height * .01575,
        top: MediaQuery.sizeOf(context).height * 0.0346,
      ),
      child: DotsIndicator(
        color: const Color(0xff204F38),
        currentIndex: currentIndex,
        count: 4,
      ),
    );
  }
}
