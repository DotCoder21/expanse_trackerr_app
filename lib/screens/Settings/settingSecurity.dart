import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
import 'package:flutter/material.dart';

class SettingSecurity extends StatefulWidget {
  @override
  _SettingSecurityState createState() => _SettingSecurityState();
}

class _SettingSecurityState extends State<SettingSecurity> {
  List<String> currencyList = [
    "PIN",
    "Finger Print",
    "Face ID",
  ];
  String selectedCurrency = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Security', Colors.black),
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
