import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'buildAppBar.dart';

class BottomCard extends StatefulWidget {
  Color backgroundColor;
  String appBarText;
  String title;
  String balance;
  Widget bottomContainer;

  BottomCard(
      {this.appBarText,
      this.backgroundColor,
      this.balance,
      this.title,
      this.bottomContainer});

  @override
  _BottomCardState createState() => _BottomCardState();
}

class _BottomCardState extends State<BottomCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      appBar: buildAppBar(widget.appBarText, Colors.white),
      body: Container(
        color: Colors.transparent,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                widget.title,
                style: kTextStyle.copyWith(
                    color: AppColor.lightVioletColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            displaySizedBox(
              height: Get.height * 0.013,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                '\$' + widget.balance,
                style: kTextStyle.copyWith(
                    fontSize: 64,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            displaySizedBox(height: Get.height * 0.01),
            widget.bottomContainer,
          ],
        ),
      ),
    );
  }
}
