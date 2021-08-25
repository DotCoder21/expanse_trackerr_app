import 'package:expensemanager/Utils/appColors.dart';
import 'package:expensemanager/Utils/appConst.dart';
import 'package:expensemanager/Widgets/bottomSheet.dart';
import 'package:expensemanager/Widgets/buildAppBar.dart';
import 'package:expensemanager/Widgets/button.dart';
import 'package:expensemanager/Widgets/sizedBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dialogues.dart';


class TransectionDeatail extends StatefulWidget {
  String appBarText,balance,title,subTitle,type,category,wallet,description,imgPath;
  Color topColor;
  Function deleteHandler;
  Function editHandler;
  TransectionDeatail({
    this.appBarText,this.balance,this.category,this.title,this.subTitle,this.wallet,this.type,this.deleteHandler,this.description,this.imgPath,this.editHandler,this.topColor
  });

  @override
  _TransectionDeatailState createState() => _TransectionDeatailState();
}

class _TransectionDeatailState extends State<TransectionDeatail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: displayCustomAppBar(widget.appBarText,widget.deleteHandler,widget.topColor),
      backgroundColor: AppColor.backgroundColor,
      body: Container(
        height: Get.height-AppBar().preferredSize.height-20,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // color: Colors.black,
                height: Get.height*0.43,
                child: Stack(
                  children: [
                   
                     Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: Get.height*0.37,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: widget.topColor,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16)
                          )
                        ),
                        padding: EdgeInsets.only(bottom: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('\$'+widget.balance,style: kTextStyle.copyWith(color: Colors.white,fontSize: 48,fontWeight: FontWeight.w700),),
                            displaySizedBox(height: 10),
                            Text(widget.title,style: kTextStyle.copyWith(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                            displaySizedBox(height: 10),
                            Text(widget.subTitle,style: kTextStyle.copyWith(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
                            displaySizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                     Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: Get.height*0.11,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Expanded(child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Type',style: kTextStyle.copyWith(color: AppColor.lightTextColor,fontSize: 14,fontWeight: FontWeight.w500),),
                                    Text(widget.type,style: kTextStyle.copyWith(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                                   
                                  ],
                                ),
                              ),),
                              Expanded(child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Category',style: kTextStyle.copyWith(color: AppColor.lightTextColor,fontSize: 14,fontWeight: FontWeight.w500),),
                                    Text(widget.category,style: kTextStyle.copyWith(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                                   
                                  ],
                                ),
                              ),),
                              Expanded(child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Wallet',style: kTextStyle.copyWith(color: AppColor.lightTextColor,fontSize: 14,fontWeight: FontWeight.w500),),
                                    Text(widget.wallet,style: kTextStyle.copyWith(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                                   
                                  ],
                                ),
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    displaySizedBox(height: 10),
                    Row(
                      children: [
                        Text('Description',style: kTextStyle.copyWith(color:AppColor.lightTextColor,fontSize: 16,fontWeight: FontWeight.w600),),
                      ],
                    ),
                    displaySizedBox(height: 10),
                    Text(widget.description,style: kTextStyle.copyWith(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                    displaySizedBox(height: 10),
                    Row(
                      children: [
                        Text('Attachment',style: kTextStyle.copyWith(color:AppColor.lightTextColor,fontSize: 16,fontWeight: FontWeight.w600),),
                      ],
                    ),
                    Container(
                      height: 100,
                      width: Get.width,
                       decoration: BoxDecoration(
                         image: DecorationImage(image: 
                         AssetImage(widget.imgPath),

                         fit: BoxFit.contain,

                         )
                       ),
                    ),
                    displaySizedBox(height: 30),
                    Button(
buttonColor: AppColor.violetColor,
buttonText: 'Edit',
onTap: 
  
  widget.editHandler,

textColor: Colors.white,
widthPercent: 0.8,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }

 
}