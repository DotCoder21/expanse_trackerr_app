import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 18, top: 28, right: 18),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 2, color: AppColor.violetColor)),
                      child: Container(
                        height: 30,
                        width: 30,
                        child: CircleAvatar(
                          // maxRadius: 15,
                          backgroundColor: Colors.blueGrey,
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          border: Border.all(color: AppColor.lightVioletColor)),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.keyboard_arrow_down_outlined),
                            Text('October'),
                          ],
                        ),
                      ),
                    ),
                    Image.asset('assets/icons/notifiaction.png'),
                  ],
                ),
              ),
              displaySizedBox(height: 9),
              Text(
                'Account Balance',
                style: kTextStyle.copyWith(
                    fontSize: 14, color: AppColor.lightTextColor),
              ),
              displaySizedBox(height: 9),
              Text(
                '\$100',
                style: kTextStyle.copyWith(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
              displaySizedBox(height: 27),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  incomeExpenceContainers(AppColor.greenColor,
                      'assets/icons/group1.png', 'Income', 500),
                  incomeExpenceContainers(AppColor.redColor,
                      'assets/icons/group2.png', 'Expences', 400),
                ],
              ),
              Text('Data'),
            ],
          ),
        ),
      ),
    );
  }

  Container incomeExpenceContainers(
      Color color, String image, String text, double price) {
    return Container(
      height: 88,
      width: 164,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(28)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          displaySizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: kTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                '\$${price.toString()}',
                style: kTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
