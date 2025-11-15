import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            right: MediaQuery.sizeOf(context).width * .01,
                          ),
                          child: Text(
                            sellerName ?? '',
                            style: TextStyle(
                              fontSize: getResponsiveFontSize(
                                fontSize: 19,
                                context: context,
                              ),
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff292727),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        icon != null
                            ? Padding(
                                padding: EdgeInsets.only(
                                  right:
                                      MediaQuery.sizeOf(context).width * .20788,
                                ),
                                child: Image.asset(icon!),
                              )
                            : Padding(
                                padding: EdgeInsets.only(
                                  right:
                                      MediaQuery.sizeOf(context).width * .20788,
                                ),
                                child: Text("   "),
                              ),
                        SizedBox(width: 6),
                        Text(
                          "$rate",
                          style: TextStyle(
                            fontSize: getResponsiveFontSize(
                              fontSize: 14,
                              context: context,
                            ),
                            color: const Color(0xff656565),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        const Image(
                          image: AssetImage("assets/images/motor.png"),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Delivery Charges: ",
                          style: TextStyle(
                            fontSize: getResponsiveFontSize(
                              fontSize: 14,
                              context: context,
                            ),
                            color: const Color(0xff656565),
                          ),
                        ),
                        Text(
                          delevPrice ?? '',
                          style: TextStyle(
                            fontSize: getResponsiveFontSize(
                              fontSize: 14,
                              context: context,
                            ),
                            color: const Color(0xff656565),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Container(
                          color: Color(0xffC8C8C8),
                          width: MediaQuery.sizeOf(context).width * .0116,
                          height: MediaQuery.sizeOf(context).height * .004914,
                        ),
                        SizedBox(width: 8),
                        Text(
                          openClosd ?? '',
                          style: TextStyle(
                            fontSize: getResponsiveFontSize(
                              fontSize: 14,
                              context: context,
                            ),
                            color: openClosd == "open"
                                ? const Color(0xff00BB1A)
                                : const Color(0xffFF4A4A),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          color: Color(0xffC8C8C8),
                          width: MediaQuery.sizeOf(context).width * .0116,
                          height: MediaQuery.sizeOf(context).height * .004914,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            foodName ?? '',
                            style: TextStyle(
                              fontSize: getResponsiveFontSize(
                                fontSize: 14,
                                context: context,
                              ),
                              color: const Color(0xff51949F),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              distance ?? '',
                              style: TextStyle(
                                fontSize: getResponsiveFontSize(
                                  fontSize: 12,
                                  context: context,
                                ),
                                color: const Color(0xff204F38),
                              ),
                            ),
                            SizedBox(width: 5),
                            const Image(
                              image: AssetImage("assets/images/location.png"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
