import 'dart:io';

import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/bottomCard.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/dialogues.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:expensemanager/Widgets/textField.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class NewExpense extends StatefulWidget {
  @override
  _NewExpenseState createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  File imageFile;

  bool isRepeat = false;
  @override
  Widget build(BuildContext context) {
    return BottomCard(
      appBarText: 'Expense',
      backgroundColor: AppColor.redColor,
      balance: "0",
      title: 'How much?',
      bottomContainer: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32)),
        ),
        height: Get.height * 0.63,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // displaySizedBox(height: Get.height * 0.025),
              displayTextField(
                labelText: 'Category',
                keyboardType: TextInputType.name,
                savedHandler: (val) {},
                validaterHandler: (val) {
                  return (val.isEmpty) ? "*Required" : null;
                },
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
              displayTextField(
                labelText: 'Wallet',
                keyboardType: TextInputType.name,
                savedHandler: (val) {},
                validaterHandler: (val) {
                  return (val.isEmpty) ? "*Required" : null;
                },
              ),
              imageFile == null
                  ? FDottedLine(
                      color: AppColor.lightTextColor,
                      height: 100.0,
                      width: 50,
                      strokeWidth: 0.1,
                      dottedLength: 10.0,
                      space: 2.0,
                      child: InkWell(
                        onTap: () {
                          onAlertPress(
                              context, getCameraImage, getGalleryImage);
                        },
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
                                    color: AppColor.lightTextColor,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: FileImage(imageFile),
                                fit: BoxFit.contain,
                              )),
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () {
                              imageFile = null;
                              setState(() {});
                            },
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.lightVioletColor),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
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
                    // Icon(
                    //   Icons.toggle_off_rounded,
                    //   color: AppColor.lightVioletColor,
                    //   size: 50,
                    // ),
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
              isRepeat ? Container() : displaySizedBox(),
              Button(
                onTap: () {
                  // Get.to(() => NewIncome());
                  gisplaySuccessfulDialogue();
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
    );
  }

  getCameraImage() async {
    await picker
        .pickImage(
            source: ImageSource.camera,
            imageQuality: 60,
            maxHeight: 400,
            maxWidth: 300)
        .then((value) {
      imageFile = File(value.path);
    });

    setState(() {
      Navigator.pop(context);
    });
  }

  final picker = ImagePicker();

  //============================== Image from gallery
  getGalleryImage() async {
    await picker
        .pickImage(
            source: ImageSource.gallery,
            imageQuality: 60,
            maxHeight: 400,
            maxWidth: 300)
        .then((value) {
      imageFile = File(value.path);
    });

    setState(() {
      Navigator.pop(context);
    });
  }
}
