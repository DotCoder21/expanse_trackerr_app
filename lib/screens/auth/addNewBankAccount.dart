import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/Widgets/textField.dart';
import 'package:expensemanager/screens/auth/signUpSuccess.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewBankAccount extends StatefulWidget {
  @override
  _AddNewBankAccountState createState() => _AddNewBankAccountState();
}

class _AddNewBankAccountState extends State<AddNewBankAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.violetColor,
      appBar: buildAppBar('Add Wallet', Colors.white),
      body: Container(
        color: AppColor.violetColor,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'balance',
                style: kTextStyle.copyWith(
                    color: AppColor.lightVioletColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            displaySizedBox(
              height: Get.height * 0.013,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                '\$100',
                style: kTextStyle.copyWith(
                    fontSize: 64,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            displaySizedBox(height: Get.height * 0.01),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
              ),
              height: Get.height * 0.5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // displaySizedBox(height: Get.height * 0.025),
                    displayTextField(
                      labelText: 'Chase',
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
                        Get.to(() => SignUpSuccess());
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
      ),
    );
  }
}
