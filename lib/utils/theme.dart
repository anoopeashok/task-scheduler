import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPrimaryColor = Color(0xff2F80ED);
const iconBg = Color(0xffBBDEFB);
const textFieldBg = Color(0xffE5EFFF);

var scheduleListBackground = Color(0xffdcdcdc).withAlpha(105);



ThemeData? themeData() {
  return ThemeData(
    backgroundColor: Colors.white,
    primaryColor: kPrimaryColor,
    textTheme: GoogleFonts.poppinsTextTheme(),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black,fontSize:18 )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(double.infinity,50))
      )
    )    
  );
}
