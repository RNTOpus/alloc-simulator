import 'package:alo_simulator/styles/alo_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AloTextStyles {
  static TextStyle brand = GoogleFonts.istokWeb(
      color: Colors.black, fontWeight: FontWeight.w400, fontSize: 48);

  static TextStyle brandInHeader = GoogleFonts.istokWeb(
      color: Colors.black, fontWeight: FontWeight.w400, fontSize: 30);

  static TextStyle header = GoogleFonts.istokWeb(
      color: Colors.black, fontWeight: FontWeight.w400, fontSize: 24);

  static TextStyle small = GoogleFonts.notoSans(
      color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12);

  static TextStyle smallStrong = GoogleFonts.notoSans(
      color: Colors.black, fontWeight: FontWeight.w700, fontSize: 12);

  static TextStyle title = GoogleFonts.notoSans(
      color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16);

  static TextStyle text = GoogleFonts.notoSans(
      color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16);

  static TextStyle label = GoogleFonts.notoSans(
      color: AloColors.primary, fontWeight: FontWeight.w400, fontSize: 16);

  static TextStyle buttonText = GoogleFonts.notoSans(
      color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16);
}
