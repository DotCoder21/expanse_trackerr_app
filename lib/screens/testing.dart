import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:flutter/material.dart';


class Testing extends StatefulWidget {
 

  @override
  _TestingState createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Button(
            buttonColor: AppColor.violetColor,
            buttonText: 'Sign Up',
            onTap: (){},
            textColor: AppColor.lightVioletColor,
            widthPercent: 0.9,
          ),
        ],
      ),
      
    );
  }
}