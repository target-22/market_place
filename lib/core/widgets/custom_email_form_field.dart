import 'package:flutter/material.dart';
import 'package:market_place/core/style/text_style.dart';

class CustomEmailFormFaild extends StatelessWidget {
  CustomEmailFormFaild({this.controller,this.hintText,});
  TextEditingController? controller;
  String? hintText;
  // String labal;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator:(email) {
        if(email==null){return "Please enter your email adress";}
        bool emailValid = RegExp(
            r"^[a-zA-Z\d]([._](?![._])|[a-zA-Z\d]){1,18}[a-zA-Z\d]$")
            .hasMatch(email);
        if(!emailValid){
          return "Please enter valid email";
        }
      },
        keyboardType:TextInputType.emailAddress,
      decoration: InputDecoration(hintText: hintText,
          hintStyle: AppTexts.roboto18 ,
          //label: Text(labal,style: AppTexts.roboto23,),
          border:OutlineInputBorder(borderRadius: BorderRadius.circular(26),
          ),fillColor: Color(0xffF5F5F5)),
    );
  }
}
