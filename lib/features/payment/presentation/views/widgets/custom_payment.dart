import 'package:flutter/material.dart';
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
      padding: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * .01),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * .01),
          GestureDetector(
            onTap: onTap,

            child: Container(
              margin: EdgeInsets.symmetric(
                // horizontal: MediaQuery.sizeOf(context).width * .009,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * .047,
                vertical: MediaQuery.sizeOf(context).height * .015,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xff656565)),
              ),
              child: Row(
                children: [
                  Image(image: AssetImage(imageLink)),
                  Spacer(flex: 1),
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
                  Spacer(flex: 5),
                  CustSelected
                      ? Icon(
                          Icons.check_circle,
                          color: Color(0xff204F38),
                          size: 27,
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.sizeOf(context).width * .0049,
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * .06046,
                            height: MediaQuery.sizeOf(context).height * .02875,
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
