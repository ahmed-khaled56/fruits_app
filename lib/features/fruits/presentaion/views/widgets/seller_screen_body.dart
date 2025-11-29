import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/fruits/presentaion/views/product_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/categories_list.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/custom_search_textfield.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/custom_seller_card.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/product_card.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/seller_card.dart';

class SellerScreenBody extends StatefulWidget {
  const SellerScreenBody({
    super.key,
    required this.customSellerCard,
    this.onTap,
  });
  final CustomSellerCard? customSellerCard;
  final void Function()? onTap;

  @override
  State<SellerScreenBody> createState() => _SellerScreenBodyState();
}

bool isPressed = false;
List<ProductCard> productsCardsList = [
  ProductCard(
    imageLink: "assets/images/productImage.png",
    price: "12.00 KD",

    productName: "Product Name",

    selleceticon: "assets/images/selectionIcon.png",

    note: "Up to 10% Off",
    priceNote: "14.00 KD",
  ),
  ProductCard(
    imageLink: "assets/images/productImage.png",
    price: "Price Upon Selection",

    productName: "Product Name",

    selleceticon: "assets/images/selectionIcon.png",

    note: "Up to 10% Off",
  ),
];

class _SellerScreenBodyState extends State<SellerScreenBody> {
  @override
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: portraitWidth(context) * .03,
                      right: portraitWidth(context) * .03,
                      top: portraitHeight(context) * .015,
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios),
                        ),
                        Spacer(),
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isPressed = true;
                            });
                          },
                          child: const Image(
                            image: AssetImage("assets/images/search.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: portraitHeight(context) * .0066,
                    ),
                    child: Container(
                      height: portraitHeight(context) * 0.001,
                      width: MediaQuery.sizeOf(context).width,
                      color: Color(0xffDEDFDF),
                    ),
                  ),
                ],
              ),

              isPressed == false
                  ? SellerCard(
                      sellerName: widget.customSellerCard!.sellerName,
                      icon: widget.customSellerCard!.icon,
                      openClosd: widget.customSellerCard!.openClosd,
                      rate: widget.customSellerCard!.rate,
                      imageLink: widget.customSellerCard!.imageLink,
                      timeDelev: "40 to 60 Min",
                    )
                  : CustomSearchTextfield(),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: portraitHeight(context) * .01,
                      left: portraitWidth(context) * .0488,
                    ),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        color: Color(0xff292727),
                        fontSize: getResponsiveFontSize(
                          fontSize: 18,
                          context: context,
                        ),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              Center(
                child: SizedBox(
                  width: portraitWidth(context) * 0.9,
                  child: CategoriesList(
                    namesList: ["Fruits", "Vegetables", "Phone", "Pets"],
                    lisnksLIst: [
                      "assets/images/fruits.png",
                      "assets/images/vegta.png",
                      "assets/images/phone.png",
                      "assets/images/pets.png",
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: portraitWidth(context) * .0488,
                  right: portraitWidth(context) * .0488,
                ),
                child: Row(
                  children: [
                    Text(
                      "Products",
                      style: TextStyle(
                        color: Color(0xff292727),
                        fontSize: getResponsiveFontSize(
                          fontSize: 18,
                          context: context,
                        ),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Image(image: AssetImage("assets/images/reorderIcon.png")),
                  ],
                ),
              ),
            ],
          ),
        ),

        /// ---------------------
        ///   PRODUCTS SLIVER LIST
        /// ---------------------
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductScreen(productCard: productsCardsList[index]),
                  ),
                );
              },
              child: productsCardsList[index],
            );
          }, childCount: productsCardsList.length),
        ),
      ],
    );
  }
}
