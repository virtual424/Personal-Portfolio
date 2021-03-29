import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xff252733);
  static const Color secondaryColor = Color(0xff333645);
  static const Color accentColor = Colors.purple;
  static const Color primaryTextColor = Colors.grey;
  static const Color secondaryTextColor = Colors.white;

  static final Color ternaryTextColor = Colors.indigo[300];
  static final Color ternaryColor = Colors.indigo[500];

  // static final ThemeData lightTheme = ThemeData(
  //   scaffoldBackgroundColor: Colors.white,
  //   brightness: Brightness.light,
  //   textTheme: lighttextTheme,
  // );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppTheme.primaryColor,
    brightness: Brightness.light,
  );

  // static final TextTheme darkTextTheme = TextTheme(
  //   headline6: _titleDark,
  //   headline4: _projectTitleDark,
  //   subtitle2: _descriptionDark,
  //   button: _darkButton,
  // );
  
  // static  TextStyle profileNameText = TextStyle(
  //   fontSize: SizeConfig.defaultSize*60,
  //   fontWeight: FontWeight.bold,
  //   color: AppTheme.primaryTextColor,
  // );

  // static  TextStyle introDescriptionStyle = TextStyle(
  //   color: AppTheme.secondaryTextColor,
  //   fontSize: 18,
  //   letterSpacing: 3,
  // );

  // static  TextStyle introTextStyle = TextStyle(
  //   color: AppTheme.primaryTextColor,
  //   fontSize: 17,
  //   letterSpacing: 3,
  // );

  
}
