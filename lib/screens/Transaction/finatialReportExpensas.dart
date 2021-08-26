import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/financialReportClass.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class FinancialReportExpense extends StatefulWidget {
 

  @override
  _FinancialReportExpenseState createState() => _FinancialReportExpenseState();
}

class _FinancialReportExpenseState extends State<FinancialReportExpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.redColor ,
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: FinancialReportClass(
          top: Text('This Month',style: kTextStyle.copyWith(color: AppColor.lightTextColor,fontSize: 24,fontWeight: FontWeight.w600,),),
          middle: Container(
             child: Column(
               children: [
                 Text('You Spend 💸',style: kTextStyle.copyWith(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w700,),),
                displaySizedBox(height: 10),
                 Text('\$332',style: kTextStyle.copyWith(color: Colors.white,fontSize: 64,fontWeight: FontWeight.w700,),),
               ],
             ),
           ) ,
          end: Container(
            width: Get.width*0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              
            ),
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('and your biggest spending is from',style: kTextStyle.copyWith(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w600,),textAlign: TextAlign.center,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    displaySmallButton('assets/images/Frame 5.png','Shopping'),
                  ],
                ),
                Text('\$ 120',style: kTextStyle.copyWith(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w600,),textAlign: TextAlign.center,),
              ],
            ),
           ),
        )),
      
    );
  }
}