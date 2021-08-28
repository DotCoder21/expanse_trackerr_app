import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Utils/data.dart';
import 'package:expensemanager/Widgets/bottomCard.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/textField.dart';
import 'package:expensemanager/screens/auth/signUpSuccess.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewBankAccount extends StatefulWidget {
  @override
  _AddNewBankAccountState createState() => _AddNewBankAccountState();
}

class _AddNewBankAccountState extends State<AddNewBankAccount> {
  @override
  Widget build(BuildContext context) {
    return BottomCard(
      appBarText: 'Add New Bank Account',
      backgroundColor: AppColor.violetColor,
      balance: "180",
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
              //  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), itemBuilder: ),
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
    );
  }
}
