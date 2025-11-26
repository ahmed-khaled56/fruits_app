import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Dots_inducator.dart';

class ScrollDotsIndicator extends StatefulWidget {
  const ScrollDotsIndicator({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  State<ScrollDotsIndicator> createState() => _ScrollDotsIndicatorState();
}

class _ScrollDotsIndicatorState extends State<ScrollDotsIndicator> {
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
    return Padding(
      padding: EdgeInsets.only(
        bottom: portraitHeight(context) * .01575,
        top: portraitHeight(context) * 0.0146,
      ),
      child: DotsIndicator(
        color: const Color(0xff204F38),
        currentIndex: widget.currentIndex,
        count: 4,
      ),
    );
  }
}
