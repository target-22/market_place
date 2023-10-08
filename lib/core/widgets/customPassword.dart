import 'package:flutter/material.dart';

import '../style/app_color.dart';
import '../style/text_style.dart';

class CustomPasswordForm extends StatefulWidget {
 // const ({super.key});
  CustomPasswordForm({this.controller, this.hintText});
  TextEditingController? controller;
  String? hintText;

  @override
  State<CustomPasswordForm> createState() => _CustomPasswordFormState();
}

class _CustomPasswordFormState extends State<CustomPasswordForm> {
  bool obscureText=true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: (password) {
        if(password==null){
          return"Please Enter yourPasswor";
        }
        if(password.length<8){return "Password length shouldn't be less than 8 characters";}
        bool passwordValid = RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?\d)(?=.*?[!@#$&*~]).{8,}$')
            .hasMatch(password);
        if (!passwordValid){
          return "Please Enter Valid password";
        }
      },
      obscureText: obscureText,
      decoration: InputDecoration(hintText: widget.hintText,
          hintStyle: AppTexts.roboto18 ,
          //label: Text(labal,style: AppTexts.roboto23,),
          border:OutlineInputBorder(borderRadius: BorderRadius.circular(26),
          ),fillColor: Color(0xffF5F5F5),

          suffix:InkWell(
              onTap: () {

                  setState(() {
                    obscureText = !obscureText;
                  });
              },
              child: obscureText
                  ? Icon(
                Icons.visibility,
                color: AppColor.gray,
              )
                  :  Icon(
                Icons.visibility_off,
                color: AppColor.gray,
              ))),

    );
  }
}
