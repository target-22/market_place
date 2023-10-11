import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/core/style/my_theme.dart';
import 'package:market_place/features/home/home.dart';
import 'features/auth/forget_password/forget_password.dart';
import 'features/auth/log_in/log_in.dart';
import 'features/auth/register/register.dart';
import 'features/splash/splash1/splash_screen.dart';
import 'features/splash/splash2/second_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
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
              ForgetPassword.routName :(context) => ForgetPassword(),
              Home.routName:(context) =>  Home(),
            },
          );
        });
  }


}
