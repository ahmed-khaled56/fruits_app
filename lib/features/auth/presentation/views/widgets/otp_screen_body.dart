import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_otp.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_row.dart';
import 'package:task_1/features/auth/presentation/views/widgets/first_custom_column.dart';
import 'package:task_1/features/fruits/presentaion/views/Home_view.dart';

class OtpScreenBody extends StatefulWidget {
  const OtpScreenBody({super.key});

  @override
  State<OtpScreenBody> createState() => _OtpScreenBodyState();
}

class _OtpScreenBodyState extends State<OtpScreenBody> {
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FirstCustomColumn(
          icon: Icons.arrow_back_ios,
          text: "Enter Received OTP",
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * .0557),
        CustomOtp(),
        SizedBox(height: MediaQuery.sizeOf(context).height * .0557),

        //SizedBox(height: MediaQuery.sizeOf(context).height * 00.042225),
        Center(
          child: CustomButton2(
            fontWeight: FontWeight.bold,

            fontSize: 18,

            width: MediaQuery.sizeOf(context).width * 0.80697,
            hieght: MediaQuery.sizeOf(context).height * 00.0536,
            lable: "Confirm",
            Textcolor: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeView()),
              );
            },
            buttoncolor: Color(0xff204F38),
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * .04291),
        Text(
          "60",

          style: TextStyle(
            color: Color(0xff707070),
            fontSize: getResponsiveFontSize(fontSize: 30, context: context),
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * .03648),
        CustomRow(
          lineWidth: MediaQuery.sizeOf(context).width * 0.14,
          linehieght: MediaQuery.sizeOf(context).height * .0007,
          ontap: () {},
          fontsize1: 16,
          fontsize2: 16,
          color1: Colors.black,
          color2: Color(0xff004D8E),
          text1: "Not received? ",
          text2: "Send Again",
        ),
      ],
    );
  }
}
