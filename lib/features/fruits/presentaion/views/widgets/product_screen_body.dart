import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Selection_column_weight.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/product_card.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/product_image.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/product_info.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/sellection_column_addonst.dart';

class ProductScreenBody extends StatefulWidget {
  const ProductScreenBody({super.key, required this.productCard});
  final ProductCard productCard;

  @override
  State<ProductScreenBody> createState() => _ProductScreenBodyState();
}

bool isDownedW = false;

List<bool> isSelectedListW = [false, false, false];
bool isDownedD = false;

List<bool> isSelectedListD = [false, false, false];

class _ProductScreenBodyState extends State<ProductScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          productImage(),
          ProductInfo(),
          SelectionColumn(
            isSelectedList: [
              isSelectedListW[0],
              isSelectedListW[1],
              isSelectedListW[2],
            ],

            lablesList: [
              "50 Gram - 4.00 KD",
              "1 Kg - 6.25 KD",
              "2 Kg - 12.00 KD",
            ],
            ColumnLable: "Select weight",
            onTap: () {
              setState(() {
                isDownedW = !isDownedW;
              });
            },
            isDowned: isDownedW,
            circeledTapedList: [
              () {
                setState(() {
                  isSelectedListW[0] = !isSelectedListW[0];
                });
              },
              () {
                setState(() {
                  isSelectedListW[1] = !isSelectedListW[1];
                });
              },
              () {
                setState(() {
                  isSelectedListW[2] = !isSelectedListW[2];
                });
              },
            ],
          ),

          SellectionColumnAddonst(
            ColumnLable: "Select Addonst",

            lablesList: ["50 Gram - 4.00 KD", "1 Kg - 6.25 KD"],
            onTap: () {
              setState(() {
                isDownedD = !isDownedD;
              });
            },
            isDowned: isDownedD,
            circeled1TapedList: [
              () {
                setState(() {
                  isSelectedListD[0] = !isSelectedListD[0];
                });
              },
              () {
                setState(() {
                  isSelectedListD[1] = !isSelectedListD[1];
                });
              },
            ],
            isSelectedList: [isSelectedListD[0], isSelectedListD[1]],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: portraitWidth(context) * .02),
              child: Image(image: AssetImage("assets/images/add_to_cart.png")),
            ),
          ),
        ],
      ),
    );
  }
}
