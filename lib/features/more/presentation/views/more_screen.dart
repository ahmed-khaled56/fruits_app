import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Custom_upperbar.dart';
import 'package:task_1/features/more/presentation/views/widgets/more_screen_body.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key, required this.changeTab});

  final Function(int) changeTab;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(portraitHeight(context) * .05),
        child: CustomUpperbar(title: "Fruit Market", noIcon: true),
      ),
      body: SafeArea(child: MoreScreenBody(changeTab: changeTab)),
    );
  }
}
