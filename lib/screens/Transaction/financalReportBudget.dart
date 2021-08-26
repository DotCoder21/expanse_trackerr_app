import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/financialReportClass.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class FinancialReportBudget extends StatefulWidget {
 

  @override
  _FinancialReportBudgetState createState() => _FinancialReportBudgetState();
}

class _FinancialReportBudgetState extends State<FinancialReportBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blueColor ,
      body:  Container(
        padding: EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: FinancialReportClass(
          top: Text('This Month',style: kTextStyle.copyWith(color: AppColor.lightTextColor,fontSize: 24,fontWeight: FontWeight.w600,),),
          middle: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
             child: Column(
               children: [
                 Text('2 of 12 Budget is exceeds the limit',style: kTextStyle.copyWith(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w700,),textAlign: TextAlign.center,),
                displaySizedBox(height: 10),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
displaySmallButton('assets/images/Frame 5.png','Shopping'),
displaySizedBox(width: 5),
displaySmallButton('assets/images/Food 5.png','Food'),

                 ],
               )
                //  Text('\$ 6000',style: kTextStyle.copyWith(color: Colors.white,fontSize: 64,fontWeight: FontWeight.w700,),),
               ],
             ),
           ) ,
          end: displaySizedBox()
        )),
      
    );
  }

 
}