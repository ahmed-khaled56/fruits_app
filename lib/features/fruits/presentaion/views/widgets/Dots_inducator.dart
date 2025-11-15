import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        final bool isActive = index == currentIndex;
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * .0139,
          ),
          child: CircleAvatar(
            backgroundColor: const Color(0xff707070),
            radius: 8,
            child: CircleAvatar(
              backgroundColor: isActive ? color : Colors.white,
              radius: 6,
            ),
          ),
        );
      }),
    );
  }
}
