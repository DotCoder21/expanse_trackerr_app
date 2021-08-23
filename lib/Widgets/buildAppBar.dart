import 'package:expensemanager/Utils/appConst.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

PreferredSize buildAppBar(String title) {
  return PreferredSize(
    preferredSize: Size.fromHeight(Get.height * 0.07),
    child: Align(
      alignment: Alignment.center,
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          title,
          style: kTextStyle.copyWith(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
