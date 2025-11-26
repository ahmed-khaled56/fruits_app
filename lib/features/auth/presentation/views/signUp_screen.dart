import 'package:flutter/material.dart';
import 'package:task_1/features/auth/presentation/views/widgets/signUp_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: true, body: SignupBody());
  }
}
