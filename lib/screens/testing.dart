import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/textField.dart';
import 'package:expensemanager/screens/pinScreen/pinSetScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Testing extends StatefulWidget {
 

  @override
  _TestingState createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  bool isObseure=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          displayTextField(
            labelText: 'Name',
            keyboardType: TextInputType.name,
            savedHandler: (val){},
            validaterHandler: (val){
              return (val.isEmpty)?"*Required":null;
            },
            obsecureText: isObseure,
            suffixIcon: IconButton(icon:Icon(isObseure?Icons.remove_red_eye_outlined:Icons.panorama_fish_eye) ,
            
             onPressed: (){
               isObseure = !isObseure;
               setState(() { });
             })

          ),
           displayTextField(
            labelText: 'Name',
            keyboardType: TextInputType.name,
            savedHandler: (val){},
            validaterHandler: (val){
              return (val.isEmpty)?"*Required":null;
            },
            
            // suffixIcon: IconButton(icon:Icon(isObseure?Icons.remove_red_eye:Icons.panorama_fish_eye) ,
            
            //  onPressed: (){
            //    isObseure = !isObseure;
            //    setState(() { });
            //  })

          ),
          Button(
            buttonColor: AppColor.violetColor,
            buttonText: 'Sign Up',
            onTap: (){
              Get.to(()=>PassCodeSetScreen());
            },
            textColor: AppColor.lightVioletColor,
            widthPercent: 0.9,
          ),
        ],
      ),
      
    );
  }
}