import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Widgets/bottomSheet.dart';
import 'package:expensemanager/Widgets/dialogues.dart';
import 'package:expensemanager/Widgets/transectionDetail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class ExpenceDetailTransection extends StatefulWidget {
 

  @override
  _ExpenceDetailTransectionState createState() => _ExpenceDetailTransectionState();
}

class _ExpenceDetailTransectionState extends State<ExpenceDetailTransection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TransectionDeatail(
        appBarText: 'Detail Transaction',
        balance: '300',
        topColor: AppColor.redColor,
        deleteHandler: (){
          displayTranSuccessful('Remove this transaction?', 'Are you sure do you wanna remove this transaction?', (){
    Get.back();
    gisplaySuccessfulDialogue();},
     (){
    Get.back();
  }
  );
        },
        category: 'Shopping',
        description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
        editHandler: (){},
        imgPath: 'assets/images/Illustration2.png',
        subTitle: 'Saturday 4 June 2021  16:20',
        title: 'Buy some grocery',
        type: 'Expense',
        wallet: 'Wallet',
      ),
    );
  }
}