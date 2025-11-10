import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CustomButton2 extends StatelessWidget {
  const CustomButton2({
    super.key,
    @required this.icontcolor,
    required this.lable,
    required this.onPressed,
    required this.buttoncolor,
    required this.Textcolor,
    @required this.icon,
    @required this.imageLink,
    required this.hieght,
    required this.width,
    required this.fontSize,
    @required this.fontWeight,
  });

  final void Function() onPressed;
  final String lable;
  final Color buttoncolor;
  final Color Textcolor;
  final Color? icontcolor;
  final IconData? icon;
  final String? imageLink;
  final double? hieght;
  final double? width;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,

      height: hieght,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttoncolor,
          foregroundColor: Colors.white,
          // shadowColor: Colors.black, // shadow color
          elevation: 4,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide(
              //
              color: Colors.black,
              width: MediaQuery.of(context).size.width * 00.23148,
            ),
          ),
          // padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageLink != null ? Image(image: AssetImage(imageLink!)) : Text(""),
            Icon(icon, color: icontcolor),
            Text(
              lable,
              style: TextStyle(
                fontSize: getResponsiveFontSize(
                  fontSize: fontSize!,
                  context: context,
                ),
                fontWeight: fontWeight == null ? FontWeight.normal : fontWeight,
                color: Textcolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
