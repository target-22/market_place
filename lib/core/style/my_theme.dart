import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market_place/core/style/text_style.dart';

class MyThemeData {
  //static const Color lightColor = Color(0xFFB7935F);
 // static const Color darkColor = Color(0xFF141A2E);
 // static const Color yellowColor = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Color(0xffFFFFFF),
    primaryColor:Colors.black ,

      textTheme: TextTheme(
        bodySmall: AppTexts.roboto20,
        bodyMedium: AppTexts.roboto23,
        bodyLarge: AppTexts.roboto25,

      ),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black, size: 35),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
         ));
//   static ThemeData darkTheme = ThemeData(
//       brightness: Brightness.dark,
//       scaffoldBackgroundColor: Colors.transparent,
//       primaryColor: darkColor,
//       colorScheme: ColorScheme(
//           brightness: Brightness.dark,
//           primary: darkColor,
//           onPrimary: Colors.white,
//           secondary: yellowColor,
//           onSecondary: Colors.white,
//           error: Colors.red,
//           onError: Colors.white,
//           background: Colors.transparent,
//           onBackground: darkColor,
//           surface: Colors.grey.shade300,
//           onSurface: Colors.white),
//       bottomNavigationBarTheme: BottomNavigationBarThemeData(
//         backgroundColor: darkColor,
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: yellowColor,
//         unselectedItemColor: Colors.white,
//       ),
//       textTheme: TextTheme(
//         bodySmall: GoogleFonts.elMessiri(
//             fontSize: 20, fontWeight: FontWeight.w600, color: yellowColor),
//         bodyMedium: GoogleFonts.elMessiri(
//             fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
//         bodyLarge: GoogleFonts.elMessiri(
//             fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
//       ),
//       appBarTheme: AppBarTheme(
//           iconTheme: IconThemeData(color: Colors.white, size: 35),
//           backgroundColor: Colors.transparent,
//           elevation: 0.0,
//           centerTitle: true));
}
