import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'forgotPassword.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Sign In'),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.084,
              //height: 72,
            ),
            Container(
              color: Colors.grey,
              height: Get.height * 0.07,
              //height: 56,
              width: double.infinity,
            ),
            SizedBox(
              height: Get.height * 0.026,
            ),
            Container(
              color: Colors.grey,
              height: Get.height * 0.07,
              //height: 56,
              width: double.infinity,
            ),
            SizedBox(
              height: Get.height * 0.046,
              // height: 40,
            ),
            Container(
              color: Colors.grey,
              height: Get.height * 0.07,
              //height: 56,
              width: double.infinity,
              child: Center(child: Text('Sign In')),
            ),
            SizedBox(
              //height: Get.height * 0.033,
              height: 33,

              // height: 40,
            ),
            Text(
              'Forgot Password?',
              style: kTextStyle.copyWith(
                  color: AppColor.violetColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Get.height * 0.044,
              //height: 38,
            ),
            InkWell(
              onTap: () {
                Get.to(() => ForgotPassword());
              },
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Don\'t have an account yet.',
                    style: kTextStyle.copyWith(
                        color: AppColor.lightTextColor, fontSize: 16)),
                TextSpan(
                    text: 'Sign Up',
                    style: kTextStyle.copyWith(
                        color: AppColor.violetColor,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColor.violetColor)),
              ])),
            )
          ],
        ),
      ),
    );
  }
}
