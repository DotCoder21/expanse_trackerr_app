import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/screens/Accounts/accountDetail.dart';
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
      backgroundColor: AppColor.backgroundColor,
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
                  InkWell(
                    onTap: () {
                      Get.to(() => AccountDetail(
                            image: 'assets/images/wallet.png',
                            text: 'Wallet',
                            amount: 120,
                          ));
                    },
                    child: ListTile(
                      leading: Image.asset('assets/images/wallet.png'),
                      title: Text(
                        'Wallet',
                        style: kTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        '\$120',
                        style: kTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {
                      Get.to(() => AccountDetail(
                            image: 'assets/images/chase.png',
                            text: 'Chase',
                            amount: 10,
                          ));
                    },
                    child: ListTile(
                      leading: Image.asset('assets/images/chase.png'),
                      title: Text(
                        'Chase',
                        style: kTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        '\$10',
                        style: kTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {
                      Get.to(() => AccountDetail(
                            image: 'assets/images/citi.png',
                            text: 'Citi',
                            amount: 600,
                          ));
                    },
                    child: ListTile(
                      leading: Image.asset('assets/images/citi.png'),
                      title: Text(
                        'Citi',
                        style: kTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        '\$600',
                        style: kTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {
                      Get.to(() => AccountDetail(
                            image: 'assets/images/paypal.png',
                            text: 'PayPal',
                            amount: 700,
                          ));
                    },
                    child: ListTile(
                      leading: Image.asset('assets/images/paypal.png'),
                      title: Text(
                        'PayPal',
                        style: kTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        '\$546',
                        style: kTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
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
