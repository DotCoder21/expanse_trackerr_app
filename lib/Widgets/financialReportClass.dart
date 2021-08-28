import 'package:flutter/material.dart';
import 'package:get/get.dart';


class FinancialReportClass extends StatelessWidget {
  Widget top,middle,end;
  FinancialReportClass({this.top,this.middle,this.end});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Column(
         children: [
           top,
           Spacer(),
          middle,
           Spacer(),
           end,
         ],
      ),
    );
  }
}