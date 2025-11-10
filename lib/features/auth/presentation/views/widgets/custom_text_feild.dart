import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.lable,
    required this.hintText,
    required this.hight,
    required this.width,
  });
  final String lable;
  final String hintText;
  final double hight;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width, // Same as Figma width
        height: hight, // Same as Figma height
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25), // Figma corner radius
          border: Border.all(color: Colors.grey.shade300), // light border
        ),
        alignment: Alignment.center,
        child: TextFormField(
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'required';
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: getResponsiveFontSize(fontSize: 14, context: context),
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 13,
            ),
          ),
        ),
      ),
    );
  }
}
