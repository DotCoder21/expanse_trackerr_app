import 'package:expensemanager/Utils/appColors.dart';
import 'package:flutter/material.dart';

Widget displayTextField({
  String labelText,
  Function validaterHandler,
  Function savedHandler,
  bool obsecureText = false,
  TextInputType keyboardType,
  TextEditingController controller,
  bool disabled = false,
  Widget suffixIcon,
}) {
  return TextFormField(
    style: TextStyle(color: Colors.black),
    decoration: InputDecoration(
      fillColor: AppColor.backgroundColor.withOpacity(0.08),
      filled: true,
      hintText: labelText,
      errorStyle: TextStyle(color: Colors.red[50]),
      hintStyle: TextStyle(color: AppColor.lightTextColor),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColor.lightTextColor)),
      suffixIcon: suffixIcon,
    ),
    controller: controller,
    obscureText: obsecureText,
    validator: validaterHandler,
    onSaved: savedHandler,
    keyboardType: keyboardType,
  );
}
