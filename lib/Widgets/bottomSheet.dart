import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


Widget displayTranSuccessful(String title,String subTitle,Function yesHandler,Function noHandler){
  Get.bottomSheet(
  Container(
    height: Get.height * 0.3,
    width: Get.width,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title,
          style: kTextStyle.copyWith(
              color: Colors.black, fontSize: 18),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            subTitle,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: kTextStyle.copyWith(
                color: AppColor.lightTextColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(
              buttonColor: AppColor.lightVioletColor,
              buttonText: 'No',
              onTap: noHandler,
              textColor: AppColor.violetColor,
              widthPercent: 0.43,
            ),
            Button(
              buttonColor: AppColor.violetColor,
              buttonText: 'Yes',
              onTap: yesHandler,
              textColor: AppColor.lightVioletColor,
              widthPercent: 0.43,
            ),
          ],
        )
      ],
    ),
  ),
);
}