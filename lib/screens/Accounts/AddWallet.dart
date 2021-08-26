import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Widgets/bottomCard.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'addAccount.dart';

//import 'addNewBankAccount.dart';

class AddWalletAccount extends StatefulWidget {
  @override
  _AddWalletAccountState createState() => _AddWalletAccountState();
}

class _AddWalletAccountState extends State<AddWalletAccount> {
  @override
  Widget build(BuildContext context) {
    return BottomCard(
      appBarText: 'Add Wallet',
      backgroundColor: AppColor.violetColor,
      balance: "180",
      actionIcon: Icons.delete,
      title: 'balance',
      bottomContainer: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32)),
        ),
        height: Get.height * 0.33,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // displaySizedBox(height: Get.height * 0.025),
              displayTextField(
                labelText: 'PayPal',
                keyboardType: TextInputType.name,
                savedHandler: (val) {},
                validaterHandler: (val) {
                  return (val.isEmpty) ? "*Required" : null;
                },
              ),
              //displaySizedBox(height: Get.height * 0.016),
              displayTextField(
                labelText: 'Bank',
                keyboardType: TextInputType.name,
                savedHandler: (val) {},
                validaterHandler: (val) {
                  return (val.isEmpty) ? "*Required" : null;
                },
              ),
              Button(
                onTap: () {
                  Get.to(() => AddAccount());
                },
                buttonText: 'Continue',
                widthPercent: double.infinity,
                buttonColor: AppColor.violetColor,
                textColor: AppColor.lightVioletColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
