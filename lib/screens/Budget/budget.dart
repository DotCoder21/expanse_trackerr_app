import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/screens/Budget/createBudget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BudgetScreen extends StatefulWidget {
  @override
  _BudgetScreenState createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.violetColor,
      // appBar: buildAppBar('Add New Account', Colors.white),
      body: Container(
        color: AppColor.violetColor,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            displaySizedBox(height: Get.height * 0.09),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  Text(
                    'May',
                    style:
                        kTextStyle.copyWith(color: Colors.white, fontSize: 24),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Spacer(),
            displaySizedBox(height: Get.height * 0.01),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
              ),
              height: Get.height * 0.8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    displaySizedBox(height: Get.height * 0.038),
                    BudgetDetails(
                        title: 'Shopping',
                        amount: 100,
                        icon: Icons.error,
                        firstAmount: 1200,
                        lastAmount: 1000,
                        color: AppColor.yellowColor,
                        progressValue: 1,
                        progressColor: AppColor.yellowColor),
                    BudgetDetails(
                        title: 'Transportation',
                        amount: 100,
                        firstAmount: 1200,
                        lastAmount: 1000,
                        color: AppColor.violetColor,
                        progressValue: 0.8,
                        progressColor: AppColor.violetColor),
                    Button(
                      onTap: () {
                        Get.to(() => CreateBudget());
                      },
                      buttonText: 'Continue',
                      widthPercent: double.infinity,
                      buttonColor: AppColor.violetColor,
                      textColor: AppColor.lightVioletColor,
                    ),
                    displaySizedBox(height: Get.height * 0.033),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container BudgetDetails({
    String title,
    IconData icon,
    double amount,
    double firstAmount,
    double lastAmount,
    Color color,
    double progressValue,
    Color progressColor,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: Get.height * 0.036,
                width: Get.width * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: Get.height * 0.03,
                      width: Get.width * 0.03,
                      decoration:
                          BoxDecoration(color: color, shape: BoxShape.circle),
                    ),
                    Text(title),
                  ],
                ),
              ),
              Icon(
                icon,
                color: AppColor.redColor,
              ),
            ],
          ),
          Text(
            'Remembering \$$amount',
            style:
                kTextStyle.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            '\$$firstAmount of \$$lastAmount',
            style: kTextStyle.copyWith(
                fontSize: 16, color: AppColor.lightTextColor),
          ),
          Text(
            'You have exceed the limit',
            style: kTextStyle.copyWith(fontSize: 14, color: AppColor.redColor),
          ),
          Container(
              alignment: Alignment.topCenter,
              //color: AppColor.yellowColor,

              margin: EdgeInsets.all(20),
              child: LinearProgressIndicator(
                color: progressColor,
                minHeight: 7,
                value: progressValue,
              )),
        ],
      ),
    );
  }
}
