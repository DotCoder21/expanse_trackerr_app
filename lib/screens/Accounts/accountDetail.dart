import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Utils/data.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/screens/Accounts/editAccount.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class AccountDetail extends StatefulWidget {
  final image;
  final text;
  final amount;
  AccountDetail({this.image, this.text, this.amount});
  @override
  _AccountDetailState createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
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
          InkWell(
            onTap: () {
              Get.to(() => EditAccount());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ImageIcon(
                AssetImage('assets/icons/pen.png'),
                color: Colors.black,
              ),
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
                  widget.image,
                ),
                displaySizedBox(height: Get.height * 0.01),
                Text(
                  widget.text,
                  style: kTextStyle.copyWith(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                displaySizedBox(height: Get.height * 0.014),
                Text(
                  '\$ ${widget.amount.toString()}',
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
                              horizontal: 0, vertical: 5.0),
                          child: Container(
                            height: Get.height * 0.12,

                            // height: 89,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                                // color: AppColor.lightTextColor,
                                color: Colors.grey.withOpacity(0.09),
                                // color: AppColor.cardBackGroundColor,
                                borderRadius: BorderRadius.circular(16)),
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
                                      style: kTextStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 5.0),
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
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 1.0),
                                    ),
                                    SizedBox(height: 5.0),
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
