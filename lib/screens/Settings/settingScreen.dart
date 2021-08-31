import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/screens/Settings/settingCurrency.dart';
import 'package:expensemanager/screens/Settings/settingLanguage.dart';
import 'package:expensemanager/screens/Settings/settingNotification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  var settingList = [
    {
      'title': 'Currency',
      'subTitle': "USD",
      'handler': () {
        Get.to(() => SettingCurrency());
      },
    },
    {
      'title': 'Language',
      'subTitle': "English",
      'handler': () {
        Get.to(() => SettingsLanguage());
      },
    },
    {
      'title': 'Theme',
      'subTitle': "Dark",
      'handler': () {},
    },
    {
      'title': 'Security',
      'subTitle': "Fingerprint",
      'handler': () {},
    },
    {
      'title': 'Notification',
      'subTitle': "",
      'handler': () {
        Get.to(() => SettingNotificationPage());
      },
    },
    {
      'title': 'About',
      'subTitle': "",
      'handler': () {},
    },
    {
      'title': 'Help',
      'subTitle': "",
      'handler': () {},
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Settings', color: Colors.black),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: Get.height,
        width: Get.width,
        child: ListView.builder(
            itemCount: settingList.length,
            itemBuilder: (context, int index) {
              return Container(
                height: Get.height * 0.08,
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            //
                            if (settingList[0]['title'] == 'Currency') {
                              Get.to(() => SettingCurrency);
                            } else if (settingList[1]['title'] == 'Languages') {
                              Get.to(() => SettingsLanguage());
                            }
                          },
                          child: Container(
                            child: Text(
                              settingList[index]['title'],
                              style: kTextStyle.copyWith(fontSize: 16),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: Text(
                            settingList[index]['subTitle'],
                            style: kTextStyle.copyWith(
                                color: AppColor.lightTextColor, fontSize: 14),
                          ),
                        ),
                        displaySizedBox(width: Get.width * 0.01),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: AppColor.violetColor,
                        ),
                      ],
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
