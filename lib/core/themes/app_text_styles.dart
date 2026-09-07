import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static final headingLg = GoogleFonts.notoSans(
    fontSize: 30,
    fontWeight: FontWeight.w700,
  );

  static final headingMd = GoogleFonts.notoSans(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static final headingSm = GoogleFonts.notoSans(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static final headingXs = GoogleFonts.notoSans(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static final bodyLg = GoogleFonts.notoSans(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static final bodyLgSemiBold = GoogleFonts.notoSans(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final bodyMd = GoogleFonts.notoSans(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static final bodySm = GoogleFonts.notoSans(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
}
