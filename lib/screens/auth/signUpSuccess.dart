import 'dart:async';

import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpSuccess extends StatefulWidget {
  @override
  _SignUpSuccessState createState() => _SignUpSuccessState();
}

class _SignUpSuccessState extends State<SignUpSuccess> {
  splashDuration() {
    //todo look it Splash Screen Duration
    Timer(Duration(seconds: 3), () {
      //todo Change this to OnBoardingScreen
      Get.to(HomePage());
    });
  }

  @override
  void initState() {
    super.initState();
    splashDuration();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/check.png'),
              displaySizedBox(height: 32),
              Text(
                'You are Set!',
                style: kTextStyle.copyWith(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
