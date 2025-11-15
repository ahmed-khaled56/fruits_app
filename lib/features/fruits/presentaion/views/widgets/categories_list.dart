import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({super.key});
  List<String> lisnksLIst = [
    "assets/images/resturant.png",
    "assets/images/farm.png",
    "assets/images/coffe.png",
    "assets/images/pharma.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: MediaQuery.sizeOf(context).width * .9,
      height: MediaQuery.sizeOf(context).height * .09583,
      child: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.sizeOf(context).width * .06279,
        ),
        child: ListView.builder(
          itemCount: lisnksLIst.length,
          scrollDirection: Axis.horizontal,

          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                right: MediaQuery.sizeOf(context).width * .0441,
              ),
              child: Image(
                image: AssetImage(lisnksLIst[index]),
                width: MediaQuery.sizeOf(context).width * .186,

                height: MediaQuery.sizeOf(context).height * .08583,
              ),
            );
          },
        ),
      ),
    );
  }
}
