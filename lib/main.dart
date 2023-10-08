import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/core/style/my_theme.dart';
import 'package:market_place/features/auth/sing_in/register.dart';
import 'features/auth/log_in/log_in.dart';
import 'features/splash/splash1/splash_screen.dart';
import 'features/splash/splash2/second_screen.dart';

void main() {
  runApp(MarketPlace());
}

class MarketPlace extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(410, 736),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,theme: MyThemeData.lightTheme,
            initialRoute: Splashscreen.routName,
            routes: {
              Splashscreen.routName: (context) => Splashscreen(),
              SecondScreen.routName :(context) => SecondScreen(),
              LogIN.routName:(context) =>  LogIN(),
              Register.routName:(context) =>  Register(),
            },
          );
        });
  }


}
