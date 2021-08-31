import 'dart:async';

import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/screens/onBoarding/OnBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashDuration() {
    //todo look it Splash Screen Duration
    Timer(Duration(seconds: 3), () {
      //todo Change this to OnBoardingScreen
      Get.to(OnBoarding());
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
    // MySize().init(context);

    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          color: AppColor.violetColor,
          image:
              DecorationImage(image: AssetImage('assets/images/Ellipse.png'))),
      child: Center(
        child: Text('Expencer',
            style: kTextStyle.copyWith(
                fontSize: 56,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
    ));
  }
}
