import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/otp_screen.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
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
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FirstCustomColumn(
            icon: Icons.arrow_back_ios,
            text: "Enter your Number",
          ),
          Padding(
            padding: EdgeInsets.only(
              left: portraitWidth(context) * 0.0953,
              bottom: portraitHeight(context) * 0.01448,
              top: portraitHeight(context) * 0.01697,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              top: portraitHeight(context) * 0.03487,
              left: portraitWidth(context) * 0.0953,
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
            hieght: portraitHeight(context) * 00.0536,
            width: portraitWidth(context) * 0.80697,
          ),

          SizedBox(height: portraitHeight(context) * 00.042225),
          Center(
            child: CustomButton2(
              fontWeight: FontWeight.bold,

              fontSize: 18,

              width: portraitWidth(context) * 0.80697,
              hieght: portraitHeight(context) * 00.0536,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpScreen()),
                  );
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
