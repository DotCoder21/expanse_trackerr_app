import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Widgets/transectionDetail.dart';
import 'package:flutter/material.dart';

class TransferDetailTransection extends StatefulWidget {
  @override
  _TransferDetailTransectionState createState() =>
      _TransferDetailTransectionState();
}

class _TransferDetailTransectionState extends State<TransferDetailTransection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TransectionDeatail(
        appBarText: 'Detail Transaction',
        balance: '300',
        topColor: AppColor.blueColor,
        deleteHandler: () {
          // displayTranSuccessful('Remove this transaction?',
          //     'Are you sure do you wanna remove this transaction?', () {
          //   Get.back();
          //   gisplaySuccessfulDialogue();
          // }, () {
          //   Get.back();
          // });
        },
        category: 'PayPal',
        description:
            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
        editHandler: () {},
        imgPath: 'assets/images/Illustration2.png',
        subTitle: 'Saturday 4 June 2021  16:20',
        title: '',
        type: 'Transfer',
        wallet: 'Chase',
      ),
    );
  }
}
