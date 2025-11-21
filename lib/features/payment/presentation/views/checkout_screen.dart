import 'package:flutter/material.dart';
import 'package:task_1/features/payment/presentation/views/widgets/checkout_screen_body.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: CheckoutScreenBody()));
  }
}
