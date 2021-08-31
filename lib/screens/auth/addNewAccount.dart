import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Widgets/bottomCard.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'addNewBankAccount.dart';

class AddNewAccount extends StatefulWidget {
  @override
  _AddNewAccountState createState() => _AddNewAccountState();
}

class _AddNewAccountState extends State<AddNewAccount> {
  @override
  Widget build(BuildContext context) {
    return BottomCard(
      appBarText: 'Add New Account',
      backgroundColor: AppColor.violetColor,
      balance: "180",
      title: 'balance',
      bottomContainer: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32)),
        ),
        height: Get.height * 0.53,
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
              labelText: 'Account type',
              keyboardType: TextInputType.name,
              savedHandler: (val) {},
              validaterHandler: (val) {
                return (val.isEmpty) ? "*Required" : null;
              },
            ),
            Button(
              onTap: () {
                Get.to(() => AddNewBankAccount());
              },
              buttonText: 'Continue',
              widthPercent: double.infinity,
              buttonColor: AppColor.violetColor,
              textColor: AppColor.lightVioletColor,
            ),
          ],
        ),
      ),
    );
    // Scaffold(
    //   backgroundColor: AppColor.violetColor,
    //   appBar: buildAppBar('Add New Account', Colors.white),
    //   body: Container(
    //     color: AppColor.violetColor,
    //     width: double.infinity,
    //     height: double.infinity,
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.end,
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Spacer(),
    //         Padding(
    //           padding: const EdgeInsets.only(left: 16),
    //           child: Text(
    //             'balance',
    //             style: kTextStyle.copyWith(
    //                 color: AppColor.lightVioletColor,
    //                 fontSize: 18,
    //                 fontWeight: FontWeight.bold),
    //           ),
    //         ),
    //         displaySizedBox(
    //           height: Get.height * 0.013,
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.only(left: 16),
    //           child: Text(
    //             '\$100',
    //             style: kTextStyle.copyWith(
    //                 fontSize: 64,
    //                 fontWeight: FontWeight.bold,
    //                 color: Colors.white),
    //           ),
    //         ),
    //         displaySizedBox(height: Get.height * 0.01),
    //         Container(
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.only(
    //                 topLeft: Radius.circular(32),
    //                 topRight: Radius.circular(32)),
    //           ),
    //           height: Get.height * 0.33,
    //           child: Container(
    //             padding: EdgeInsets.symmetric(horizontal: 16),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [
    //                 // displaySizedBox(height: Get.height * 0.025),
    //                 displayTextField(
    //                   labelText: 'Name',
    //                   keyboardType: TextInputType.name,
    //                   savedHandler: (val) {},
    //                   validaterHandler: (val) {
    //                     return (val.isEmpty) ? "*Required" : null;
    //                   },
    //                 ),
    //                 //displaySizedBox(height: Get.height * 0.016),
    //                 displayTextField(
    //                   labelText: 'Account type',
    //                   keyboardType: TextInputType.name,
    //                   savedHandler: (val) {},
    //                   validaterHandler: (val) {
    //                     return (val.isEmpty) ? "*Required" : null;
    //                   },
    //                 ),
    //                 Button(
    //                   onTap: () {
    //                     Get.to(() => AddNewBankAccount());
    //                   },
    //                   buttonText: 'Continue',
    //                   widthPercent: double.infinity,
    //                   buttonColor: AppColor.violetColor,
    //                   textColor: AppColor.lightVioletColor,
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
