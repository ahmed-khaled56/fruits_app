import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class PriceRowText extends StatelessWidget {
  const PriceRowText({
    super.key,
    required this.value,
    required this.title,
    required this.isTotal,
  });
  final String value;
  final String title;
  final bool isTotal;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: getResponsiveFontSize(
              fontSize: isTotal ? 18 : 16,
              context: context,
            ),
            fontWeight: isTotal ? FontWeight.bold : FontWeight.w400,
            color: isTotal ? const Color(0xff2A5934) : Colors.black,
          ),
        ),
        Row(
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: getResponsiveFontSize(
                  fontSize: getResponsiveFontSize(
                    fontSize: 18,
                    context: context,
                  ),
                  context: context,
                ),
                fontWeight: FontWeight.bold,
                color: isTotal ? const Color(0xff204F38) : Color(0xff656565),
              ),
            ),
            isTotal
                ? Text(
                    "KD",
                    style: TextStyle(
                      fontSize: getResponsiveFontSize(
                        fontSize: 12,
                        context: context,
                      ),
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff204F38),
                    ),
                  )
                : Text(
                    "KD",
                    style: TextStyle(
                      fontSize: getResponsiveFontSize(
                        fontSize: getResponsiveFontSize(
                          fontSize: 12,
                          context: context,
                        ),
                        context: context,
                      ),
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffBEBEBE),
                    ),
                  ),
          ],
        ),
      ],
    );
  }
}
