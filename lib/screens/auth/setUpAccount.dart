import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'addNewAccount.dart';

class SetUpAccount extends StatefulWidget {
  @override
  _SetUpAccountState createState() => _SetUpAccountState();
}

class _SetUpAccountState extends State<SetUpAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: Get.height * 0.095,
            //   //height: 85,
            // ),
            displaySizedBox(height: Get.height * 0.095),

            Text(
              'Let\'s set up your\naccount!',
              textAlign: TextAlign.start,
              maxLines: 4,
              style: kTextStyle.copyWith(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            displaySizedBox(height: Get.height * 0.038),
            Text('Account Can be your bank credit card or\nyour wallet'),
            Spacer(),

            Button(
              onTap: () {
                Get.to(() => AddNewAccount());
              },
              buttonText: 'Lets go',
              widthPercent: double.infinity,
              buttonColor: AppColor.violetColor,
              textColor: AppColor.lightVioletColor,
            ),
            displaySizedBox(
              //height: 50,
              height: Get.height * 0.057,
            ),
          ],
        ),
      ),
    );
  }
}
