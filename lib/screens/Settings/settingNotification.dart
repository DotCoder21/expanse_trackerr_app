import 'package:flutter/material.dart';

class SettingNotificationPage extends StatefulWidget {


  @override
  _SettingNotificationPageState createState() => _SettingNotificationPageState();
}

class _SettingNotificationPageState extends State<SettingNotificationPage> {


  var settingList=[
    {
     'title':'Expense Alert',
     'subTitle':"Get notification about you’re expense",
     'isSelecter':true,
     'handler':(){}, 
    },
   {
     'title':'Budget',
     'subTitle':"Get notification when you’re budget exceeding the limit",
     'isSelecter':true,
     'handler':(){}, 
    },
   {
     'title':'Tips & Articles',
     'subTitle':"Small & useful pieces of pratical financial advice",
     'isSelecter':false,
     'handler':(){}, 
    },
  
    

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}