import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class custom_add_address extends StatelessWidget {
  const custom_add_address({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * .037,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * .037,
        vertical: MediaQuery.sizeOf(context).height * .015,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color(0xff656565)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Add New Address",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff4A4A4A),
              fontSize: getResponsiveFontSize(fontSize: 16, context: context),
            ),
          ),

          Icon(Icons.add, color: Color(0xff204F38)),
        ],
      ),
    );
  }
}
