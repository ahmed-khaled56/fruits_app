import 'package:flutter/material.dart';

class custom_skip extends StatelessWidget {
  const custom_skip({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,

          child: Padding(
            padding: const EdgeInsets.only(right: 37),
            child: Text(
              "Skip",
              style: TextStyle(
                // decoration: TextDecoration.underline,
                // decorationColor: Colors.grey[700], // لون الخط
                // decorationThickness: 2,
                color: Color(0xff656565),
                fontSize: 14,
              ),
            ),
          ),
        ),
        SizedBox(height: 2),

        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Container(
              width: 28, // طول الخط
              height: 1, // سُمك الخط
              color: Color(0xff656565), // لون الخط
              margin: EdgeInsets.only(top: 4), // مسافة بين النص والخط
            ),
          ),
        ),
      ],
    );
  }
}
