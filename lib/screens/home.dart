import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/screens/Budget/emptyState.dart';
import 'package:expensemanager/screens/homePage.dart';
import 'package:flutter/material.dart';

import 'Accounts/profile.dart';
import 'Transaction/transaction.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List _list = [
    HomePage(),
    Trasections(),
    EmptyState(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[index],
      bottomNavigationBar: BottomAppBar(
        // color: AppColor.lightVioletColor,

        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 40, color: Colors.black12, spreadRadius: 5)
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          // height: Get.height * 0.07,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: 30,
                  color: index == 0
                      ? AppColor.violetColor
                      : AppColor.lightTextColor,
                ),
                onPressed: () {
                  index = 0;
                  setState(() {});
                },
              ),
              IconButton(
                icon: ImageIcon(
                  AssetImage('assets/icons/transactionIcon.png'),
                  size: 30,
                  color: index == 1
                      ? AppColor.violetColor
                      : AppColor.lightTextColor,
                ),
                onPressed: () {
                  index = 1;
                  setState(() {});
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.pie_chart,
                  size: 30,
                  color: index == 2
                      ? AppColor.violetColor
                      : AppColor.lightTextColor,
                ),
                onPressed: () {
                  index = 2;
                  setState(() {});
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  size: 30,
                  color: index == 3
                      ? AppColor.violetColor
                      : AppColor.lightTextColor,
                ),
                onPressed: () {
                  index = 3;
                  setState(() {});
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
