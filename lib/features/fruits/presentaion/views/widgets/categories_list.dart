import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key, required this.lisnksLIst, this.namesList});

  final List<String> lisnksLIst;
  final List<String>? namesList;

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
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
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: EdgeInsets.only(
        //left: portraitWidth(context) * .0367
      ),
      child: SizedBox(
        height: portraitHeight(context) * .1341, //
        child: ListView.builder(
          itemCount: widget.lisnksLIst.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                //right: portraitWidth(context) * 0.03
              ),
              child: SizedBox(
                width: portraitWidth(context) * 0.22,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: portraitWidth(context) * 0.20,
                      height: portraitWidth(context) * 0.20,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        widget.lisnksLIst[index],
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(height: portraitHeight(context) * .0064),

                    Text(
                      widget.namesList?[index] ?? "",
                      style: TextStyle(
                        color: const Color(0xff292727),
                        fontSize: getResponsiveFontSize(
                          fontSize: 14,
                          context: context,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
