import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
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
      body: Container(
        //  padding: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            displaySizedBox(height: Get.height * 0.07),
            Container(
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/profile.png'),
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
                        'Iriana Saliha',
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
            displaySizedBox(height: Get.height * 0.06),
            Container(
              width: double.infinity,
              height: Get.height * 0.45,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),

              child: Column(
                children: [
                  menuItem('assets/images/wallet.png', 'Account'),
                  Divider(),
                  menuItem('assets/images/flower.png', 'Setting'),
                  Divider(),
                  menuItem('assets/images/download.png', 'Export Data'),
                  Divider(),
                  menuItem('assets/images/downloadright.png', 'Log out'),
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
