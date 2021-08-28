import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/screens/Transaction/financalReportBudget.dart';
import 'package:expensemanager/screens/Transaction/financalReportIncome.dart';
import 'package:expensemanager/screens/Transaction/financalReportQuote.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'finatialReportExpensas.dart';


class FinancialReportAll extends StatefulWidget {

  @override
  _FinancialReportAllState createState() => _FinancialReportAllState();
}

class _FinancialReportAllState extends State<FinancialReportAll> {
var pagesList=[
  {
    'color': AppColor.redColor,
    'widget': FinancialReportExpense()
  },
   {
    'color': AppColor.greenColor,
    'widget': FinancialReportIncome()
  },
   {
    'color': AppColor.blueColor,
    'widget': FinancialReportBudget()
  },
   {
    'color': AppColor.blueColor,
    'widget': FinancialReportQuete()
  },
  
];
Color myBackGround =AppColor.redColor;
int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackGround,
      body: 
      Container(
        height: Get.height,
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              height: 80,
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  displayLine(0),
                  displayLine(1),
                  displayLine(2),
                  displayLine(3),
                ],
              )
            ),
            Expanded(
              child: Container(
                child: PageView.builder(
                  itemCount: pagesList.length,
                  onPageChanged: (i){
                    currentIndex =i;
                    myBackGround = pagesList[i]['color'];
                    setState(() {
                      
                    });
                  },
                  itemBuilder: (context,index){
                    return pagesList[index]['widget'];
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded displayLine(int index) {
    return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: Container(height: 4,
                color:(index==currentIndex)? Colors.white:Colors.grey,
                ),
                  ),);
  }
}