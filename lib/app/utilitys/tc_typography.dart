import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension TCTypography on TextTheme {
  static TextTheme of(BuildContext context) => Theme.of(context).textTheme;

  TextStyle get text_18 =>
      GoogleFonts.lato(fontStyle: FontStyle.normal, fontSize: 18);
  TextStyle get text_16 =>
      GoogleFonts.lato(fontStyle: FontStyle.normal, fontSize: 16);
  TextStyle get text_14 =>
      GoogleFonts.lato(fontStyle: FontStyle.normal, fontSize: 14);
  TextStyle get text_12 =>
      GoogleFonts.lato(fontStyle: FontStyle.normal, fontSize: 12);
  TextStyle get text_10 =>
      GoogleFonts.lato(fontStyle: FontStyle.normal, fontSize: 10);

  TextStyle get text_18_bold => GoogleFonts.lato(
      fontStyle: FontStyle.normal, fontSize: 18, fontWeight: FontWeight.w900);
  TextStyle get text_16_bold => GoogleFonts.lato(
        fontStyle: FontStyle.normal,
        fontSize: 16,
        fontWeight: FontWeight.w900,
      );
  TextStyle get text_14_bold => GoogleFonts.lato(
      fontStyle: FontStyle.normal, fontSize: 14, fontWeight: FontWeight.w900);
  TextStyle get text_12_bold => GoogleFonts.lato(
      fontStyle: FontStyle.normal, fontSize: 12, fontWeight: FontWeight.w900);
  TextStyle get text_10_bold => GoogleFonts.lato(
      fontStyle: FontStyle.normal, fontSize: 10, fontWeight: FontWeight.w900);
}
