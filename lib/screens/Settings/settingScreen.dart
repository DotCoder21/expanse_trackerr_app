import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {


  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {


  var settingList=[
    {
     'title':'Currency',
     'subTitle':"USD",
     'handler':(){}, 
    },
   {
     'title':'Language',
     'subTitle':"English",
     'handler':(){}, 
    },
   {
     'title':'Theme',
     'subTitle':"Dark",
     'handler':(){}, 
    },
   {
     'title':'Security',
     'subTitle':"Fingerprint",
     'handler':(){}, 
    },
   {
     'title':'Notification',
     'subTitle':"",
     'handler':(){}, 
    },
     {
     'title':'About',
     'subTitle':"",
     'handler':(){}, 
    },
 {
     'title':'Help',
     'subTitle':"",
     'handler':(){}, 
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}