import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/screens/auth/resetPassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordEmailSend extends StatefulWidget {
  @override
  _ForgotPasswordEmailSendState createState() =>
      _ForgotPasswordEmailSendState();
}

class _ForgotPasswordEmailSendState extends State<ForgotPasswordEmailSend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColor.backgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.037,
              //height: 32,
            ),
            Image.asset(
              'assets/images/Illustration.png',
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: Get.height * 0.02,
              // height: 18,
            ),
            Text(
              'Your Email is on the Way',
              style: kTextStyle.copyWith(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Get.height * 0.027,
              // height: 24,
            ),
            Text(
              'Check your email test@text.com and\n follow the instruction to resend the\npassword',
              textAlign: TextAlign.center,
              style: kTextStyle.copyWith(fontSize: 16),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                Get.to(() => ResetPassword());
              },
              child: Button(
                onTap: () {
                  Get.to(() => ResetPassword());
                },
                buttonText: 'Go to Log In',
                widthPercent: double.infinity,
                buttonColor: AppColor.violetColor,
                textColor: AppColor.lightVioletColor,
              ),
            ),
            SizedBox(
              height: Get.height * 0.058,
              //height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
