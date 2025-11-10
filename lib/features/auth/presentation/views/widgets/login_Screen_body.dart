import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/customButtons.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_oprions.dart';
import 'package:task_1/features/auth/presentation/views/widgets/first_custom_column.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FirstCustomColumn(text: "Welcome to Our app", icon: Icons.close),

        SizedBox(height: MediaQuery.of(context).size.height * .05579),
        CustomButtons(),
        SizedBox(height: MediaQuery.of(context).size.height * .0847),
        CustomOptions(),
      ],
    );
  }
}
