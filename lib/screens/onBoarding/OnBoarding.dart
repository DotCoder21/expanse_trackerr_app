import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/screens/auth/signInScreen.dart';
import 'package:expensemanager/screens/auth/signUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<Widget> pages = [
   

  ];

  @override
    void initState() {
      pages.add( displayOnBoardingScreen('assets/images/Illustration1.png', 'Gain total control of your money', 'Become your own money manager and make every cent count'),);
      pages.add( displayOnBoardingScreen('assets/images/Illustration2.png', 'Know where your money goes', 'Track your transaction easily,with categories and financial report '),);
      pages.add( displayOnBoardingScreen('assets/images/Illustration3.png', 'Planning ahead', 'Setup your budget for each category so you in control'),);
      super.initState();
    }
    int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Expanded(
              // height: Get.height*0.73,
              child: Container(
                child: Stack(
                  children: [
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: pages.length,
                      onPageChanged: (val){
                        currentIndex = val;
                        setState(() {
                                                  
                                                });
                      },
                      itemBuilder: (context,i){
                        return pages[i];
                      }),

                       Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(pages.length, (i) {
                    return currentIndex == i?
                     Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.violetColor
                              ),
                    ):Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: 
                               Colors.grey.withOpacity(0.2)),
                    );
                  }).toList(),
                ),
              ),
            ),
                  ],
                ),
              ),
            ),
           
            Container(
              height: Get.height*0.28,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    buttonColor: AppColor.violetColor,
                    buttonText: 'Sign Up',
                    onTap: () {
                      Get.to(()=>SignUpScreen());
                    },
                    textColor: AppColor.lightVioletColor,
                    widthPercent: 0.9,
                  ),
                  Button(
                    buttonColor: AppColor.lightVioletColor,
                    buttonText: 'Login',
                    onTap: () {
                        Get.to(()=>SignInScreen());
                    },
                    textColor: AppColor.violetColor,
                    widthPercent: 0.9,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container displayOnBoardingScreen(String imgPath,String title,String subTitle) {
    return Container(
            // height: Get.height * 0.72,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                height: Get.width *0.7,
                width: Get.width *0.7,
                decoration: BoxDecoration(

                  image: DecorationImage(
                    image: AssetImage(imgPath))
                ),
                ),
                Text(title,style: kTextStyle.copyWith(fontSize: 32,fontWeight: FontWeight.w700,),textAlign: TextAlign.center,),
                Text(subTitle,style: kTextStyle.copyWith(color: AppColor.lightTextColor,fontSize: 16,),textAlign: TextAlign.center,),
                displaySizedBox(height: 5)
              ],
            ),
          );
  }
}
