import 'package:flutter/material.dart';

class AdsList extends StatefulWidget {
  const AdsList({super.key});

  @override
  State<AdsList> createState() => _AdsListState();
}

class _AdsListState extends State<AdsList> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .1046,
      child: PageView.builder(
        controller: _pageController,
        itemCount: 4,
        onPageChanged: (index) => setState(() => currentIndex = index),
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * .03088,
          ),
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.104,

            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage("assets/images/FrameAd.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
