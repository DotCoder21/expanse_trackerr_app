import 'package:expensemanager/Utils/appColors.dart';
import 'package:flutter/material.dart';

class SettingCurrency extends StatefulWidget {
 
 

  @override
  _SettingCurrencyState createState() => _SettingCurrencyState();
}

class _SettingCurrencyState extends State<SettingCurrency> {

  List<String> currencyList =["United States (USD)","Indonesia (IDR)","Japan (JPY)","Russia (RUB)","Germany (EUR)","Korea (WON)",];
  String selectedCurrency=""; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: currencyList.length,
          itemBuilder: (context,i){
          return 
          RadioListTile(
            value: currencyList[i],
           groupValue: selectedCurrency,
            onChanged: (val){
              selectedCurrency = val;
              setState(() {
                            
                          });
            },

            activeColor: AppColor.violetColor,
            selected: true,
            title: Text(currencyList[i]),
            controlAffinity: ListTileControlAffinity.trailing,
            );
        }),
        
      ),
    );
  }
}