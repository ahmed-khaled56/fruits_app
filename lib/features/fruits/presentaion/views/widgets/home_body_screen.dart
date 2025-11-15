import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Dots_inducator.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/categories_list.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/custom_seller_card.dart';

class HomeBodyScreen extends StatefulWidget {
  const HomeBodyScreen({super.key});

  @override
  State<HomeBodyScreen> createState() => _HomeBodyScreenState();
}

class _HomeBodyScreenState extends State<HomeBodyScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  final List<Widget> cardsList = const [
    CustomSellerCard(
      delevPrice: "0.5 KD",
      distance: "2.5 KM",
      foodName: "Beverages",
      icon: "assets/images/icon.png",
      openClosd: "open",
      rate: 4.5,
      sellerName: "Seller Name",
    ),
    CustomSellerCard(
      delevPrice: "0.5 KD",
      distance: "2.5 KM",
      foodName: "Pizza",
      icon: "assets/images/icon2.png",
      openClosd: "closed",
      rate: 4.5,
      sellerName: "Seller Name",
    ),
    CustomSellerCard(
      delevPrice: "free",
      distance: "2.5 KM",
      foodName: "Fried Chicken",

      openClosd: "open",
      rate: 4.5,
      sellerName: "Seller Name",
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * .03,
            vertical: MediaQuery.sizeOf(context).height * .015,
          ),
          child: Row(
            children: [
              Text(
                'Fruit Market',
                style: TextStyle(
                  color: const Color(0xff204F38),
                  fontSize: getResponsiveFontSize(
                    fontSize: 24,
                    context: context,
                  ),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const Image(image: AssetImage("assets/images/search.png")),
              SizedBox(width: MediaQuery.sizeOf(context).width * .04),
              const Image(image: AssetImage("assets/images/settings.png")),
            ],
          ),
        ),

        SizedBox(
          width: MediaQuery.sizeOf(context).width * .9302,
          height: MediaQuery.sizeOf(context).height * .1046,
          child: PageView.builder(
            controller: _pageController,
            itemCount: 4,
            onPageChanged: (index) => setState(() => currentIndex = index),
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * .03488,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image(
                  image: AssetImage("assets/images/FrameAd.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),

        DotsIndicator(
          color: const Color(0xff204F38),
          currentIndex: currentIndex,
          count: 4,
        ),

        CategoriesList(),

        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * .04186,
          ),
          child: Row(
            children: [
              Text(
                "Sellers",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getResponsiveFontSize(
                    fontSize: 16,
                    context: context,
                  ),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(
                "Show All",
                style: TextStyle(
                  color: const Color(0xff235C95),
                  fontSize: getResponsiveFontSize(
                    fontSize: 18,
                    context: context,
                  ),
                ),
              ),
            ],
          ),
        ),

        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).height * .01,
            ),
            itemCount: cardsList.length,
            itemBuilder: (context, index) => cardsList[index],
          ),
        ),
      ],
    );
  }
}
