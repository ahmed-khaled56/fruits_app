import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    super.key,
    required this.sellerName,
    required this.icon,
    required this.rate,
    required this.delevPrice,
    required this.openClosd,
    required this.foodName,
    required this.distance,
  });

  final String? sellerName;
  final String? icon;
  final double? rate;
  final String? delevPrice;
  final String? openClosd;
  final String? foodName;
  final String? distance;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      right: MediaQuery.sizeOf(context).width * .20788,
                    ),
                    child: Image.asset(icon!),
                  )
                : Padding(
                    padding: EdgeInsets.only(
                      right: MediaQuery.sizeOf(context).width * .20788,
                    ),
                    child: Text("   "),
                  ),
            SizedBox(width: 6),
            Text(
              "$rate",
              style: TextStyle(
                fontSize: getResponsiveFontSize(fontSize: 14, context: context),
                color: const Color(0xff656565),
              ),
            ),
          ],
        ),

        Row(
          children: [
            const Image(image: AssetImage("assets/images/motor.png")),
            SizedBox(width: 5),
            Text(
              "Delivery Charges: ",
              style: TextStyle(
                fontSize: getResponsiveFontSize(fontSize: 14, context: context),
                color: const Color(0xff656565),
              ),
            ),
            Text(
              delevPrice ?? '',
              style: TextStyle(
                fontSize: getResponsiveFontSize(fontSize: 14, context: context),
                color: const Color(0xff656565),
              ),
            ),
          ],
        ),

        Row(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * .0116,
              height: MediaQuery.sizeOf(context).height * .004914,
              decoration: BoxDecoration(
                color: Color(0xffC8C8C8),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(width: 8),
            Text(
              openClosd ?? '',
              style: TextStyle(
                fontSize: getResponsiveFontSize(fontSize: 14, context: context),
                color: openClosd == "open"
                    ? const Color(0xff00BB1A)
                    : const Color(0xffFF4A4A),
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: MediaQuery.sizeOf(context).width * .0116,
              height: MediaQuery.sizeOf(context).height * .004914,
              decoration: BoxDecoration(
                color: Color(0xffC8C8C8),
                borderRadius: BorderRadius.circular(20),
              ),
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
                const Image(image: AssetImage("assets/images/location.png")),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
