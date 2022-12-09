import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color.dart';

ThemeData theme() {
  return ThemeData(
    // primarySwatch: ,
    //  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber),

    // scaffoldBackgroundColor: PrimaryColor,
    // primaryColor: Colors.red,
    // brightness: Brightness.dark,
    fontFamily: "Notosan",
    appBarTheme: appBarTheme(),
    // canvasColor: Colors.grey[100],
    // inputDecorationTheme: Input,

    brightness: Brightness.light,
    textTheme: TextTheme(
      bodyText1: TextStyle(color: TextColor, fontFamily: 'Notosan'),
      bodyText2: TextStyle(color: TextColor),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: PrimaryColor,
      statusBarIconBrightness: Brightness.light,
      //@@scr set color text in system bar
      systemNavigationBarColor: PrimaryColor,
      systemNavigationBarDividerColor: WhiteColor,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarContrastEnforced: true,
    ), // 2
  );
}
