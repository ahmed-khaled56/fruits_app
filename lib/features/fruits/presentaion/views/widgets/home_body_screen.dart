import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/ads_list.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/categories_list.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/home_upper_bar.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/lower_bar.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/scroll_dots_indicator.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/seller_list.dart';

class HomeBodyScreen extends StatefulWidget {
  const HomeBodyScreen({super.key});

  @override
  State<HomeBodyScreen> createState() => _HomeBodyScreenState();
}

class _HomeBodyScreenState extends State<HomeBodyScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeUpperBar(),

        AdsList(),

        ScrollDotsIndicator(currentIndex: currentIndex),

        CategoriesList(),

        SellerList(),
        Flexible(child: SizedBox(height: MediaQuery.sizeOf(context).height)),

        LowerBar(),
      ],
    );
  }
}
