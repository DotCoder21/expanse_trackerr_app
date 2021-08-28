import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Utils/data.dart';
import 'package:expensemanager/Widgets/bottomCard.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/textField.dart';
import 'package:expensemanager/screens/Accounts/AddWallet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//import 'addNewBankAccount.dart';

class AddBankAccount extends StatefulWidget {
  @override
  _AddBankAccountState createState() => _AddBankAccountState();
}

class _AddBankAccountState extends State<AddBankAccount> {
  @override
  Widget build(BuildContext context) {
    return BottomCard(
      appBarText: 'Add Bank Account',
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
        height: Get.height * 0.5,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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

              Text(
                'Bank',
                style: kTextStyle.copyWith(),
              ),
              Container(
                height: Get.height * 0.12,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4, childAspectRatio: 2),
                    itemCount: 8,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, i) {
                      return Container(
                        child: Image.asset(gridList[i]),
                      );
                    }),
              ),
              // displaySizedBox(height: Get.height * 0.03),
              Button(
                onTap: () {
                  Get.to(() => AddWalletAccount());
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
