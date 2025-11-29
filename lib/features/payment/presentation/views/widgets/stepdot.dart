import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';

class Stepdot extends StatelessWidget {
  const Stepdot({super.key, required this.active});
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: portraitWidth(context) * .0418,
      height: portraitHeight(context) * .019,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: active ? Colors.green : const Color(0xffD1D1D1),
          width: portraitWidth(context) * .00465,
        ),
      ),
      child: Center(
        child: Container(
          width: portraitWidth(context) * .0139,
          height: portraitHeight(context) * .006377,
          decoration: BoxDecoration(
            color: active ? Colors.green : const Color(0xffD1D1D1),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
