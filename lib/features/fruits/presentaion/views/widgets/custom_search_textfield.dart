import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CustomSearchTextfield extends StatefulWidget {
  const CustomSearchTextfield({super.key});

  @override
  State<CustomSearchTextfield> createState() => _CustomSearchTextfieldState();
}

class _CustomSearchTextfieldState extends State<CustomSearchTextfield> {
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
    return Container(
      width: portraitWidth(context) * .9,
      height: portraitHeight(context) * .054,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffFEFEFE),
      ),
      child: TextField(
        onChanged: (value) {},

        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: portraitWidth(context) * .073),
            child: Icon(Icons.search),
          ),
          hint: Padding(
            padding: EdgeInsets.only(left: portraitWidth(context) * .0409),
            child: Text(
              "What are you looking for?",
              style: TextStyle(
                fontSize: getResponsiveFontSize(fontSize: 14, context: context),
                fontWeight: FontWeight.normal,
                color: Color(0xff8A8B8B),
              ),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff8A8B8B), width: 1),
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
