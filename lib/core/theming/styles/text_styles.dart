import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

abstract class TextStyles {
  static TextStyle sora32W600White = GoogleFonts.sora(
    color: Colors.white,
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle sora12W400Gray = GoogleFonts.sora(
    color: ColorsManager.kSecondaryColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle sora14W400Gray = GoogleFonts.sora(
    color: ColorsManager.kSecondaryColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle sora14W600D8Color = GoogleFonts.sora(
    color: ColorsManager.kD8Color,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle sora16W600White = GoogleFonts.sora(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
}
