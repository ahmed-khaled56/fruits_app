import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/card_info.dart';

class CustomSellerCard extends StatelessWidget {
  const CustomSellerCard({
    super.key,
    @required this.icon,
    required this.delevPrice,
    required this.distance,
    required this.openClosd,
    required this.foodName,
    required this.sellerName,
    required this.rate,
  });

  final String? icon;
  final String? delevPrice;
  final String? distance;
  final String? openClosd;
  final String? foodName;
  final String? sellerName;
  final double? rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * .0209,
        vertical: MediaQuery.sizeOf(context).height * .00086,
      ),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.03),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/sellerImage.png",
                width: MediaQuery.sizeOf(context).width * .1906,
                height: MediaQuery.sizeOf(context).height * .0879,
                fit: BoxFit.cover,
              ),
              SizedBox(width: MediaQuery.sizeOf(context).width * .04),
              Expanded(
                child: CardInfo(
                  sellerName: sellerName,
                  icon: icon,
                  rate: rate,
                  delevPrice: delevPrice,
                  openClosd: openClosd,
                  foodName: foodName,
                  distance: distance,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
