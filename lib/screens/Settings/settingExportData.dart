import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingExportData extends StatefulWidget {
  @override
  _SettingExportDataState createState() => _SettingExportDataState();
}

class _SettingExportDataState extends State<SettingExportData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Export Data', color: Colors.black),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            displaySizedBox(height: Get.height * 0.04),
            Text('What data do you want to export?'),
            displaySizedBox(height: Get.height * 0.014),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColor.lightTextColor)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('All'),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColor.lightTextColor,
                  ),
                ],
              ),
            ),
            displaySizedBox(height: Get.height * 0.026),
            Text('What date Range'),
            displaySizedBox(height: Get.height * 0.014),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColor.lightTextColor)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('All'),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColor.lightTextColor,
                  ),
                ],
              ),
            ),
            displaySizedBox(height: Get.height * 0.026),
            Text('What date Range'),
            displaySizedBox(height: Get.height * 0.014),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColor.lightTextColor)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('All'),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColor.lightTextColor,
                  ),
                ],
              ),
            ),
            Spacer(),
            Button(
              widthPercent: double.infinity,
              buttonColor: AppColor.violetColor,
              buttonText: 'Sign Up',
              onTap: () {
                // Get.to(()=>SignUpScreen());
              },
            ),
            displaySizedBox(height: Get.height * 0.05),
          ],
        ),
      ),
    );
  }
}
