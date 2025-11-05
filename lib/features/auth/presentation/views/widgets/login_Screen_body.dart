import 'package:flutter/material.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.0911),

        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .0858,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: MediaQuery.of(context).size.width * .0319,
              height: MediaQuery.of(context).size.height * .01456,
              child: Icon(Icons.close, color: Colors.black),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .067),

        Image(
          width: MediaQuery.of(context).size.width * .6209,
          height: MediaQuery.of(context).size.height * .0826,
          image: AssetImage("assets/images/Fruit Market.png"),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .03648),
        Text(
          "Welcome to Our app",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,

            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .05579),
        CustomButton2(
          imageLink: "assets/images/Icon material-local-phone.png",
          buttoncolor: Colors.white,

          lable: "Sign in with Phone Number",
          onPressed: () {},
          Textcolor: Color(0xff242729),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .0214),

        CustomButton2(
          imageLink: "assets/images/google.png",
          buttoncolor: Colors.white,

          lable: "Sign in with Google",
          onPressed: () {},
          Textcolor: Color(0xff242729),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .0214),
        CustomButton2(
          imageLink: "assets/images/feacbok.png",
          buttoncolor: Color(0xff235C95),

          lable: "Sign in with Facebook",
          onPressed: () {},
          Textcolor: Colors.white,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .0847),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "already member? ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),

            Text(
              "Sign In",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Color(0xff004D8E),
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .0214),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "By continue you agree to our ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Color(0xff88909C),
              ),
            ),

            Text(
              "Terms of service",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Color(0xff005B96),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "and our ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff88909C),
                ),
              ),
            ),

            Center(
              child: Text(
                "Privacy Policy",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff005B96),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
