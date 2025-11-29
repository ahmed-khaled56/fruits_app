import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class SelectTime extends StatefulWidget {
  const SelectTime({super.key});

  @override
  State<SelectTime> createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {
  @override
  bool isActive = false;
  bool nowSelected = false;
  bool CustSelected = false;
  bool isDowned = false;
  DateTime? selectedDate = DateTime(2021, 9, 15);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: portraitWidth(context) * .0049,
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                nowSelected = !nowSelected;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: portraitWidth(context) * .037,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: portraitWidth(context) * .037,
                vertical: portraitHeight(context) * .015,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: nowSelected ? Colors.black : Colors.grey,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff292727),
                      fontSize: getResponsiveFontSize(
                        fontSize: 16,
                        context: context,
                      ),
                    ),
                  ),
                  nowSelected
                      ? Icon(Icons.check_circle, color: Color(0xff204F38))
                      : Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: portraitWidth(context) * .0049,
                          ),
                          child: Container(
                            width: portraitWidth(context) * .06046,
                            height: portraitHeight(context) * .02875,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2),
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * .024),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * .0049,
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * .037,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * .037,
                  vertical: MediaQuery.sizeOf(context).height * .02,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xffE3E3E3)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.sizeOf(context).height * .02,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                CustSelected = !CustSelected;
                              });
                            },
                            child: Text(
                              "Select Delivery Time",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,

                                color: Color(0xff292727),
                                fontSize: getResponsiveFontSize(
                                  fontSize: 16,
                                  context: context,
                                ),
                              ),
                            ),
                          ),
                        ),
                        CustSelected
                            ? Icon(Icons.check_circle, color: Color(0xff204F38))
                            : Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.sizeOf(context).width * .0049,
                                ),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * .06046,
                                  height:
                                      MediaQuery.sizeOf(context).height *
                                      .02875,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                      ],
                    ),

                    Text(
                      "Select Date",

                      style: TextStyle(
                        fontSize: getResponsiveFontSize(
                          fontSize: 14,
                          context: context,
                        ),
                        color: Color(0xff4A4A4A),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "09-15-2021 ",

                              style: TextStyle(
                                fontSize: getResponsiveFontSize(
                                  fontSize: 17,
                                  context: context,
                                ),
                                color: Color(0xff204F38),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),

                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isDowned = !isDowned;
                                });
                              },
                              child: isDowned != true
                                  ? Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 30,

                                      color: Color(0xff656565),
                                    )
                                  : Icon(
                                      Icons.keyboard_arrow_up,
                                      size: 30,

                                      color: Color(0xff656565),
                                    ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.sizeOf(context).height * .0066,
                          ),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.001,
                            width: MediaQuery.sizeOf(context).width * .9,
                            color: Color(0xffDEDFDF),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
