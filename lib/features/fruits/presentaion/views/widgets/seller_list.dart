import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/custom_seller_card.dart';

class SellerList extends StatefulWidget {
  const SellerList({super.key});

  @override
  State<SellerList> createState() => _SellerListState();
}

class _SellerListState extends State<SellerList> {
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
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.sizeOf(context).height * .013,

            right: MediaQuery.sizeOf(context).width * .04186,
            left: MediaQuery.sizeOf(context).width * .04186,
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
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
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
