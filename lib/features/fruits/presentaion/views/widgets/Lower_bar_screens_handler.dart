import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/Home_view.dart';
import 'package:task_1/features/fruits/presentaion/views/basket_view.dart';
import 'package:task_1/features/fruits/presentaion/views/order_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/favourite_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/custom_lower_bar.dart';
import 'package:task_1/features/more/presentation/views/more_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int index = 0;
  late List<Widget> screens;
  void initState() {
    screens = [
      HomeView(),
      OrderScreen(),
      BasketView(),
      FavouriteScreen(),
      MoreScreen(
        changeTab: (i) {
          setState(() {
            index = i;
          });
        },
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: IndexedStack(index: index, children: screens),

      bottomNavigationBar: CustomLowerBar(
        currentIndex: index,
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
      ),
    );
  }
}
