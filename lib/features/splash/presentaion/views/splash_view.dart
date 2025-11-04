import 'package:flutter/material.dart';
import 'package:task_1/features/splash/presentaion/views/widgets/splash_view_body_phone_layout.dart';
import 'package:task_1/features/splash/presentaion/views/widgets/splash_view_body_tablet_layout.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff003602),

      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return SplashViewBodyPhoneLayout();
          } else {
            return SafeArea(child: SplashViewBodyPhoneLayout());
          }
        },
      ),
    );
  }
}
