import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/more/presentation/views/widgets/contact_textField.dart';
import 'package:task_1/features/more/presentation/views/widgets/social_row.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';

class ContuctBody extends StatelessWidget {
  const ContuctBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: portraitHeight(context) * .02),
          ContactTextField(),
          SizedBox(height: portraitHeight(context) * .02),
          CustomButton2(
            Textcolor: Colors.white,
            lable: "Submit",
            buttoncolor: Color(0xff204F38),
            fontSize: getResponsiveFontSize(fontSize: 18, context: context),
            fontWeight: FontWeight.bold,
            onPressed: () {},

            hieght: portraitHeight(context) * .0547,
            width: portraitWidth(context) * .8069,
          ),
          SizedBox(height: portraitHeight(context) * .02),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: portraitWidth(context) * .15),
              child: SocialRow(),
            ),
          ),
        ],
      ),
    );
  }
}
