import 'package:flutter/material.dart';

class Stepdot extends StatelessWidget {
  const Stepdot({super.key, required this.active});
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: active ? Colors.green : const Color(0xffD1D1D1),
          width: 2,
        ),
      ),
      child: Center(
        child: Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: active ? Colors.green : const Color(0xffD1D1D1),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
