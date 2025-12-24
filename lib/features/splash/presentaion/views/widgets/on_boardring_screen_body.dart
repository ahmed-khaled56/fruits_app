import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/login_screen.dart';
import 'package:task_1/features/splash/presentaion/views/widgets/custom_button.dart';
import 'package:task_1/features/splash/presentaion/views/widgets/Custom_skipe.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int index = 0;

  final List<Map<String, String>> data = [
    {
      "title": "E Shopping",
      "subtitle": "Explore op organic fruits & grab them",
    },
    {"title": "Delivery Arrived", "subtitle": "Order is arrived at your Place"},
    {
      "title": "Delivery Arrived",
      "subtitle": "POrder is arrived at your Place",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final int displayIndex = index == 2 ? 1 : index;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: portraitHeight(context) * 0.08154),

          Visibility(
            visible: index != 2,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: custom_skip(
              onTap: () {
                setState(() => index = 2);
              },
            ),
          ),

          SizedBox(height: portraitHeight(context) * 0.06545),

          GestureDetector(
            onTap: () {
              //LaocalNotificationService.basicNotofication();
              print("preeesd!");

              // Future.delayed(const Duration(minutes: 1), () {
              //   LaocalNotificationService.basicNotofication();
              // });
              // LaocalNotificationService.reabatedNotification();
              // LaocalNotificationService.scheduledNotification();
            },
            child: Image.asset(
              "assets/images/screen1.png",
              height: portraitHeight(context) * .2932,
              width: portraitWidth(context) * .6630,
            ),
          ),

          SizedBox(height: portraitHeight(context) * 0.02648),

          AnimatedSwitcher(
            duration: Duration(milliseconds: index == 2 ? 0 : 350),
            transitionBuilder: (child, animation) {
              if (index == 2) return child;

              final inAnimation = Tween<Offset>(
                begin: Offset(1, 0),
                end: Offset(0, 0),
              ).animate(animation);

              if (child.key == ValueKey("title_$displayIndex")) {
                return SlideTransition(position: inAnimation, child: child);
              } else {
                return FadeTransition(opacity: animation, child: child);
              }
            },
            child: Text(
              data[displayIndex]["title"]!,
              key: ValueKey("title_$displayIndex"),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getResponsiveFontSize(fontSize: 22, context: context),
                color: Color(0xff2F2E41),
              ),
            ),
          ),

          SizedBox(height: portraitHeight(context) * 0.018),

          AnimatedSwitcher(
            duration: Duration(milliseconds: index == 2 ? 0 : 350),
            transitionBuilder: (child, animation) {
              if (index == 2) return child;

              final inAnimation = Tween<Offset>(
                begin: Offset(1, 0),
                end: Offset(0, 0),
              ).animate(animation);

              if (child.key == ValueKey("sub_$displayIndex")) {
                return SlideTransition(position: inAnimation, child: child);
              } else {
                return FadeTransition(opacity: animation, child: child);
              }
            },
            child: Text(
              data[displayIndex]["subtitle"]!,
              key: ValueKey("sub_$displayIndex"),
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: getResponsiveFontSize(fontSize: 17, context: context),
                color: Color(0xff78787C),
              ),
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.056),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (i) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: index == i ? Color(0xff68A039) : Color(0xffC0C0C0),
                  shape: BoxShape.circle,
                ),
              );
            }),
          ),

          SizedBox(height: portraitHeight(context) * 0.0933),

          CustomButton(
            lable: index == 2 ? "Get Started" : "Next",
            onPressed: () {
              if (index < 2) {
                setState(() => index++);
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => LoginScreen()),
                );
              }
            },
          ),

          SizedBox(height: portraitHeight(context) * 0.197),
        ],
      ),
    );
  }
}
