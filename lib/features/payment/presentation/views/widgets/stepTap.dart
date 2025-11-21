import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class Steptap extends StatelessWidget {
  const Steptap({super.key, required this.text, required this.active});
  final String text;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: getResponsiveFontSize(fontSize: 16, context: context),
        fontWeight: active ? FontWeight.w700 : FontWeight.w500,
        color: active ? Color(0xff204F38) : Color(0xff9F9F9F),
      ),
    );
  }
}
