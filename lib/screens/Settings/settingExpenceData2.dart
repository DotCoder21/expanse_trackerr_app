import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpanseDataSecond extends StatefulWidget {
  @override
  _ExpanseDataSecondState createState() => _ExpanseDataSecondState();
}

class _ExpanseDataSecondState extends State<ExpanseDataSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: Get.width,
        height: Get.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            displaySizedBox(height: Get.height * 0.038),
            Image.asset(
              'assets/images/Illustration.png',
              fit: BoxFit.fill,
            ),
            displaySizedBox(height: Get.height * 0.027),
            Container(
              child: Text(
                'Check your email, we send you the financial\nreport. In certain cases, it might take a little\nlonger, depending on the time period\nand the volume of activity.',
                maxLines: 4,
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            Button(
              onTap: () {
                // Get.to(() => ForgotPasswordEmailSend());
              },
              buttonText: 'Continue',
              widthPercent: double.infinity,
              buttonColor: AppColor.violetColor,
              textColor: AppColor.lightVioletColor,
            ),
            displaySizedBox(height: Get.height * 0.05)
          ],
        ),
      ),
    );
  }
}
