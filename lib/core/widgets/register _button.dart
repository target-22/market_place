import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/core/style/app_color.dart';

import '../style/text_style.dart';

class RegisterButton extends StatelessWidget {
  RegisterButton({required this.color, required this.text, this.onPressed});
  void Function()? onPressed;
  String text;
  Color color;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(26),side: BorderSide(color: AppColor.red)) ,
      child: Text(text,style:AppTexts.roboto25.copyWith(color: AppColor.red) ),
      color: color,
      height: 50.h,minWidth: 339.w,
    );
  }
}
