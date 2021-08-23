import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/textField.dart';
import 'package:expensemanager/screens/auth/setUpAccount.dart';
import 'package:expensemanager/screens/auth/setUpPin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Reset Password', Colors.black),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.084,
              //height: 72,
            ),
            displayTextField(
              labelText: 'New password',
              keyboardType: TextInputType.name,
              savedHandler: (val) {},
              validaterHandler: (val) {
                return (val.isEmpty) ? "*Required" : null;
              },
            ),
            SizedBox(
              height: Get.height * 0.026,
            ),
            displayTextField(
              labelText: 'Retype new Password',
              keyboardType: TextInputType.name,
              savedHandler: (val) {},
              validaterHandler: (val) {
                return (val.isEmpty) ? "*Required" : null;
              },
            ),
            SizedBox(
              height: Get.height * 0.046,
              // height: 40,
            ),
            InkWell(
              onTap: () {
                Get.to(() => SetUpPin());
              },
              child: Button(
                onTap: () {
                  Get.to(() => SetUpAccount());
                },
                buttonText: 'Log In',
                widthPercent: double.infinity,
                buttonColor: AppColor.violetColor,
                textColor: AppColor.lightVioletColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
