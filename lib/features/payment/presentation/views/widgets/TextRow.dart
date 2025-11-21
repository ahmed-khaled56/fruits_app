import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class TextRow extends StatelessWidget {
  final String text1;
  final String text2;
  final double toppadding;
  final double? bottpadding;

  const TextRow({
    super.key,
    required this.text1,
    required this.text2,
    required this.toppadding,
    @required this.bottpadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: toppadding,
        bottom: bottpadding ?? 0,
        right: MediaQuery.sizeOf(context).width * .04186,
        left: MediaQuery.sizeOf(context).width * .04186,
      ),
      child: Row(
        children: [
          Text(
            text1,
            style: TextStyle(
              color: Colors.black,
              fontSize: getResponsiveFontSize(fontSize: 16, context: context),
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Text(
            text2,
            style: TextStyle(
              color: const Color(0xff235C95),
              fontSize: getResponsiveFontSize(fontSize: 18, context: context),
            ),
          ),
        ],
      ),
    );
  }
}
