import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Account', Colors.black),
      body: Container(
        child: Column(
          children: [
            displaySizedBox(height: Get.height * 0.016),
            Container(
              width: Get.width,
              height: Get.height * 0.28,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/accountBackgroud.png',
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset('assets/images/wallet.png'),
                    trailing: Text(
                      '\$100',
                      style: kTextStyle.copyWith(fontSize: 18),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/chase.png'),
                    trailing: Text(
                      '\$100',
                      style: kTextStyle.copyWith(fontSize: 18),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/citi.png'),
                    trailing: Text(
                      '\$100',
                      style: kTextStyle.copyWith(fontSize: 18),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/paypal.png'),
                    trailing: Text(
                      '\$100',
                      style: kTextStyle.copyWith(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Button(
                onTap: () {
                  // Get.to(() =>  CreateBudget());
                },
                buttonText: 'Continue',
                widthPercent: Get.width * 0.4,
                buttonColor: AppColor.violetColor,
                textColor: AppColor.lightVioletColor,
              ),
            ),
            displaySizedBox(height: Get.height * 0.033),
          ],
        ),
      ),
    );
  }
}
