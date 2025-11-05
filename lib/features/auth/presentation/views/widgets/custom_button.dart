import 'package:flutter/material.dart';

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
  });

  final void Function() onPressed;
  final String lable;
  final Color buttoncolor;
  final Color Textcolor;
  final Color? icontcolor;
  final IconData? icon;
  final String? imageLink;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.76,
      height: MediaQuery.of(context).size.height * 0.066,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttoncolor,
          foregroundColor: Colors.white,
          // shadowColor: Colors.black, // shadow color
          elevation: 4,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: const BorderSide(
              //
              color: Colors.black,
              width: .5,
            ),
          ),
          // padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            Image(image: AssetImage(imageLink!)),
            Center(child: Icon(icon, color: icontcolor)),
            Center(
              child: Text(
                lable,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: Textcolor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
