import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
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
      'handler': () {},
    },
    {
      'title': 'Language',
      'subTitle': "English",
      'handler': () {},
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
      'handler': () {},
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
      appBar: buildAppBar('Settings', Colors.black),
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
                        Container(
                          child: Text(settingList[index]['title']),
                        ),
                        Spacer(),
                        Container(
                          child: Text(settingList[index]['subTitle']),
                        ),
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
