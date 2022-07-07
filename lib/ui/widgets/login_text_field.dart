import 'package:flutter/material.dart';
import '';
import '../../constants/constants.dart';
/// Widget for the text fields
class LoginTextField extends StatelessWidget {
  String text;
  Icon icon;
  LoginTextField(
      {required this.text ,  required this.icon});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 150,
        height: 40,
        child:TextField(

            decoration: InputDecoration(
          hintText: text,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:AppColors.lightGrey )),
              suffixIcon: icon,
        )  ),);
      }
}