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
      appBar: buildAppBar(title: 'Account', color: Colors.black),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Account Balance',
                    style: kTextStyle.copyWith(
                        color: AppColor.lightTextColor, fontSize: 14),
                  ),
                  displaySizedBox(height: Get.height * 0.01),
                  Text(
                    '\$456',
                    style: kTextStyle.copyWith(fontSize: 40),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset('assets/images/wallet.png'),
                    title: Text(
                      'Wallet',
                      style: kTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      '\$100',
                      style: kTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/chase.png'),
                    title: Text(
                      'Chase',
                      style: kTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      '\$100',
                      style: kTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/citi.png'),
                    title: Text(
                      'Citi',
                      style: kTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      '\$100',
                      style: kTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/paypal.png'),
                    title: Text(
                      'PayPal',
                      style: kTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      '\$100',
                      style: kTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.bold),
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
                buttonText: '+ Add new Wallet',
                widthPercent: Get.width * 0.4,
                buttonColor: AppColor.violetColor,
                textColor: AppColor.lightVioletColor,
              ),
            ),
            displaySizedBox(height: Get.height * 0.04),
          ],
        ),
      ),
    );
  }
}
