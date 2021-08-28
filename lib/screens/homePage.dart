import 'dart:ui';

import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Utils/data.dart';
import 'package:expensemanager/Widgets/lineChart.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/screens/Add_To_Home/newExpense.dart';
import 'package:expensemanager/screens/Add_To_Home/newIncome.dart';
import 'package:expensemanager/screens/Add_To_Home/newTranfer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radial_button/widget/circle_floating_button.dart';

import 'Notification/notification.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var time = ['Today', 'Week', 'Month', 'Year'];

  List<Widget> itemsActionBar;
  GlobalKey<CircleFloatingButtonState> key01 =
      GlobalKey<CircleFloatingButtonState>();
  fechar() {
    key01.currentState.close();
  }

  @override
  void initState() {
    itemsActionBar = [
      FloatingActionButton(
        heroTag: UniqueKey(),
        backgroundColor: Colors.greenAccent,
        onPressed: fechar,
        child: InkWell(
          onTap: () {
            Get.to(() => NewIncome());
          },
          child: Image.asset(
            'assets/images/greenCamera.png',
          ),
        ),
      ),
      FloatingActionButton(
        heroTag: UniqueKey(),
        backgroundColor: Colors.indigoAccent,
        onPressed: fechar,
        child: InkWell(
            onTap: () {
              Get.to(() => NewTransfer());
            },
            child: Image.asset('assets/images/transactionimage.png')),
      ),
      FloatingActionButton(
        heroTag: UniqueKey(),
        backgroundColor: Colors.orangeAccent,
        onPressed: fechar,
        child: InkWell(
            onTap: () {
              Get.to(() => NewExpense());
            },
            child: Image.asset('assets/images/Camera.png')),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 18, top: 28, right: 18),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset('assets/icons/05.png'),
                      Container(
                        height: Get.height * 0.038,
                        width: Get.width * 0.25,
                        // height: 35,
                        // width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            border:
                                Border.all(color: AppColor.lightVioletColor)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.keyboard_arrow_down_outlined),
                              Text('October'),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Get.to(() => NotificationScreen());
                          },
                          child: Image.asset('assets/icons/notifiaction.png')),
                    ],
                  ),
                ),
                displaySizedBox(
                  height: Get.height * 0.012,
                  //height: 9,
                ),
                Text(
                  'Account Balance',
                  style: kTextStyle.copyWith(
                      fontSize: 14, color: AppColor.lightTextColor),
                ),
                displaySizedBox(height: 9),
                Text(
                  '\$100',
                  style: kTextStyle.copyWith(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
                displaySizedBox(
                  height: Get.height * 0.03,
                  // height: 27
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    incomeExpenceContainers(AppColor.greenColor,
                        'assets/icons/group1.png', 'Income', 500),
                    incomeExpenceContainers(AppColor.redColor,
                        'assets/icons/group2.png', 'Expences', 400),
                  ],
                ),
                displaySizedBox(height: Get.height * 0.027),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Spend Frequency',
                    style: kTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                displaySizedBox(height: Get.height * 0.01),
                LineChartt(),
                Container(
                  height: Get.height * 0.040,
                  child: ListView.builder(
                    itemCount: time.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Container(
                          height: Get.height * 0.038,
                          width: Get.width * 0.21,
                          decoration: BoxDecoration(
                              color: AppColor.lightYellowColor,
                              borderRadius: BorderRadius.circular(29)),
                          child: Center(
                              child: Text(
                            time[index],
                            style: kTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AppColor.yellowColor),
                          )),
                        ),
                      );
                    },
                  ),
                ),
                displaySizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Resent Transection',
                        style: kTextStyle.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Container(
                      height: Get.height * 0.038,
                      width: Get.width * 0.2,
                      // height: 32,
                      // width: 78,
                      decoration: BoxDecoration(
                        color: AppColor.lightVioletColor,
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Center(
                        child: Text(
                          'See All',
                          style: kTextStyle.copyWith(
                              color: AppColor.violetColor, fontSize: 14),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: Get.height,
                  child: ListView.builder(
                      itemCount: cardList.length,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: Container(
                            height: Get.height * 0.12,

                            // height: 89,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            decoration: BoxDecoration(
                                // color: AppColor.lightTextColor,
                                //  color: Colors.green,
                                color: AppColor.cardBackGroundColor,
                                borderRadius: BorderRadius.circular(24)),
                            child: Row(
                              // crossAxisAlignment: CrossAxisAlignment.,

                              children: [
                                Container(
                                    child: Image.asset(cardList[i]['image'])),
                                displaySizedBox(width: 19),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      cardList[i]['title'],
                                      style: kTextStyle.copyWith(fontSize: 16),
                                    ),
                                    Text(
                                      cardList[i]['subTitle'],
                                      style: kTextStyle.copyWith(
                                          color: AppColor.lightTextColor,
                                          fontSize: 13),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      cardList[i]['price'],
                                      style: kTextStyle.copyWith(
                                          color: AppColor.redColor,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      cardList[i]['time'],
                                      style: kTextStyle.copyWith(
                                          color: AppColor.lightTextColor,
                                          fontSize: 13),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                // FloatingActionButtonLocation.centerDocked,
              ],
            ),
          ),
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CircleFloatingButton.floatingActionButton(
        //  position: Position.left,
        key: key01,
        items: itemsActionBar,
        color: AppColor.violetColor,
        icon: Icons.add,
        duration: Duration(milliseconds: 1000),
        curveAnim: Curves.ease,
      ),
    );
  }

  Container incomeExpenceContainers(
      Color color, String image, String text, double price) {
    return Container(
      height: Get.height * 0.1,
      //height: 88,
      width: Get.width * 0.4,
      //width: 164,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(28)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          displaySizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: kTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                '\$${price.toString()}',
                style: kTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
