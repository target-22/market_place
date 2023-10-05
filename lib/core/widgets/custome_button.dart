import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/core/style/app_color.dart';

class CustomeButton extends StatelessWidget {
   CustomeButton(this.color,this.text,this.onPressed);
  void Function()? onPressed;
  String text;
  Color color;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed,
    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)) ,
    child: Text(text),
    color: color,
    height: 50.h,minWidth: 339.w,
    );
  }
}
