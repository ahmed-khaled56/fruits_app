import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/features/payment/presentation/views/widgets/stepTap.dart';
import 'package:task_1/features/payment/presentation/views/widgets/stepdot.dart';
import 'package:task_1/features/payment/presentation/views/widgets/stepline.dart';

class SteperCheckout extends StatefulWidget {
  const SteperCheckout({
    super.key,
    required this.active1,
    required this.active2,
    required this.active3,
    required this.Dactive1,
    required this.Dactive2,
    required this.Dactive3,
  });
  final bool active1;
  final bool active2;
  final bool active3;
  final bool Dactive1;
  final bool Dactive2;
  final bool Dactive3;

  @override
  State<SteperCheckout> createState() => _SteperCheckoutState();
}

class _SteperCheckoutState extends State<SteperCheckout> {
  @override
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: portraitWidth(context) * .128,
            right: portraitWidth(context) * .128,
            top: portraitHeight(context) * .005,
          ),
          child: Row(
            children: [
              Stepdot(active: widget.Dactive1),
              SizedBox(width: portraitWidth(context) * .0139),
              Expanded(child: DashedLine()),
              SizedBox(width: portraitWidth(context) * .0139),
              Stepdot(active: widget.Dactive2),
              SizedBox(width: portraitWidth(context) * .0139),
              Expanded(child: DashedLine()),
              SizedBox(width: portraitWidth(context) * .0139),
              Stepdot(active: widget.Dactive3),
            ],
          ),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * .015),

        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * .04,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Steptap(text: "Delivery Time", active: widget.active1),
              Steptap(text: "Delivery Address", active: widget.active2),
              Steptap(text: "Payment", active: widget.active3),
            ],
          ),
        ),
      ],
    );
  }
}
