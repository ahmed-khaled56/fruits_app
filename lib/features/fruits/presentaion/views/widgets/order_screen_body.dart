import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/features/fruits/presentaion/views/order_traking_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/order_card.dart';

class OrderScreenBody extends StatelessWidget {
  const OrderScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> ordersList = [
      OrderCard(
        iconLink: "assets/images/orange.png",
        image: "assets/images/delevring.png",
        orderId: "243188 - 37 KD",
        date: "9 Sep",
        itemsCount: 4,
        status: "Delivering",
        statusColor: Color(0xffFEC500),
        iconBgColor: Colors.red,
      ),
      OrderCard(
        iconLink: "assets/images/green.png",
        image: "assets/images/finishd.png",
        orderId: "882610",
        date: "8 Sep",
        itemsCount: 3,
        status: "Finished",
        statusColor: Color(0xff00BB1A),
        iconBgColor: Colors.red,
      ),
      OrderCard(
        iconLink: "assets/images/red.png",
        image: "assets/images/canceled.png",
        orderId: "882610",
        date: "8 Sep",
        itemsCount: 3,
        status: "Canceled",
        statusColor: Color(0xffFF4A4A),
        iconBgColor: Colors.red,
      ),
      OrderCard(
        iconLink: "assets/images/blue.png",
        image: "assets/images/working.png",
        orderId: "882610",
        date: "8 Sep",
        itemsCount: 3,
        status: "Working",
        statusColor: Color(0xff28B0E8),
        iconBgColor: Colors.red,
      ),
      OrderCard(
        iconLink: "assets/images/purple.png",
        image: "assets/images/deliverd.png",
        orderId: "882610",
        date: "8 Sep",
        itemsCount: 3,
        status: "Delivered",
        statusColor: Color(0xff28B0E8),
        iconBgColor: Colors.red,
      ),
      OrderCard(
        iconLink: "assets/images/sky.png",
        image: "assets/images/new.png",
        orderId: "882610",
        date: "8 Sep",
        itemsCount: 3,
        status: "New",
        statusColor: Color(0xff28B0E8),
        iconBgColor: Colors.red,
      ),
    ];
    return Column(
      children: [
        SizedBox(height: MediaQuery.sizeOf(context).height * .01),

        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              bool isPortrait =
                  MediaQuery.of(context).orientation == Orientation.portrait;

              return isPortrait
                  ? ListView.builder(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      itemCount: ordersList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OrderTrakingScreen(),
                              ),
                            );
                          },
                          child: ordersList[index],
                        );
                      },
                    )
                  : GridView.builder(
                      padding: EdgeInsets.all(16),
                      itemCount: ordersList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: portraitHeight(context) * .017,
                        crossAxisSpacing: portraitWidth(context) * .037,
                        childAspectRatio: 3.2,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OrderTrakingScreen(),
                              ),
                            );
                          },
                          child: ordersList[index],
                        );
                      },
                    );
            },
          ),
        ),
      ],
    );
  }
}
