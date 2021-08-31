import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/textField.dart';
import 'package:expensemanager/screens/auth/setUpAccount.dart';
import 'package:expensemanager/screens/auth/signUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'forgotPassword.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isObseure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: buildAppBar(title: 'Sign In', color: Colors.black),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.084,
              //height: 72,
            ),
            displayTextField(
              labelText: 'Email',
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
                labelText: 'Name',
                keyboardType: TextInputType.name,
                savedHandler: (val) {},
                validaterHandler: (val) {
                  return (val.isEmpty) ? "*Required" : null;
                },
                obsecureText: isObseure,
                suffixIcon: IconButton(
                    icon: Icon(isObseure
                        ? Icons.visibility_off_rounded
                        : Icons.remove_red_eye_outlined),
                    onPressed: () {
                      isObseure = !isObseure;
                      setState(() {});
                    })),
            SizedBox(
              height: Get.height * 0.046,
              // height: 40,
            ),
            Button(
              onTap: () {
                Get.to(() => SetUpAccount());
              },
              buttonText: 'Log In',
              widthPercent: double.infinity,
              buttonColor: AppColor.violetColor,
              textColor: AppColor.lightVioletColor,
            ),
            SizedBox(
              height: Get.height * 0.033,
              //height: 33,

              // height: 40,
            ),
            InkWell(
              onTap: () {
                Get.to(() => ForgotPassword());
              },
              child: Text(
                'Forgot Password?',
                style: kTextStyle.copyWith(
                    color: AppColor.violetColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: Get.height * 0.044,
              //height: 38,
            ),
            InkWell(
              onTap: () {
                Get.to(() => SignUpScreen());
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
