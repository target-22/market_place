import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:market_place/core/style/app_color.dart';

class AppTexts {


  static final roboto23 = TextStyle(
      color: Colors.black,
      fontSize: 23,
      //fontWeight: FontWeight.bold,
      fontFamily: "Roboto");
  static final roboto20 = TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: "Roboto");
  static final roboto25 = TextStyle(
      color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.bold,
      fontFamily: "Roboto");
  static final roboto18 = TextStyle(
      color: Color(0xffACAFAFB2),
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontFamily: "Roboto");

  static TextStyle PopensLarg() => GoogleFonts.poppins(
      fontSize: 24.sp, color: Colors.black, fontWeight: FontWeight.bold);

  static TextStyle popensSmall() => GoogleFonts.poppins(
      fontSize: 14.sp, color: Colors.white, fontWeight: FontWeight.normal);

  static TextStyle NovaSquare12WhiteDark() => GoogleFonts.novaSquare(
      fontSize: 12.sp, color: Colors.white, fontWeight: FontWeight.normal);

  static TextStyle NovaSquare18WhiteDark() => GoogleFonts.novaSquare(
      fontSize: 18.sp, color: Colors.cyan, fontWeight: FontWeight.bold);

  static TextStyle NovaSquare22WhiteDark() => GoogleFonts.novaSquare(
      fontSize: 22.sp, color: Colors.cyan, fontWeight: FontWeight.bold);
}
