import 'package:flutter/material.dart';
import 'package:task_1/features/payment/presentation/views/widgets/done_screen_body.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: DoneScreenBody()));
  }
}
