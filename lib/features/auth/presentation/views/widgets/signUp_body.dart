import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/scondLoginScreen.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_row.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_text_feild.dart';
import 'package:task_1/features/auth/presentation/views/widgets/first_custom_column.dart';
import 'package:task_1/features/auth/presentation/views/widgets/very_custom_textField.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
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
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FirstCustomColumn(
                icon: Icons.arrow_back_ios,
                text: "Sign Up to Wikala",
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: portraitWidth(context) * 0.099,
                  bottom: portraitHeight(context) * 0.01448,
                  top: portraitHeight(context) * 0.01697,
                ),
                child: Row(
                  children: [
                    Text(
                      "Full name",
                      style: TextStyle(
                        fontSize: getResponsiveFontSize(
                          fontSize: 14,
                          context: context,
                        ),

                        fontWeight: FontWeight.normal,
                        color: Color(0xff858D9A),
                      ),
                    ),
                  ],
                ),
              ),
              CustomTextFeild(
                lable: "Full name",
                hintText: "Firist and Last Name",
                hight: portraitHeight(context) * .0386,
                width: portraitWidth(context) * .8069,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: portraitHeight(context) * 0.03487,
                      left: portraitWidth(context) * 0.0953,
                      // bottom: MediaQuery.sizeOf(context).height * 0.01448,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Phone Number with Whatsapp",
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
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.sizeOf(context).width * 0.0103,
                    ),

                    child: PhoneField(
                      hieght: portraitHeight(context) * 00.0536,
                      width: portraitWidth(context) * 0.80697,
                    ),
                  ),
                ],
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
                hight: portraitHeight(context) * 00.0536,
                width: portraitWidth(context) * 0.80697,
              ),
              SizedBox(height: portraitHeight(context) * 00.04399),
              Center(
                child: CustomButton2(
                  fontWeight: FontWeight.bold,

                  fontSize: 18,

                  width: portraitWidth(context) * 0.80697,
                  hieght: portraitHeight(context) * 00.0536,
                  lable: "Sign Up",
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
                // lineWidth: MediaQuery.sizeOf(context).width * 0.12,
                // linehieght: MediaQuery.sizeOf(context).height * 000.001,
                ontap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => Scondloginscreen()),
                  );
                },
                fontsize1: 16,
                fontsize2: 16,
                color1: Colors.black,
                color2: Color(0xff004D8E),
                text1: "Already have an account? |",
                text2: "Login",
              ),
              SizedBox(height: portraitHeight(context) * 00.0418),
            ],
          ),
        ),
      ),
    );
  }
}
