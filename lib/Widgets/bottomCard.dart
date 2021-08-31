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
  IconData actionIcon;
  Widget bottomContainer;

  BottomCard(
      {this.appBarText,
      this.backgroundColor,
      this.balance,
      this.title,
      this.actionIcon,
      this.bottomContainer});

  @override
  _BottomCardState createState() => _BottomCardState();
}

class _BottomCardState extends State<BottomCard> {
  @override
  Widget build(BuildContext context) {
    // final double bottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      backgroundColor: widget.backgroundColor,
      appBar: buildAppBar(
          title: widget.appBarText,
          color: Colors.white,
          actionIcon: widget.actionIcon),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          color: Colors.transparent,
          // width: Get.width,
          // height: Get.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Spacer(),
              displaySizedBox(height: Get.height * 0.22),
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
              // displaySizedBox(height: Get.height * 0.01),
              widget.bottomContainer,
            ],
          ),
        ),
      ),
    );
  }
}
