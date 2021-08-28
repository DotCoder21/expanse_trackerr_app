import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/financialReportClass.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/screens/Transaction/financialReportDetail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FinancialReportQuete extends StatefulWidget {
  @override
  _FinancialReportQueteState createState() => _FinancialReportQueteState();
}

class _FinancialReportQueteState extends State<FinancialReportQuete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blueColor,
      body: Container(
          padding: EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: FinancialReportClass(
              top: Text(
                '',
                style: kTextStyle.copyWith(
                  color: AppColor.lightTextColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              middle: Container(
                child: Column(
                  children: [
                    Text('“Financial freedom is freedom from fear.”',
                        style: kTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center),
                    displaySizedBox(height: 10),
                    Text(
                      '-Robert Kiyosaki',
                      style: kTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              end: Button(
                buttonColor: Colors.white,
                buttonText: 'See the full detail',
                onTap: () {
                  Get.to(() => FinancialReportDetails());
                },
                textColor: AppColor.blueColor,
                widthPercent: 0.8,
              ))),
    );
  }
}
