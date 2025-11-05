import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.lable, required this.onPressed});

  final void Function()? onPressed;
  final String lable;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 177,
      height: 52,
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
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
