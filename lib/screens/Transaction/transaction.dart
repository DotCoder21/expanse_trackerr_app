import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Utils/data.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/Widgets/textField.dart';
import 'package:expensemanager/screens/Transaction/financialReportAll.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Trasections extends StatefulWidget {
  @override
  _TrasectionsState createState() => _TrasectionsState();
}

class _TrasectionsState extends State<Trasections> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        // appBar:
        body: Container(
          height: Get.height - 20,
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
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
                    itemCount: cardList.length,
                    itemBuilder: (context, i) {
                      return InkWell(
                        onTap: () {
                          Get.to(() => FinancialReportAll());
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: Container(
                            height: Get.height * 0.12,
                            // height: 89,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            decoration: BoxDecoration(
                                // color: AppColor.lightTextColor,
                                //  color: Colors.green,
                                color: AppColor.cardBackGroundColor,
                                borderRadius: BorderRadius.circular(24)),
                            child: Row(
                              // crossAxisAlignment: CrossAxisAlignment.,
                              children: [
                                Container(
                                    child: Image.asset(cardList[i]['image'])),
                                displaySizedBox(width: 19),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      cardList[i]['title'],
                                      style: kTextStyle.copyWith(fontSize: 16),
                                    ),
                                    Text(
                                      cardList[i]['subTitle'],
                                      style: kTextStyle.copyWith(
                                          color: AppColor.lightTextColor,
                                          fontSize: 13),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      cardList[i]['price'],
                                      style: kTextStyle.copyWith(
                                          color: AppColor.redColor,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      cardList[i]['time'],
                                      style: kTextStyle.copyWith(
                                          color: AppColor.lightTextColor,
                                          fontSize: 13),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
