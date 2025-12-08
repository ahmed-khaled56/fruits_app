import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/features/payment/presentation/views/done_screen.dart';
import 'package:task_1/features/payment/presentation/views/widgets/checkOut_payment_body.dart';
import 'package:task_1/features/payment/presentation/views/widgets/checkout_address_body.dart';
import 'package:task_1/features/payment/presentation/views/widgets/checkout_screen_body.dart';
import 'package:task_1/features/payment/presentation/views/widgets/steper_chseckOut.dart';

class CheckoutMainScreen extends StatefulWidget {
  const CheckoutMainScreen({super.key});

  @override
  State<CheckoutMainScreen> createState() => _CheckoutMainScreenState();
}

final GlobalKey<_CheckoutMainScreenState> checkoutKey = GlobalKey();

class _CheckoutMainScreenState extends State<CheckoutMainScreen> {
  int currentIndex = 0;
  void goBackStep() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
      });
    } else {
      Navigator.pop(context);
    }
  }

  Widget getBody() {
    if (currentIndex == 0) {
      return CheckoutScreenBody(
        currentIndex: currentIndex,
        onPressed: () {
          if (currentIndex < 2) {
            setState(() {
              currentIndex++;
            });
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DoneScreen()),
            );
          }
        },
      );
    } else if (currentIndex == 1) {
      return CheckoutAddressBody(
        currentIndex: currentIndex,
        onPressed: () {
          if (currentIndex < 2) {
            setState(() {
              currentIndex++;
            });
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DoneScreen()),
            );
          }
        },
      );
    } else {
      return CheckoutPaymentBody(
        currentIndex: currentIndex,
        onPressed: () {
          if (currentIndex < 2) {
            setState(() {
              currentIndex++;
            });
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DoneScreen()),
            );
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SteperCheckout(
            active1: currentIndex == 0,
            active2: currentIndex == 1,
            active3: currentIndex == 2,
            Dactive1: currentIndex >= 0,
            Dactive2: currentIndex >= 1,
            Dactive3: currentIndex >= 2,
          ),

          SizedBox(height: portraitHeight(context) * .0107),

          getBody(),

          SizedBox(height: portraitHeight(context) * .0429),
        ],
      ),
    );
  }
}
