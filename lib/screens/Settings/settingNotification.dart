import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingNotificationPage extends StatefulWidget {
  @override
  _SettingNotificationPageState createState() =>
      _SettingNotificationPageState();
}

class _SettingNotificationPageState extends State<SettingNotificationPage> {
  var settingList = [
    {
      'title': 'Expense Alert',
      'subTitle': "Get notification about you’re expense",
      'isSelecter': true,
      'handler': () {},
    },
    {
      'title': 'Budget',
      'subTitle': "Get notification when you’re budget exceeding the limit.",
      'isSelecter': true,
      'handler': () {},
    },
    {
      'title': 'Tips & Articles',
      'subTitle': "Small & useful pieces of pratical financial advice",
      'isSelecter': false,
      'handler': () {},
    },
  ];
  bool isCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Notification', color: Colors.black),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: Get.height,
        width: Get.width,
        child: ListView.builder(
            itemCount: settingList.length,
            itemBuilder: (context, int index) {
              return Container(
                height: Get.height * 0.08,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            settingList[index]['title'],
                            style: kTextStyle.copyWith(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: Get.width / 2,
                          child: Text(
                            settingList[index]['subTitle'],
                            style: kTextStyle.copyWith(
                                fontSize: 13, color: AppColor.lightTextColor),
                            maxLines: 2,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      child: isCheck
                          ? Icon(
                              Icons.toggle_on_outlined,
                            )
                          : Icon(
                              Icons.toggle_off_outlined,
                              color: AppColor.violetColor,
                            ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
