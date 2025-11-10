import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/reset_passowrd_screen.dart';
import 'package:task_1/features/auth/presentation/views/signUp_screen.dart';
import 'package:task_1/features/auth/presentation/views/widgets/customButtons.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_row.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_text_feild.dart';
import 'package:task_1/features/auth/presentation/views/widgets/first_custom_column.dart';
import 'package:task_1/features/auth/presentation/views/widgets/very_custom_textField.dart';

class SecondLoginscreenbody extends StatefulWidget {
  const SecondLoginscreenbody({super.key});

  @override
  State<SecondLoginscreenbody> createState() => _SecondLoginscreenbodyState();
}

class _SecondLoginscreenbodyState extends State<SecondLoginscreenbody> {
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
            text: "Login to Wikala",
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

          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).width * 0.03487,
              left: MediaQuery.sizeOf(context).width * 0.0953,
              // bottom: MediaQuery.sizeOf(context).height * 0.01448,
            ),
            child: Row(
              children: [
                Text(
                  "Password",
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
          CustomTextFeild(
            lable: "Password",
            hintText: "Password",
            hight: MediaQuery.sizeOf(context).height * 00.07472,
            width: MediaQuery.sizeOf(context).width * 0.80697,
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 00.04399),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResetPassowrdScreen()),
              );
            },
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.sizeOf(context).width * 0.088,
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Forget Password?",
                      style: TextStyle(
                        fontSize: getResponsiveFontSize(
                          fontSize: 18,
                          context: context,
                        ),
                        fontWeight: FontWeight.normal,

                        color: Color(0xff004D8E),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.36,
                      height: MediaQuery.sizeOf(context).height * .0007,
                      color: Color(0xff004D8E),
                      margin: EdgeInsets.only(
                        top: MediaQuery.sizeOf(context).height * .00429,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 00.042225),
          Center(
            child: CustomButton2(
              fontWeight: FontWeight.bold,

              fontSize: 18,

              width: MediaQuery.sizeOf(context).width * 0.80697,
              hieght: MediaQuery.sizeOf(context).height * 00.07472,
              lable: "LogIn",
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
          SizedBox(height: MediaQuery.sizeOf(context).height * 00.0418),
          CustomRow(
            lineWidth: MediaQuery.sizeOf(context).width * 0.14,
            linehieght: MediaQuery.sizeOf(context).height * .0007,
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupScreen()),
              );
            },
            fontsize1: 16,
            fontsize2: 16,
            color1: Colors.black,
            color2: Color(0xff004D8E),
            text1: "Don’t have an account? |",
            text2: "Sign Up",
          ),
        ],
      ),
    );
  }
}
