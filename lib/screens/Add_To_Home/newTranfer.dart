import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/bottomCard.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/Widgets/textField.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewTransfer extends StatefulWidget {
  @override
  _NewTransferState createState() => _NewTransferState();
}

class _NewTransferState extends State<NewTransfer> {
  bool isRepeat = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomCard(
        appBarText: 'Tranfer',
        backgroundColor: AppColor.blueColor,
        balance: "0",
        title: 'How much?',
        bottomContainer: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32), topRight: Radius.circular(32)),
          ),
          height: Get.height * 0.53,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // displaySizedBox(height: Get.height * 0.025),
                Container(
                  // color: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 3),
                  height: Get.height * 0.07,
                  width: Get.width,
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //  crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Get.width * 0.44,
                            height: Get.height * 0.07,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColor.lightTextColor),
                                borderRadius: BorderRadius.circular(16)),
                            child: Center(
                              child: Text(
                                'From',
                                style: kTextStyle.copyWith(
                                    fontSize: 16,
                                    color: AppColor.lightTextColor),
                              ),
                            ),
                          ),
                          // Spacer(),
                          Container(
                            width: Get.width * 0.44,
                            height: Get.height * 0.07,
                            //  width: Get.width / 2,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColor.lightTextColor),
                                borderRadius: BorderRadius.circular(16)),
                            child: Center(
                              child: Text(
                                'To',
                                textAlign: TextAlign.start,
                                style: kTextStyle.copyWith(
                                    fontSize: 16,
                                    color: AppColor.lightTextColor),
                              ),
                            ),
                          )
                        ],
                      ),
                      Align(
                        child: Image.asset(
                          'assets/icons/Frame 342.png',
                        ),
                      ),
                    ],
                  ),
                ),

                displayTextField(
                  labelText: 'Description',
                  keyboardType: TextInputType.name,
                  savedHandler: (val) {},
                  validaterHandler: (val) {
                    return (val.isEmpty) ? "*Required" : null;
                  },
                ),
                //displaySizedBox(height: Get.height * 0.016),
                FDottedLine(
                  color: AppColor.lightTextColor,
                  height: 100.0,
                  width: 50,
                  strokeWidth: 0.1,
                  dottedLength: 10.0,
                  space: 2.0,
                  child: Container(
                    height: Get.height * 0.07,
                    width: Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(
                          AssetImage('assets/icons/pin.png'),
                          color: AppColor.lightTextColor,
                        ),
                        displaySizedBox(width: Get.width * 0.03),
                        Text(
                          'Add Attachment',
                          style: kTextStyle.copyWith(
                              color: AppColor.lightTextColor, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
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
                                color: AppColor.lightTextColor, fontSize: 13),
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
                Button(
                  onTap: () {
                    Get.to(() => NewTransfer());
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
      ),
    );
  }
}
