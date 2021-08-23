import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
import 'package:expensemanager/screens/auth/forgotPasswor_emailSend.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Forgot Password'),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.095,
              //height: 85,
            ),
            Text(
              'Don\'t worry.\nEnter your email and we will\nsend you a link to set your\npassword.',
              textAlign: TextAlign.start,
              maxLines: 4,
              style: kTextStyle.copyWith(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Get.height * 0.05,
              //  height: 46,
            ),
            Container(
              color: Colors.grey,
              height: Get.height * 0.07,
              //height: 56,
              width: double.infinity,
            ),
            SizedBox(
              height: Get.height * 0.037,
              // height: 32,
            ),
            InkWell(
              onTap: () {
                Get.to(() => ForgotPasswordEmailSend());
              },
              child: Container(
                color: Colors.grey,
                height: Get.height * 0.07,
                //height: 56,
                width: double.infinity,
                child: Center(child: Text('Countious')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
