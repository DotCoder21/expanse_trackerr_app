import 'dart:async';

import 'package:expensemanager/screens/Budget/emptyState.dart';
import 'package:expensemanager/screens/homePage.dart';
import 'package:expensemanager/screens/Accounts/myAccount.dart';
import 'package:flutter/material.dart';
//import 'package:expensemanager/screens/pinScreen/Notification/notification.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Utils/appConst.dart';
import 'Widgets/transectionDetail.dart';
import 'screens/Add_To_Home/newExpense.dart';
import 'screens/DetailTransection/expenseTransectiolnDetail.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  //
  // cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyAccount(),
    );
  }
}
