import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/reset_passowrd_screen.dart';
import 'package:task_1/features/auth/presentation/views/signUp_screen.dart';
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
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FirstCustomColumn(
              icon: Icons.arrow_back_ios,
              text: "Login to Wikala",
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
                top: portraitWidth(context) * 0.03487,
                left: portraitWidth(context) * 0.0953,
                bottom: portraitHeight(context) * 0.01448,
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment,
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

            Padding(
              padding: EdgeInsets.only(
                top: portraitHeight(context) * 0.03487,
                left: portraitWidth(context) * 0.0953,
                // bottom: MediaQuery.sizeOf(context).height * 0.01448,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
            ),
            CustomTextFeild(
              lable: "Password",
              hintText: "Password",
              hight: portraitHeight(context) * 00.0536,
              width: portraitWidth(context) * 0.80697,
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 00.04399),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResetPassowrdScreen(),
                  ),
                );
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: portraitWidth(context) * 0.088,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPassowrdScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        decorationColor: Colors.blue,
                        fontSize: getResponsiveFontSize(
                          fontSize: 18,
                          context: context,
                        ),
                        fontWeight: FontWeight.normal,

                        color: Color(0xff004D8E),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: portraitHeight(context) * 00.042225),
            Center(
              child: CustomButton2(
                fontWeight: FontWeight.bold,

                fontSize: 18,

                width: portraitWidth(context) * 0.80697,
                hieght: portraitHeight(context) * 00.0536,
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
            SizedBox(height: portraitHeight(context) * 00.0418),
            CustomRow(
              decoration: TextDecoration.underline,
              // lineWidth: MediaQuery.sizeOf(context).width * 0.14,
              // linehieght: MediaQuery.sizeOf(context).height * .0007,
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
            SizedBox(height: portraitHeight(context) * 00.042225),
          ],
        ),
      ),
    );
  }
}
