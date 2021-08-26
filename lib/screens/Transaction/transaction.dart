import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/Widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Trasections extends StatefulWidget {
  @override
  _TrasectionsState createState() => _TrasectionsState();
}

class _TrasectionsState extends State<Trasections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        // appBar:
        body: Container(
          height: Get.height - 20,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.arrow_drop_down),
                          Text('Month'),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.menu),
                    )
                  ],
                ),
                displayTextField(
                  labelText: 'See your financial report',
                  suffixIcon: Icon(Icons.arrow_forward_ios),
                  validaterHandler: (val) {
                    return null;
                  },
                  savedHandler: (val) {},
                  keyboardType: TextInputType.name,
                ),
                displaySizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Today',
                      style: kTextStyle.copyWith(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                displaySizedBox(height: 10),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, i) {
                      return Container();
                    })
              ],
            ),
          ),
        ));
  }
}
