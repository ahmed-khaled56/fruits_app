import 'package:flutter/material.dart';
import 'package:task_1/features/payment/presentation/views/widgets/failure_screen_body.dart';

class FailureScreen extends StatelessWidget {
  const FailureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: FailureScreenBody()));
  }
}
