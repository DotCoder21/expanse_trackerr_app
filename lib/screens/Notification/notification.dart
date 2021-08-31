import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  String dropdownvalue = '';
  var items = ['', 'Banana', 'Grapes', 'Orange', 'watermelon', 'Pineapple'];

  var notificationList = [
    {
      'title': "Shopping budget has exceeds the..",
      'subTitle': "Your Utilities budget has exceeds the limit....",
      'time': '19.30'
    },
    {
      'title': "Shopping budget has exceeds the..",
      'subTitle': "Your Utilities budget has exceeds the limit....",
      'time': '19.30'
    },
    {
      'title': "Utilities budget has exceeds the...",
      'subTitle': "Your Utilities budget has exceeds the limit....",
      'time': '19.30'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Notification',
          style: kTextStyle.copyWith(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.more_vert, color: Colors.black))
        ],
      ),
      backgroundColor: AppColor.backgroundColor,
      body: Container(
        height: Get.height - AppBar().preferredSize.height - 20,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              displaySizedBox(height: Get.height * 0.018),
              notificationList.isEmpty
                  ? Container(
                      height: Get.height,
                      width: Get.width,
                      alignment: Alignment.center,
                      child: Text("There is no notification for now"),
                    )
                  : ListView.builder(
                      itemCount: notificationList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, i) {
                        return Container(
                          // color: Colors.red,
                          height: Get.height * 0.08,

                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        notificationList[i]['title'],
                                        style: kTextStyle.copyWith(
                                            fontSize: Get.size.height * 0.02),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      displaySizedBox(height: 10),
                                      Text(
                                        notificationList[i]['subTitle'],
                                        style: kTextStyle.copyWith(
                                            fontSize: Get.size.height * 0.016,
                                            color: AppColor.lightTextColor),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                  displaySizedBox(width: 10),
                                  Text(
                                    notificationList[i]['time'],
                                    style: kTextStyle.copyWith(
                                        color: AppColor.lightTextColor,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                              Divider()
                            ],
                          ),
                        );
                      })
            ],
          ),
        ),
      ),
    );
  }
}
