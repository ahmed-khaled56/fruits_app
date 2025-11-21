import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/seller_screen.dart';
import 'package:task_1/features/payment/presentation/views/widgets/TextRow.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/custom_seller_card.dart';

class SellerList extends StatefulWidget {
  const SellerList({super.key});

  @override
  State<SellerList> createState() => _SellerListState();
}

class _SellerListState extends State<SellerList> {
  final List<dynamic> cardsList = const [
    CustomSellerCard(
      delevPrice: "0.5 KD",
      distance: "2.5 KM",
      foodName: "Beverages",
      icon: "assets/images/icon.png",
      openClosd: "open",
      rate: 4.5,
      sellerName: "Seller Name",
      imageLink: "assets/images/sellerImage.png",
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
        TextRow(text1: "Seller", text2: "Show All", toppadding: 0),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: ListView.builder(
            padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).height * .0001,
            ),
            itemCount: cardsList.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SellerScreen(customSellerCard: cardsList[index]),
                  ),
                );
              },
              child: cardsList[index],
            ),
          ),
        ),
      ],
    );
  }
}
