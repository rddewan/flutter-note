import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appThemeData(BuildContext context) {
    return ThemeData(      
      primarySwatch: Colors.green,
      textTheme: GoogleFonts.openSansTextTheme(
        Theme.of(context).textTheme).copyWith(
          bodyText1: GoogleFonts.openSans(textStyle: Theme.of(context).textTheme.bodyText1),
          bodyText2: GoogleFonts.openSans(textStyle: Theme.of(context).textTheme.bodyText2),
          subtitle1: GoogleFonts.openSans(textStyle: Theme.of(context).textTheme.subtitle1),
          subtitle2: GoogleFonts.openSans(textStyle: Theme.of(context).textTheme.subtitle2),
          headline1: GoogleFonts.openSans(textStyle: Theme.of(context).textTheme.headline1),
          headline2: GoogleFonts.openSans(textStyle: Theme.of(context).textTheme.headline2),

      )); 
  }