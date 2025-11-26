import 'package:flutter/material.dart';

class DotsIndicator extends StatefulWidget {
  final Color color;
  final int currentIndex;
  final int count;

  const DotsIndicator({
    super.key,
    required this.color,
    required this.currentIndex,
    required this.count,
  });

  @override
  State<DotsIndicator> createState() => _DotsIndicatorState();
}

class _DotsIndicatorState extends State<DotsIndicator> {
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.count, (index) {
        final bool isActive = index == widget.currentIndex;
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: portraitWidth(context) * .0049,
          ),
          child: CircleAvatar(
            backgroundColor: const Color(0xff707070),
            radius: 4,
            child: CircleAvatar(
              backgroundColor: isActive ? widget.color : Colors.white,
              radius: 2,
            ),
          ),
        );
      }),
    );
  }
}
