import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/screens/Budget/createBudget.dart';
import 'package:expensemanager/screens/auth/addNewBankAccount.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmptyState extends StatefulWidget {
  @override
  _EmptyStateState createState() => _EmptyStateState();
}

class _EmptyStateState extends State<EmptyState> {
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
          // mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.start,
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'You dont have a budget.\nLets make one so you are in control',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: kTextStyle.copyWith(
                          color: AppColor.lightTextColor, fontSize: 16),
                    ),
                    // Spacer(),
                    displaySizedBox(height: Get.height * 0.3),
                    Button(
                      onTap: () {
                        Get.to(() =>  CreateBudget());
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
}
