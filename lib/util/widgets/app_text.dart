import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

Widget sansBold(
    {required String text, required double textSize, FontWeight? bold}) {
  return Text(text,
      style: GoogleFonts.openSans(fontSize: textSize, fontWeight: bold));
}
