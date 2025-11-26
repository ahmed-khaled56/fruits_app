import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/card_info.dart';

class CustomSellerCard extends StatefulWidget {
  const CustomSellerCard({
    super.key,
    @required this.icon,
    required this.delevPrice,
    required this.distance,
    required this.openClosd,
    required this.foodName,
    required this.sellerName,
    required this.rate,
    this.imageLink,
  });

  final String? icon;
  final String? delevPrice;
  final String? distance;
  final String? openClosd;
  final String? foodName;
  final String? imageLink;
  final String? sellerName;
  final double? rate;

  @override
  State<CustomSellerCard> createState() => _CustomSellerCardState();
}

class _CustomSellerCardState extends State<CustomSellerCard> {
  @override
  double portraitWidth(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width < size.height ? size.width : size.height;
  }

  double portraitHeight(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.height > size.width ? size.height : size.width;
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: portraitWidth(context) * .0209,
        vertical: portraitHeight(context) * .00086,
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
                width: portraitWidth(context) * .1906,
                height: portraitHeight(context) * .0879,
                fit: BoxFit.cover,
              ),
              SizedBox(width: portraitHeight(context) * .04),
              Expanded(
                child: CardInfo(
                  sellerName: widget.sellerName,
                  icon: widget.icon,
                  rate: widget.rate,
                  delevPrice: widget.delevPrice,
                  openClosd: widget.openClosd,
                  foodName: widget.foodName,
                  distance: widget.distance,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
