import 'package:flutter/material.dart';
import 'package:task_1/features/payment/presentation/views/widgets/checkout_address_body.dart';

class CheckoutAddressScreen extends StatelessWidget {
  const CheckoutAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: CheckoutAddressBody()));
  }
}
