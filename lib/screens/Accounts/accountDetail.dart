import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class AccountDetail extends StatefulWidget {
  @override
  _AccountDetailState createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  var cardList = [
    {
      'image': 'assets/images/Frame 5.png',
      'title': 'Shopping',
      'subTitle': 'By Some Grosary',
      'price': '\$112',
      'time': '10:00 AM',
    },
    {
      'image': 'assets/images/Subscribtion 5.png',
      'title': 'Subscription',
      'subTitle': 'Disney+ Annual..',
      'price': '\$112',
      'time': '10:00 AM',
    },
    {
      'image': 'assets/images/Food 5.png',
      'title': 'Food',
      'subTitle': 'Buy a ramen',
      'price': '\$112',
      'time': '10:00 AM',
    },
    {
      'image': 'assets/images/Frame 5.png',
      'title': 'Salary',
      'subTitle': 'Salary for July',
      'price': '\$112',
      'time': '10:00 AM',
    },
    {
      'image': 'assets/images/transportation 5.png',
      'title': 'Transportation',
      'subTitle': 'Charging Tesla',
      'price': '\$112',
      'time': '10:00 AM',
    },
    {
      'image': 'assets/images/transportation 5.png',
      'title': 'Transportation',
      'subTitle': 'Charging Tesla',
      'price': '\$112',
      'time': '10:00 AM',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'Detail Account',
          style: kTextStyle.copyWith(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ImageIcon(
              AssetImage('assets/icons/pen.png'),
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            // height: Get.height,
            width: Get.width,
            child: Column(
              children: [
                displaySizedBox(height: Get.height * 0.04),
                Image.asset(
                  'assets/images/paypal.png',
                ),
                displaySizedBox(height: Get.height * 0.01),
                Text(
                  'PayPal',
                  style: kTextStyle.copyWith(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                displaySizedBox(height: Get.height * 0.014),
                Text(
                  '\$200',
                  style: kTextStyle.copyWith(
                      fontSize: 32, fontWeight: FontWeight.bold),
                ),
                displaySizedBox(height: Get.height * 0.058),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Today',
                    style: kTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                displaySizedBox(height: Get.height * 0.02),
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
              ],
            )),
      ),
    );
  }
}
