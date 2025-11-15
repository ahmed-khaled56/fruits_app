import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/screen1.dart';
import 'package:task_1/features/splash/presentaion/views/widgets/splash_view_body_phone_layout.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Screen1()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff003602),

      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return SplashViewBodyPhoneLayout();
          } else {
            return SplashViewBodyPhoneLayout();
          }
        },
      ),
    );
  }
}
