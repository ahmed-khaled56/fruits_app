import 'package:flutter/material.dart';
import 'package:task_1/features/more/presentation/views/widgets/custom_terms.dart';

class ConditionBody extends StatelessWidget {
  const ConditionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTerms(
                  text:
                      "A Terms and Conditions agreement acts as a legal contract between you (the company) and the user. It’s where you maintain your rights to exclude users from your app in the event that they abuse your website/app, set out the rules for using your service and note other important details and disclaimers.",
                ),

                CustomTerms(
                  text:
                      "Your Terms and Conditions agreement will be uniquely yours. While some clauses are standard and commonly seen in pretty much every Terms and Conditions agreement, it’s up to you to set the rules and guidelines that the user must agree to.",
                ),

                CustomTerms(
                  text:
                      "Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable, practically speaking. More rarely, it may be called something like an End User Services Agreement (EUSA).",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
