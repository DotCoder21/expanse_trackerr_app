import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/bottomCard.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/Widgets/textField.dart';
import 'package:expensemanager/screens/Add_To_Home/newIncome.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewExpense extends StatefulWidget {
  @override
  _NewExpenseState createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  @override
  Widget build(BuildContext context) {
    return BottomCard(
      appBarText: 'Expense',
      backgroundColor: AppColor.redColor,
      balance: "0",
      title: 'How much?',
      bottomContainer: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32)),
        ),
        height: Get.height * 0.63,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // displaySizedBox(height: Get.height * 0.025),
              displayTextField(
                labelText: 'Category',
                keyboardType: TextInputType.name,
                savedHandler: (val) {},
                validaterHandler: (val) {
                  return (val.isEmpty) ? "*Required" : null;
                },
              ),
              displayTextField(
                labelText: 'Description',
                keyboardType: TextInputType.name,
                savedHandler: (val) {},
                validaterHandler: (val) {
                  return (val.isEmpty) ? "*Required" : null;
                },
              ),
              //displaySizedBox(height: Get.height * 0.016),
              displayTextField(
                labelText: 'Wallet',
                keyboardType: TextInputType.name,
                savedHandler: (val) {},
                validaterHandler: (val) {
                  return (val.isEmpty) ? "*Required" : null;
                },
              ),

              FDottedLine(
                color: AppColor.lightTextColor,
                height: 100.0,
                width: 50,
                strokeWidth: 0.1,
                dottedLength: 10.0,
                space: 2.0,
                child: Container(
                  height: Get.height * 0.07,
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                        AssetImage('assets/icons/pin.png'),
                        color: AppColor.lightTextColor,
                      ),
                      displaySizedBox(width: Get.width * 0.03),
                      Text(
                        'Add Attachment',
                        style: kTextStyle.copyWith(
                            color: AppColor.lightTextColor, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Repeat',
                          style: kTextStyle.copyWith(
                              color: Colors.black, fontSize: 16),
                        ),
                        Text(
                          'Repeat Transaction',
                          style: kTextStyle.copyWith(
                              color: AppColor.lightTextColor, fontSize: 13),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.toggle_off_rounded,
                      color: AppColor.lightVioletColor,
                      size: 50,
                    ),
                  ],
                ),
              ),
              Button(
                onTap: () {
                  Get.to(() => NewIncome());
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
