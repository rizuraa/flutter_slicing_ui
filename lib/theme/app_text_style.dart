import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_pallete.dart';

class AppTextStyle {
  // text medium blue
  static TextStyle mediumTextBlue({
    double? fontSize = 14,
    Color? color = AppPallete.textBlue,
    FontWeight? fontWeight = FontWeight.w500,
  }) {
    return GoogleFonts.plusJakartaSans(
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? AppPallete.textBlue,
    );
  }

  static TextStyle lightTextBlue({
    double? fontSize = 12,
    Color? color = AppPallete.textBlue,
    FontWeight? fontWeight = FontWeight.w300,
  }) {
    return GoogleFonts.plusJakartaSans(
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w300,
      color: color ?? AppPallete.textBlue,
    );
  }

  // regular text black
  static TextStyle regularTextBlack({
    double? fontSize = 14,
    Color? color = AppPallete.colorPrimaryDark,
    FontWeight? fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.plusJakartaSans(
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? AppPallete.colorPrimaryDark,
    );
  }

  // light text black
  static TextStyle lightTextBlack({
    double? fontSize = 12,
    Color? color = AppPallete.colorPrimaryDark,
    FontWeight? fontWeight = FontWeight.w300,
  }) {
    return GoogleFonts.plusJakartaSans(
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w300,
      color: color ?? AppPallete.colorPrimaryDark,
    );
  }
}
