import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/bottomSheet.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/screens/Accounts/myAccount.dart';
import 'package:expensemanager/screens/Settings/settingScreen.dart';
import 'package:expensemanager/screens/auth/signUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Container(
        //  padding: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            displaySizedBox(height: Get.height * 0.1),
            Container(
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    // backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      'assets/images/image.png',
                    ),
                    radius: 40,
                  ),
                  // Image.asset('assets/images/profile.png'),
                  displaySizedBox(width: Get.width * 0.04),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'UserName',
                        style: kTextStyle.copyWith(
                            fontSize: 12, color: AppColor.lightTextColor),
                      ),
                      displaySizedBox(height: Get.height * 0.008),
                      Text(
                        'Hamid Shah',
                        style: kTextStyle.copyWith(
                            fontSize: 24, color: Colors.black),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset('assets/icons/pen.png'),
                ],
              ),
            ),
            displaySizedBox(height: Get.height * 0.07),
            Container(
              width: double.infinity,
              height: Get.height * 0.45,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.09),
                  borderRadius: BorderRadius.circular(20)),

              child: Column(
                children: [
                  InkWell(
                      onTap: () {
                        Get.to(() => MyAccount());
                      },
                      child: menuItem('assets/images/wallet.png', 'Account')),
                  Divider(),
                  InkWell(
                      onTap: () {
                        Get.to(() => SettingPage());
                      },
                      child: menuItem('assets/images/flower.png', 'Setting')),
                  Divider(),
                  menuItem('assets/images/download.png', 'Export Data'),
                  Divider(),
                  InkWell(
                      onTap: () {
                        displayTranSuccessful(
                            'Log out', 'Are you sure do you wanna Log out?',
                            () {
                          Get.to(() => SignUpScreen());
                        }, () {
                          Get.back();
                        });
                      },
                      child: menuItem(
                          'assets/images/downloadright.png', 'Log out')),
                ],
              ),

              // child: Column(
              //   children: [
              //
              //     // ListTile(
              //     //   leading: Image.asset('assets/images/wallet.png'),
              //     //   trailing: Text('Account'),
              //     // ),
              //     // ListTile(
              //     //   leading: Image.asset('assets/images/flowers.png'),
              //     //   trailing: Text('Setting'),
              //     // ),
              //     // ListTile(
              //     //   leading: Image.asset('assets/images/download.png'),
              //     //   trailing: Text('Export Data'),
              //     // ),
              //     // ListTile(
              //     //   leading: Image.asset('assets/images/downloadright.png'),
              //     //   trailing: Text('Log out'),
              //     // ),
              //   ],
              // ),
            )
          ],
        ),
      ),
    );
  }

  Container menuItem(String image, String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            image,
            height: 52,
            width: 52,
          ),
          displaySizedBox(width: Get.width * 0.04),
          Text(
            title,
            style: kTextStyle.copyWith(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
