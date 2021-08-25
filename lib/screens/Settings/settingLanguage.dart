import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
import 'package:flutter/material.dart';

class SettingsLanguage extends StatefulWidget {
  @override
  _SettingsLanguageState createState() => _SettingsLanguageState();
}

class _SettingsLanguageState extends State<SettingsLanguage> {
  List<String> currencyList = [
    "English",
    "Indonesian (ID)",
    "Arabic (AR)",
    "Chinese (ZH)",
    "Dutch (NL)",
    "German (DE)",
    "Italian (IT)",
    "Korean (KO)",
    "Portuguese (PT)",
    "Russian (RU)",
    "Spanish (ES)",
  ];
  String selectedCurrency = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Language', Colors.black),
      body: Container(
        child: ListView.builder(
            itemCount: currencyList.length,
            itemBuilder: (context, i) {
              return RadioListTile(
                value: currencyList[i],
                groupValue: selectedCurrency,
                onChanged: (val) {
                  selectedCurrency = val;
                  setState(() {});
                },
                activeColor: AppColor.violetColor,
                selected: true,
                title: Text(
                  currencyList[i],
                  style: kTextStyle.copyWith(color: Colors.black, fontSize: 14),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
              );
            }),
      ),
    );
  }
}
