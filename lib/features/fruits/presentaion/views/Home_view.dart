import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/home_body_screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: HomeBodyScreen()));
  }
}
