import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CustomPayment extends StatelessWidget {
  const CustomPayment({
    super.key,
    required this.title,
    required this.imageLink,
    required this.CustSelected,
    this.onTap,
  });
  final String title;
  final String imageLink;
  final bool CustSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: portraitHeight(context) * .01),
      child: Column(
        children: [
          SizedBox(height: portraitHeight(context) * .01),
          GestureDetector(
            onTap: onTap,

            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: portraitWidth(context) * .009,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: portraitWidth(context) * .047,
                vertical: portraitHeight(context) * .015,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xff656565)),
              ), 
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: portraitWidth(context) * .03,
                    ),
                    child: Image(image: AssetImage(imageLink)),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff292727),
                        fontSize: getResponsiveFontSize(
                          fontSize: 16,
                          context: context,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  CustSelected
                      ? Icon(
                          Icons.check_circle,
                          color: Color(0xff204F38),
                          size: 27,
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: portraitWidth(context) * .0049,
                          ),
                          child: Container(
                            width: portraitWidth(context) * .06046,
                            height: portraitHeight(context) * .02875,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2),
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
