import 'package:expensemanager/Widgets/buildAppBar.dart';
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
      appBar: buildAppBar('Reset Password'),
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
            InkWell(
              onTap: () {
                Get.to(() => SetUpPin());
              },
              child: Container(
                color: Colors.grey,
                height: Get.height * 0.07,
                //height: 56,
                width: double.infinity,
                child: Center(child: Text('Continue')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
