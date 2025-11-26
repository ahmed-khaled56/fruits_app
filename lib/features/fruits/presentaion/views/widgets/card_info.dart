import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CardInfo extends StatefulWidget {
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
  State<CardInfo> createState() => _CardInfoState();
}

class _CardInfoState extends State<CardInfo> {
  double portraitWidth(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width < size.height ? size.width : size.height;
  }

  double portraitHeight(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.height > size.width ? size.height : size.width;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: portraitWidth(context) * .01),
              child: Text(
                widget.sellerName ?? '',
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
            widget.icon != null
                ? Padding(
                    padding: EdgeInsets.only(
                      //right: MediaQuery.sizeOf(context).width * .20788,
                    ),
                    child: Image.asset(widget.icon!),
                  )
                : Padding(
                    padding: EdgeInsets.only(
                      //  right: MediaQuery.sizeOf(context).width * .20788,
                    ),
                    child: Text("   "),
                  ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                right: MediaQuery.sizeOf(context).width * .0488,
              ),
              child: Text(
                "${widget.rate}",
                style: TextStyle(
                  fontSize: getResponsiveFontSize(
                    fontSize: 14,
                    context: context,
                  ),
                  color: const Color(0xff656565),
                ),
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
              widget.delevPrice ?? '',
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
              width: portraitWidth(context) * .0116,
              height: portraitHeight(context) * .004914,
              decoration: BoxDecoration(
                color: Color(0xffC8C8C8),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(width: 8),
            Text(
              widget.openClosd ?? '',
              style: TextStyle(
                fontSize: getResponsiveFontSize(fontSize: 14, context: context),
                color: widget.openClosd == "open"
                    ? const Color(0xff00BB1A)
                    : const Color(0xffFF4A4A),
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: portraitWidth(context) * .0116,
              height: portraitHeight(context) * .004914,
              decoration: BoxDecoration(
                color: Color(0xffC8C8C8),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                widget.foodName ?? '',
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
                  widget.distance ?? '',
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
