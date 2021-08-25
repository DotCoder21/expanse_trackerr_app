import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/textField.dart';
import 'package:expensemanager/screens/auth/signInScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool checkBox = false;
  bool isObseure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: buildAppBar('Sign Up', Colors.black),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.07,
              ),
              displayTextField(
                labelText: 'Name',
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
                  labelText: 'Password',
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
                height: Get.height * 0.02,
                //height: 17,
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
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'By signing up you agree to the',
                          style: kTextStyle.copyWith(
                              color: Colors.black, fontSize: 14)),
                      TextSpan(
                          text: 'The term \n of services and privacy policy',
                          style: kTextStyle.copyWith(
                              color: AppColor.violetColor, fontSize: 14)),
                    ]),
                  )
                ],
              ),
              SizedBox(
                height: 27,
              ),
              Button(
                onTap: () {},
                buttonText: 'Sign Up',
                widthPercent: double.infinity,
                buttonColor: AppColor.violetColor,
                textColor: AppColor.lightVioletColor,
              ),
              // Container(
              //   color: Colors.grey,
              //   height: Get.height * 0.07,
              //   //height: 56,
              //   width: double.infinity,
              //   child: Center(child: Text('Sign Up')),
              // ),
              SizedBox(
                height: Get.height * 0.018,
                // height: 12,
              ),
              Text(
                'or with',
                style: kTextStyle.copyWith(
                    color: AppColor.lightTextColor, fontSize: 14),
              ),
              SizedBox(
                // height: Get.height * 0.018,
                height: 29,
              ),
              Container(
                width: double.infinity,
                height: Get.height * 0.075,
                // height: 56,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        height: Get.height * 0.036,
                        // height: 32,
                        width: Get.width * 0.09,
                        //width: 32,
                      ),
                      SizedBox(
                        width: Get.width * 0.01,
                        //width: 10,
                      ),
                      Text(
                        'Sign Up with Google',
                        style: kTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => SignInScreen());
                },
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Allready have account?',
                        style: kTextStyle.copyWith(
                            color: AppColor.lightTextColor, fontSize: 16)),
                    TextSpan(
                        text: 'LogIn',
                        style: kTextStyle.copyWith(
                            color: AppColor.violetColor, fontSize: 16)),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
