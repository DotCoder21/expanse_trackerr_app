import 'package:expensemanager/Utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NotificationScreen extends StatelessWidget {
  var notificationList = [
    {
      'title':"Shopping budget has exceeds the..",
      'subTitle':"Your Utilities budget has exceeds the limit....",
      'time':'19.30'

    },
    {
      'title':"Shopping budget has exceeds the..",
      'subTitle':"Your Utilities budget has exceeds the limit....",
      'time':'19.30'

    },
    {
      'title':"Utilities budget has exceeds the...",
      'subTitle':"Your Utilities budget has exceeds the limit....",
      'time':'19.30'

    },
    

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification'),),
      backgroundColor: AppColor.backgroundColor,
      body: Container(
        height: Get.height-AppBar().preferredSize.height-20,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
            notificationList.isEmpty?
            Container(
              height: Get.height,
              width: Get.width,
              alignment: Alignment.center,
              child: Text("There is no notification for now"),
            ):
            ListView.builder(
              itemCount: notificationList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,i){

              return Container(
                height: 100,
                color: Colors.red,
                child: Text(notificationList[i]['title'],maxLines: 1,overflow: TextOverflow.ellipsis,),
                
              );
            })
          ],),
        ),
      ),
    );
  }
}