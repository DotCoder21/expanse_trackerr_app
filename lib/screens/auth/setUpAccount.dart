import 'package:expensemanager/Utils/appConst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetUpAccount extends StatefulWidget {
  @override
  _SetUpAccountState createState() => _SetUpAccountState();
}

class _SetUpAccountState extends State<SetUpAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.095,
              //height: 85,
            ),
            Text(
              'Don\'t worry.\nEnter your email and we will\nsend you a link to set your\npassword.',
              textAlign: TextAlign.start,
              maxLines: 4,
              style: kTextStyle.copyWith(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
