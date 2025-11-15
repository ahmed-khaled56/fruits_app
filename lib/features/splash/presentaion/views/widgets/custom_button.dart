import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.lable, required this.onPressed});

  final void Function()? onPressed;
  final String lable;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orenationDiriction = MediaQuery.of(context).orientation;
    print(orenationDiriction);

    final realHeight = size.height > size.width ? size.height : size.width;
    final realWidth = size.width < size.height ? size.width : size.height;

    return SizedBox(
      width: realWidth * 0.36,
      height: realHeight * 0.05579,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff204F38), // button color
          foregroundColor: Colors.white, // text color
          shadowColor: Colors.black, // shadow color
          elevation: 4, // shadow depth
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25), // round corners
          ),
          // padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        ),
        onPressed: onPressed,
        child: Text(
          lable,
          style: TextStyle(
            fontSize: getResponsiveFontSize(
              fontSize: getResponsiveFontSize(fontSize: 16, context: context),
              context: context,
            ),
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
