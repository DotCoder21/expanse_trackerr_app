import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Utils/data.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
import 'package:expensemanager/Widgets/lineChart.dart';
import 'package:expensemanager/Widgets/pieChart.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/screens/DetailTransection/expenseTransectiolnDetail.dart';
import 'package:expensemanager/screens/DetailTransection/removeTransectionDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FinancialReportDetails extends StatefulWidget {
  @override
  _FinancialReportDetailsState createState() => _FinancialReportDetailsState();
}

class _FinancialReportDetailsState extends State<FinancialReportDetails> {
  String dropdownvalue = 'Junuary';
  var items = [
    'Junuary',
    'Feruary',
    'March',
    'April',
    'May',
    'Jun',
    'July',
    'Auguest',
    'November',
    'December'
  ];
  bool isLineChart = false;
  bool isExpense = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          actionIcon: null, color: Colors.black, title: 'Financial Report'),
      body: Container(
        // color: Colors.green,
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: Get.height - AppBar().preferredSize.height - 20,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        // color: AppColor.cardBackGroundColor,
                        border: Border.all(color: Colors.grey.withOpacity(0.6)),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: dropdownvalue,
                        icon: Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                              value: items, child: Text(items));
                        }).toList(),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownvalue = newValue;
                          });
                        },
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 98,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.6))),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            isLineChart = !isLineChart;
                            setState(() {});
                          },
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              color: isLineChart
                                  ? AppColor.violetColor
                                  : Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                topLeft: Radius.circular(8),
                              ),
                            ),
                            child: Icon(
                              Icons.linear_scale,
                              color: isLineChart
                                  ? Colors.white
                                  : AppColor.violetColor,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            isLineChart = !isLineChart;
                            setState(() {});
                          },
                          child: Container(
                              height: 48,
                              width: 48,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: isLineChart
                                    ? Colors.white
                                    : AppColor.violetColor,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              child: Icon(
                                Icons.pie_chart,
                                color: isLineChart
                                    ? AppColor.violetColor
                                    : Colors.white,
                              )
                              // Image.asset('assets/icons/budget.png',
                              //
                              // ),
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              displaySizedBox(height: Get.height * 0.01),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '\$100',
                    style: kTextStyle.copyWith(
                        fontSize: 32, fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: EdgeInsets.only(bottom: 8.0, top: 5.0),
                height: Get.height * 0.2,
                width: Get.width,
                // color: AppColor.backgroundColor,
                // decoration: BoxDecoration(boxShadow: [
                //   BoxShadow(
                //       blurRadius: 40,
                //       //offset: Offset(0, 10),
                //       color: Colors.black12,
                //       spreadRadius: 0.1),
                // ]),
                child: isLineChart ? LineChartt() : PieChartSam(),
              ),
              displaySizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Card(
                  // color: AppColor.cardBackGroundColor,
                  elevation: 0.5,
                  shape: StadiumBorder(),
                  child: Row(
                    children: [
                      Expanded(
                          child: isExpense
                              ? displayMaterialbutton(
                                  'Expense',
                                )
                              : displayTextContainer(
                                  'Expense',
                                )),
                      Expanded(
                        child: isExpense
                            ? displayTextContainer(
                                'Income',
                              )
                            : displayMaterialbutton(
                                'Income',
                              ),
                      ),
                    ],
                  ),
                ),
              ),
              displaySizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.5, color: Colors.grey.withOpacity(0.6)),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_downward_rounded),
                          displaySizedBox(width: Get.width * 0.03),
                          Text('Trancation'),
                        ],
                      ),
                    ),
                    Container(
                        height: 40,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.5, color: Colors.grey.withOpacity(0.8)),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Image.asset('assets/icons/Button Icon.png')),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: Get.height,
                child: ListView.builder(
                    itemCount: cardList.length,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5.0),
                        child: Container(
                          height: Get.height * 0.12,
                          // height: 89,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 17),
                          decoration: BoxDecoration(
                              // color: AppColor.lightTextColor,
                              // color: Colors.green,
                              color: Colors.grey.withOpacity(0.09),
                              borderRadius: BorderRadius.circular(16)),
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
                                        color: AppColor.redColor, fontSize: 14),
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
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget displayTextContainer(
    String title,
  ) {
    return InkWell(
        onTap: () {
          isExpense = !isExpense;
          setState(() {});
        },
        child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: kTextStyle.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            )));
  }

  Widget displayMaterialbutton(String title) {
    return MaterialButton(
      height: 50,
      color: AppColor.violetColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: kTextStyle.copyWith(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
      shape: StadiumBorder(),
      onPressed: () {
        isExpense = !isExpense;
        setState(() {});
        title == 'Expense'
            ? Get.to(() => ExpenceDetailTransection())
            : Get.to(() => RemoveDetailTransection());
      },
    );
  }
}
