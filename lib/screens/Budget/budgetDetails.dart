import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/bottomSheet.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/screens/Budget/budget.dart';
import 'package:expensemanager/screens/Budget/editBudget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BudgetDetail extends StatefulWidget {
  @override
  _BudgetDetailState createState() => _BudgetDetailState();
}

class _BudgetDetailState extends State<BudgetDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            displaySizedBox(height: Get.height * 0.07),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Detail budget',
                  style: kTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    displayTranSuccessful('Remove this budget?',
                        'Are you sure you want to remove this budget?', () {
                      Get.to(() => BudgetScreen());
                    }, () {
                      Get.back();
                    });
                  },
                  child: Icon(
                    Icons.delete,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            displaySizedBox(height: Get.height * 0.037),
            Container(
              height: Get.height * 0.066,
              width: Get.width * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColor.lightTextColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: Get.height * 0.8,
                      width: Get.width * 0.1,
                      child: Image.asset('assets/images/Frame 5.png')
                      // decoration: BoxDecoration(
                      //     color: Colors.yellow, shape: BoxShape.circle),
                      ),
                  Text(
                    'Shopping',
                    style: kTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            displaySizedBox(height: Get.height * 0.037),
            Text(
              'Remembering',
              style: kTextStyle.copyWith(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            displaySizedBox(height: Get.height * 0.004),
            Text(
              '\$0.0',
              style: kTextStyle.copyWith(
                  fontSize: 64, fontWeight: FontWeight.bold),
            ),
            displaySizedBox(height: Get.height * 0.02),
            Container(
                alignment: Alignment.topCenter,
                //color: AppColor.yellowColor,

                margin: EdgeInsets.all(20),
                child: LinearProgressIndicator(
                  color: AppColor.yellowColor,
                  minHeight: 7,
                  value: 1,
                )),
            Container(
              width: Get.height * 0.27,
              height: Get.height * 0.05,
              decoration: BoxDecoration(
                  color: AppColor.redColor,
                  borderRadius: BorderRadius.circular(24)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.error,
                    color: Colors.white,
                  ),
                  Text(
                    'You are exceed the limit',
                    style:
                        kTextStyle.copyWith(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
            Spacer(),
            Button(
              onTap: () {
                Get.to(() => EditBudget());
              },
              buttonText: 'Edit',
              widthPercent: double.infinity,
              buttonColor: AppColor.violetColor,
              textColor: AppColor.lightVioletColor,
            ),
            displaySizedBox(height: Get.height * 0.03)
          ],
        ),
      ),
    );
  }
}
