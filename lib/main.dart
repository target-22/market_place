import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            debugShowCheckedModeBanner: false,
            initialRoute: Splashscreen.routName,
            routes: {
              Splashscreen.routName: (context) => Splashscreen(),
              SecondScreen.routName :(context) => SecondScreen(),
            },
          );
        });
  }


}
