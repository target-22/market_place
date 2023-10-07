import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Icon(Icons.arrow_back_ios,color: Colors.black,size: 20),
          Image.asset("assets/images/logo.png",height: 18.h,width: 90.w,)],
         );
  }
}
