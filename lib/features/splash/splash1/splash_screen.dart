import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/base.dart';
import 'package:market_place/core/style/app_color.dart';
import 'package:market_place/core/widgets/custome_button.dart';
import 'package:market_place/features/splash/splash1/splash_navigator1.dart';
import 'package:market_place/features/splash/splash1/splash_view_model.dart';
import 'package:market_place/features/splash/splash2/second_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
 static const String routName="Splash";
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends BaseView<Splashscreen,SplashScreenViewModel>implements SplashNavigator {
  @override
  void initState() {
    super.initState();
    viewModel.navigator= this;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 267.h,),
            Image.asset("assets/images/logo.png",height: 69.h,width: 344.w),
            SizedBox(height: 38.h,),
            CustomeButton(AppColor.red,"Start",onButtonClick)
          ],
        ),
      ),
    );
  }

  @override
  SplashScreenViewModel initViewModel() {
    return SplashScreenViewModel();
  }

  @override
  onButtonClick() {
   Navigator.pushReplacementNamed(context, SecondScreen.routName);
  }
}
