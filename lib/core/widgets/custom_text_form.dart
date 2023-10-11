import 'package:flutter/material.dart';
import 'package:market_place/core/style/text_style.dart';

class CustomTextForm extends StatelessWidget {
   CustomTextForm( {this.controller,this.hintText,});
  TextEditingController? controller;
   String? hintText;
  // String labal;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: hintText,
          hintStyle: AppTexts.roboto18 ,
          //label: Text(labal,style: AppTexts.roboto23,),
          border:OutlineInputBorder(borderRadius: BorderRadius.circular(26),
          ),fillColor: Color(0xffF5F5F5)),
    );
  }
}
