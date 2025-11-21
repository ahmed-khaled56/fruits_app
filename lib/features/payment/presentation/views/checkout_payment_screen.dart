import 'package:flutter/material.dart';
import 'package:task_1/features/payment/presentation/views/widgets/checkOut_payment_body.dart';

class CheckoutPaymentScreen extends StatelessWidget {
  const CheckoutPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: CheckoutPaymentBody()));
  }
}
