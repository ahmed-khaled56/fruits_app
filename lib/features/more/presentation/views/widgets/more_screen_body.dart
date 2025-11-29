import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/fruits/presentaion/views/favourite_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/order_screen.dart';
import 'package:task_1/features/more/presentation/views/conditions_screen.dart';
import 'package:task_1/features/more/presentation/views/contuct_screen.dart';
import 'package:task_1/features/more/presentation/views/profile_screen.dart';
import 'package:task_1/features/more/presentation/views/widgets/custom_listTile.dart';
import 'package:task_1/features/more/presentation/views/widgets/language_sheet.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Custom_upperbar.dart';

class MoreScreenBody extends StatelessWidget {
  const MoreScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> tileList = [
      cutomListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfileScreen()),
          );
        },
        iconLink: "assets/images/profilePer.png",
        title: "Profile",
        color: Colors.black,
      ),
      cutomListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OrderScreen()),
          );
        },
        iconLink: "assets/images/myorders.png",
        title: "My Orders",
      ),
      cutomListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FavouriteScreen()),
          );
        },
        iconLink: "assets/images/fav.png",
        title: "Favorite",
      ),
      cutomListTile(
        iconLink: "assets/images/lang.png",
        title: "Language",

        onTap: () {
          LanguageSheet(context);
        },
      ),
      cutomListTile(
        iconLink: "assets/images/supp.png",
        title: "Support",

        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ContactScreen()),
          );
        },
      ),
      cutomListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ConditionsScreen()),
          );
        },

        iconLink: "assets/images/cond.png",
        title: "Terms & Conditions",
      ),
      cutomListTile(icon: Icons.info_outline, title: "About Us"),
    ];

    return SingleChildScrollView(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomUpperbar(title: "Fruit Market"),
          SizedBox(height: portraitHeight(context) * .04),
          Container(
            width: portraitWidth(context) * .2,
            height: portraitHeight(context) * .09656,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xff959CA8), width: 2),
            ),
            child: Center(
              child: Image.asset(
                "assets/images/profilePer.png",
                width: portraitWidth(context) * .07209,
                height: portraitHeight(context) * .0364,
              ),
            ),
          ),
          SizedBox(height: portraitHeight(context) * .01),
          Text(
            "Welcome, Fruit Market",
            style: TextStyle(
              fontSize: getResponsiveFontSize(fontSize: 24, context: context),
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * .02),
          CustomButton2(
            Textcolor: Colors.white,
            lable: "Login",
            buttoncolor: Color(0xff204F38),
            fontSize: getResponsiveFontSize(fontSize: 18, context: context),
            fontWeight: FontWeight.bold,
            onPressed: () {},

            hieght: portraitHeight(context) * .0547,
            width: portraitWidth(context) * .8069,
          ),
          SizedBox(height: portraitHeight(context) * .02),
          Column(
            children: tileList.map((tile) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: portraitHeight(context) * .0047,
                ),
                child: tile,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
