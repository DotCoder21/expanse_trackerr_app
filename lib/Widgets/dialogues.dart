
import 'package:expensemanager/Utils/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




  void onAlertPress(BuildContext context, Function handlerCamera,Function handlerGallery) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new CupertinoAlertDialog(
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.image,
                      size: 55,
                    ),
                    Text('Gallery'),
                  ],
                ),
                onPressed:()=>handlerGallery(),
              ),
              CupertinoDialogAction(
                isDefaultAction: true,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.camera_alt,
                      size: 55,
                    ),
                    Text('Take Photo'),
                  ],
                ),
                onPressed:()=> handlerCamera(),
              ),
            ],
          );
        });
  }

  gisplaySuccessfulDialogue(){
    Get.defaultDialog(
      title: "",
      content: Container(
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: AppColor.blueColor,
                shape: BoxShape.circle
              ),
              child: Icon(Icons.check,color: Colors.white,
              size: 40,
              ),
            ),
            Text('Transaction has been successfully added')
          ],
        ),
      )
    );
  }