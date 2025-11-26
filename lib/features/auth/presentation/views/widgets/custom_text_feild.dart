import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CustomTextFeild extends StatefulWidget {
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
  State<CustomTextFeild> createState() => _CustomTextFeildState();
}

class _CustomTextFeildState extends State<CustomTextFeild> {
  double portraitWidth(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width < size.height ? size.width : size.height;
  }

  double portraitHeight(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.height > size.width ? size.height : size.width;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: widget.width, // Same as Figma width
        height: widget.hight, // Same as Figma height
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
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: getResponsiveFontSize(fontSize: 14, context: context),
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 11,
            ),
          ),
        ),
      ),
    );
  }
}
