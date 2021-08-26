import 'package:expensemanager/Utils/appConst.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

PreferredSize buildAppBar({String title, Color color, IconData actionIcon}) {
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
            color: color,
          ),
        ),
        centerTitle: true,
        title: Text(
          title,
          style: kTextStyle.copyWith(
              color: color, fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(actionIcon),
          )
        ],
      ),
    ),
  );
}

Widget displayCustomAppBar(
    String title, Function deleteHandler, Color backgroundColor) {
  return AppBar(
    backgroundColor: backgroundColor,
    leading: IconButton(
      onPressed: () => Get.back(),
      icon: Icon(Icons.keyboard_arrow_left),
    ),
    centerTitle: true,
    elevation: 0.0,
    title: Text(
      title,
      style: kTextStyle.copyWith(
        color: Colors.white,
        fontSize: 18,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
            onTap: deleteHandler,
            child: Icon(
              Icons.delete,
              color: Colors.white,
            )),
      ),
    ],
  );
}
