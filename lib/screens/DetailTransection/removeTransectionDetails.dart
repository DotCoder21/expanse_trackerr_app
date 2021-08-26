import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Widgets/bottomSheet.dart';
import 'package:expensemanager/Widgets/dialogues.dart';
import 'package:expensemanager/Widgets/transectionDetail.dart';
import 'package:expensemanager/screens/DetailTransection/transferTransectionDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RemoveDetailTransection extends StatefulWidget {
  @override
  _RemoveDetailTransectionState createState() =>
      _RemoveDetailTransectionState();
}

class _RemoveDetailTransectionState extends State<RemoveDetailTransection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TransectionDeatail(
        appBarText: 'Detail Transaction',
        balance: '300',
        topColor: AppColor.greenColor,
        deleteHandler: () {
          displayTranSuccessful('Remove this transaction?',
              'Are you sure do you wanna remove this transaction?', () {
            Get.back();
            gisplaySuccessfulDialogue();
          }, () {
            Get.back();
          });
        },
        category: 'Shopping',
        description:
            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
        editHandler: () {
          Get.to(() => TransferDetailTransection());
        },
        imgPath: 'assets/images/Illustration2.png',
        subTitle: 'Saturday 4 June 2021  16:20',
        title: 'Buy some grocery',
        type: 'Expense',
        wallet: 'Wallet',
      ),
    );
  }
}
