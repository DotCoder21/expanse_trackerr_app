import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Widgets/bottomCard.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/Widgets/textField.dart';
import 'package:expensemanager/screens/Accounts/AddBankAccount.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//import 'addNewBankAccount.dart';

class AddAccount extends StatefulWidget {
  @override
  _AddAccountState createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
  @override
  Widget build(BuildContext context) {
    return BottomCard(
      appBarText: 'Add Account',
      backgroundColor: AppColor.violetColor,
      balance: "0.0",
      actionIcon: Icons.delete,
      title: 'balance',
      bottomContainer: Column(
        children: [
          displaySizedBox(height: Get.height * 0.03),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32), topRight: Radius.circular(32)),
            ),
            height: Get.height * 0.52,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // displaySizedBox(height: Get.height * 0.025),
                  displayTextField(
                    labelText: 'Name',
                    keyboardType: TextInputType.name,
                    savedHandler: (val) {},
                    validaterHandler: (val) {
                      return (val.isEmpty) ? "*Required" : null;
                    },
                  ),
                  //displaySizedBox(height: Get.height * 0.016),
                  displayTextField(
                    labelText: 'Account Type',
                    keyboardType: TextInputType.name,
                    savedHandler: (val) {},
                    validaterHandler: (val) {
                      return (val.isEmpty) ? "*Required" : null;
                    },
                  ),
                  Button(
                    onTap: () {
                      Get.to(() => AddBankAccount());
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
        ],
      ),
    );
  }
}
