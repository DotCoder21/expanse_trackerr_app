import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool checkBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Get.height * 0.07),
        child: Align(
          alignment: Alignment.center,
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            title: Text(
              'Sign Up',
              style: kTextStyle.copyWith(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.07,
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
              height: Get.height * 0.026,
            ),
            Container(
              color: Colors.grey,
              height: Get.height * 0.07,
              //height: 56,
              width: double.infinity,
            ),
            Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    activeColor: AppColor.violetColor,
                    value: checkBox,
                    onChanged: (bool value) {
                      setState(() {
                        checkBox = value;
                      });
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
