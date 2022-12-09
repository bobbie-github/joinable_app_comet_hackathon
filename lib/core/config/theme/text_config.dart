
import 'package:flutter/material.dart';

import 'color.dart';
class TextConfig {
  TextConfig._();

  static configText({
    double fintSize = 16,
    double?  fontsize,
    FontWeight fontWeight = FontWeight.w500,
    Color? color,
    String Roberto = 'Roberto',
    String Noto = 'Notosan',
  }) {
    return TextStyle(
      color: color==null ? TextColor:color,
      fontFamily: Noto ,
      // ignore: unnecessary_null_comparison
      fontSize:  fontsize==null? fintSize : fontsize,
      fontWeight: fontWeight
    );
  }
}
