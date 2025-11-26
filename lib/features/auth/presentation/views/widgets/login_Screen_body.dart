import 'package:flutter/material.dart';
import 'package:task_1/features/auth/presentation/views/widgets/customButtons.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_oprions.dart';
import 'package:task_1/features/auth/presentation/views/widgets/first_custom_column.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  double portraitWidth(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width < size.height ? size.width : size.height;
  }

  double portraitHeight(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.height > size.width ? size.height : size.width;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            FirstCustomColumn(text: "Welcome to Our app", icon: Icons.close),

            SizedBox(height: portraitHeight(context) * .05579),
            CustomButtons(),
            SizedBox(height: portraitHeight(context) * .0847),
            CustomOptions(),
          ],
        ),
      ],
    );
  }
}
