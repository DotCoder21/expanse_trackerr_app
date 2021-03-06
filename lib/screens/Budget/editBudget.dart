import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/bottomCard.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/Widgets/textField.dart';
import 'package:expensemanager/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditBudget extends StatefulWidget {
  @override
  _EditBudgetState createState() => _EditBudgetState();
}

class _EditBudgetState extends State<EditBudget> {
  bool isRepeat = false;
  double _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return BottomCard(
      appBarText: 'Edit budget',
      backgroundColor: AppColor.blueColor,
      balance: "0",
      title: 'How much do you want to Spend?',
      bottomContainer: SingleChildScrollView(
        child: Column(
          children: [
            displaySizedBox(height: Get.height * 0.03),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
              ),
              height: Get.height * 0.5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // displaySizedBox(height: Get.height * 0.025),

                    displayTextField(
                      labelText: 'Shopping',
                      keyboardType: TextInputType.name,
                      savedHandler: (val) {},
                      validaterHandler: (val) {
                        return (val.isEmpty) ? "*Required" : null;
                      },
                    ),
                    //displaySizedBox(height: Get.height * 0.016),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Repeat',
                                style: kTextStyle.copyWith(
                                    color: Colors.black, fontSize: 16),
                              ),
                              Text(
                                'Repeat Transaction',
                                style: kTextStyle.copyWith(
                                    color: AppColor.lightTextColor,
                                    fontSize: 13),
                              ),
                            ],
                          ),
                          Spacer(),
                          Switch(
                            value: isRepeat,
                            onChanged: (val) {
                              isRepeat = val;
                              setState(() {});
                            },
                            activeColor: AppColor.violetColor,
                          ),
                        ],
                      ),
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                          thumbColor: AppColor.violetColor,
                          activeTrackColor: AppColor.violetColor,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 10)),
                      child: Slider(
                        value: _value,
                        onChanged: (val) {
                          _value = val;
                          setState(() {});
                        },
                      ),
                    ),
                    Button(
                      onTap: () {
                        Get.to(() => Home());
                      },
                      buttonText: 'Continue',
                      widthPercent: double.infinity,
                      buttonColor: AppColor.violetColor,
                      textColor: AppColor.lightVioletColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
