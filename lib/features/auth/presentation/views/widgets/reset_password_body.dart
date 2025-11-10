import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/signUp_screen.dart';
import 'package:task_1/features/auth/presentation/views/widgets/customButtons.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_row.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_text_feild.dart';
import 'package:task_1/features/auth/presentation/views/widgets/first_custom_column.dart';
import 'package:task_1/features/auth/presentation/views/widgets/very_custom_textField.dart';

class ResetPasswordBody extends StatefulWidget {
  const ResetPasswordBody({super.key});

  @override
  State<ResetPasswordBody> createState() => _ResetPasswordBodyState();
}

class _ResetPasswordBodyState extends State<ResetPasswordBody> {
  @override
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FirstCustomColumn(
            icon: Icons.arrow_back_ios,
            text: "Enter your Number",
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).width * 0.0953,
              bottom: MediaQuery.sizeOf(context).height * 0.01448,
              top: MediaQuery.sizeOf(context).height * 0.01697,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).width * 0.03487,
              left: MediaQuery.sizeOf(context).width * 0.0953,
              // bottom: MediaQuery.sizeOf(context).height * 0.01448,
            ),
            child: Row(
              children: [
                Text(
                  "Phone Number",
                  style: TextStyle(
                    fontSize: getResponsiveFontSize(
                      fontSize: 14,
                      context: context,
                    ),

                    fontWeight: FontWeight.normal,
                    color: Color(0xff858D9A),
                  ),
                ),
                Text(
                  "*",
                  style: TextStyle(
                    fontSize: getResponsiveFontSize(
                      fontSize: 14,
                      context: context,
                    ),

                    fontWeight: FontWeight.normal,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          PhoneField(
            hieght: MediaQuery.sizeOf(context).height * 00.07472,
            width: MediaQuery.sizeOf(context).width * 0.80697,
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 00.042225),
          Center(
            child: CustomButton2(
              fontWeight: FontWeight.bold,

              fontSize: 18,

              width: MediaQuery.sizeOf(context).width * 0.80697,
              hieght: MediaQuery.sizeOf(context).height * 00.07472,
              lable: "Submit",
              Textcolor: Colors.white,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Form submitted successfully'),
                    ),
                  );
                } else {
                  autovalidateMode:
                  AutovalidateMode.onUserInteraction;
                }
              },
              buttoncolor: Color(0xff204F38),
            ),
          ),
        ],
      ),
    );
  }
}
