import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Utils/data.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
import 'package:expensemanager/Widgets/lineChart.dart';
import 'package:expensemanager/Widgets/pieChart.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FinancialReportDetails extends StatefulWidget {
  @override
  _FinancialReportDetailsState createState() => _FinancialReportDetailsState();
}

class _FinancialReportDetailsState extends State<FinancialReportDetails> {
  bool isLineChart = false;
  bool isExpense = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          actionIcon: null,
          color: Colors.black,
          title: 'Financial Report'),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: Get.height - AppBar().preferredSize.height - 20,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: AppColor.cardBackGroundColor,
                        border: Border.all(color: AppColor.lightTextColor),
                        borderRadius: BorderRadius.circular(24)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_drop_down),
                        displaySizedBox(width: Get.width * 0.02),
                        Text(
                          'Month',
                          style: kTextStyle.copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 98,
                    height: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all()),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            isLineChart = !isLineChart;
                            setState(() {
                              
                            });
                          },
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                color: isLineChart?AppColor.violetColor:Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                )),
                                child: Icon(Icons.linear_scale,
                                color:isLineChart?Colors.white:AppColor.violetColor,
                                ),
                          ),
                        ),
                        Container(
                          height: 48,
                          width: 48,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: isLineChart?Colors.white:AppColor.violetColor,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                          child: Icon(Icons.pie_chart,
                          color: isLineChart?AppColor.violetColor:Colors.white,
                          )
                          // Image.asset('assets/icons/budget.png',
                          // 
                          // ),
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
                height: 160,
                width: Get.width,
                color: AppColor.backgroundColor,
                child:isLineChart? LineChartt():PieChartSam(),
              ),
              displaySizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Card(
                  color: AppColor.cardBackGroundColor,
                    shape: StadiumBorder(),
                  
                  child: Row(
                            children: [
                              Expanded(
                                  child: isExpense
                                      ? displayMaterialbutton(
                                          'Business', )
                                      : displayTextContainer(
                                          'Business', )),
                              Expanded(
                                child: isExpense
                                    ? displayTextContainer(
                                        'Personal', )
                                    : displayMaterialbutton(
                                        'Personal',),
                              ),
                            ],
                          ),
                ),
              ),
                      displaySizedBox(height: 10),
              Row(children: [
                 Icon(Icons.arrow_downward_rounded),
                 Text('Trancation'),
                 Spacer(),
                 Image.asset(''),


              ],),
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

   Widget displayTextContainer(String title,) {
    return InkWell(
        onTap: () {
         isExpense =!isExpense;
         setState(() {
           
         });
        },
        child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                Text(
                  title,
                  style: kTextStyle
                      .copyWith(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),
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
            style: kTextStyle.copyWith(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),
          ),
        ],
      ),
      shape: StadiumBorder(),
      onPressed: () {
        isExpense = !isExpense;
        setState(() {
          
        });
      },
    );
  }
}
